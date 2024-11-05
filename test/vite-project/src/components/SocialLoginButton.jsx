import React from 'react';
import styles from './SocialLoginButton.module.css';

const socialLoginOptions = [
  { name: 'Google', icon: 'https://cdn.builder.io/api/v1/image/assets/TEMP/0947285e83260456340b81f8b14d36cdb459ee68503c1a0c371dfd148b1833ec?placeholderIfAbsent=true&apiKey=0c6c6226e529404eb3268e4b5e3d83de' },
  { name: 'Discord', icon: 'https://cdn.builder.io/api/v1/image/assets/TEMP/c462f858df63591bb67c896af1606f2cb051392b64c6b143efdb66e67b9a8f9c?placeholderIfAbsent=true&apiKey=0c6c6226e529404eb3268e4b5e3d83de' }
];

const SocialLoginButton = () => {
  return (
    <div className={styles.socialLoginContainer}>
      {socialLoginOptions.map((option) => (
        <button key={option.name} className={styles.socialLoginButton}>
          <img src={option.icon} alt="" className={styles.socialIcon} />
          <span className={styles.socialButtonText}>Continue with {option.name}</span>
        </button>
      ))}
    </div>
  );
};

export default SocialLoginButton;