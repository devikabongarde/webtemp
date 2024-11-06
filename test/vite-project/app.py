from flask import Flask, request, jsonify
import mysql.connector
from flask_cors import CORS

app = Flask(__name__)
CORS(app)  # Enable Cross-Origin Resource Sharing

# MySQL Database connection setup
db_config = {
    'host': 'localhost',  # Change this if your MySQL server is elsewhere
    'user': 'root',       # Replace with your MySQL username
    'password': 'heli@123',  # Replace with your MySQL password
    'database': 'login_system',
}

# Function to create the MySQL connection
def get_db_connection():
    connection = mysql.connector.connect(**db_config)
    return connection

# Sign-in route
@app.route('/signin', methods=['POST'])
def signin():
    data = request.get_json()

    username_or_email = data.get('usernameOrEmail')
    password = data.get('password')

    # Validate the input fields
    if not username_or_email or not password:
        return jsonify({'status': 'error', 'message': 'Username/Email and Password are required'}), 400

    # Connect to the database
    connection = get_db_connection()
    cursor = connection.cursor(dictionary=True)

    # Check if the username exists in the users table
    cursor.execute("SELECT * FROM users WHERE username = %s", (username_or_email,))
    user = cursor.fetchone()

    # If no user is found
    if not user:
        return jsonify({'status': 'error', 'message': 'Invalid credentials'}), 401

    # Validate the password (In real-world apps, use hashed passwords instead of plain text)
    if user['password'] != password:
        return jsonify({'status': 'error', 'message': 'Invalid credentials'}), 401

    # If credentials are valid
    return jsonify({'status': 'success', 'message': 'Login successful'})

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)  # Running the Flask server
