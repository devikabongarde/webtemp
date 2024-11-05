import React from 'react';
import styles from './SignInForm.module.css';


const SignInForm = () => {
  return (
    <form className={styles.signInForm}>
      <h2 className={styles.formTitle}>Sign In</h2>
      <label htmlFor="usernameOrEmail" className="visually-hidden">Username or Email</label>
      <input
        id="usernameOrEmail"
        type="text"
        className={styles.formInput}
        placeholder="Username or Email"
      />
      <label htmlFor="password" className="visually-hidden">Password</label>
      <input
        id="password"
        type="password"
        className={styles.formInput}
        placeholder="Password"
      />
      <button type="submit" className={styles.loginButton}>Login</button>
    </form>
  );
};

export default SignInForm;