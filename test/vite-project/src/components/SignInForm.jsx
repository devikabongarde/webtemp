import React, { useState } from 'react';
import axios from 'axios'; // Importing axios for HTTP requests
import styles from './SignInForm.module.css';

const SignInForm = () => {
  // Local state for form inputs
  const [usernameOrEmail, setUsernameOrEmail] = useState('');
  const [password, setPassword] = useState('');
  const [errorMessage, setErrorMessage] = useState('');
  const [isLoading, setIsLoading] = useState(false);

  // Handle form submission
  const handleSubmit = async (event) => {
    event.preventDefault(); // Prevent the default form submission

    setIsLoading(true); // Set loading state
    setErrorMessage(''); // Clear previous error message

    try {
      // Send the POST request to the Flask API (sign-in route)
      const response = await axios.post('http://localhost:5000/signin', {
        usernameOrEmail,
        password,
      });

      // If login is successful, handle the response
      if (response.data.status === 'success') {
        alert('Login successful!');
       // window.location.href = 'https://google.com'; // Redirect on successful login (can be replaced with any page)
        // You could also use React Router for internal navigation if needed, like: navigate('/dashboard');
      }
    } catch (error) {
      // If an error occurs, display the error message
      if (error.response && error.response.data) {
        setErrorMessage(error.response.data.message || 'An unexpected error occurred. Please try again.');
      } else {
        setErrorMessage('An unexpected error occurred. Please try again.');
      }
    } finally {
      setIsLoading(false); // Reset loading state
    }
  };

  return (
    <form className={styles.signInForm} onSubmit={handleSubmit}>
      <h2 className={styles.formTitle}>Sign In</h2>

      {/* Username or Email */}
      <label htmlFor="usernameOrEmail" className="visually-hidden">Username or Email</label>
      <input
        id="usernameOrEmail"
        type="text"
        className={styles.formInput}
        placeholder="Username or Email"
        value={usernameOrEmail}
        onChange={(e) => setUsernameOrEmail(e.target.value)} // Update state
        required
      />

      {/* Password */}
      <label htmlFor="password" className="visually-hidden">Password</label>
      <input
        id="password"
        type="password"
        className={styles.formInput}
        placeholder="Password"
        value={password}
        onChange={(e) => setPassword(e.target.value)} // Update state
        required
      />

      {/* Error Message */}
      {errorMessage && <p className="error-message">{errorMessage}</p>}

      {/* Submit Button */}
      <button type="submit" className={styles.loginButton} disabled={isLoading}>
        {isLoading ? 'Logging in...' : 'Login'}
      </button>
    </form>
  );
};

export default SignInForm;
