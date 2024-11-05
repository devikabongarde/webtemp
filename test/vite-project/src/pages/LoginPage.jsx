import React from 'react';
import styles from './LoginPage.module.css';
import SignInForm from '../components/SignInForm';
import SocialLoginButton from '../components/SocialLoginButton';

const LoginPage = () => {
  return (
    <main className={styles.loginPage}>
      <div className={styles.pageContent}>
        <img src="https://cdn.builder.io/api/v1/image/assets/TEMP/acc94f7f9cc9d77e804b39ef802336698b9e114df2da4d3a7704944e6cad76ab?placeholderIfAbsent=true&apiKey=0c6c6226e529404eb3268e4b5e3d83de" alt="" className={styles.backgroundImage} />
        <h1 className={styles.brandName}>NEXITROVE</h1>
        <section className={styles.loginContainer}>
          <SignInForm />
          <p className={styles.newAccountPrompt}>
            New Here?{" "}
            <span className={styles.createAccountLink}>Create an NexiTrove Account</span>
          </p>
          <div className={styles.divider}>
            <hr className={styles.dividerLine} />
            <span className={styles.dividerText}>Or</span>
            <hr className={styles.dividerLine} />
          </div>
          <SocialLoginButton />
        </section>
      </div>
    </main>
  );
};

export default LoginPage;