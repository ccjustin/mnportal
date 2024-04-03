import Link from 'next/link';
import styles from '../app/style/footer.module.css';
import Image from 'next/image';

const Footer = () => {
  return (
    <footer className={styles.footer}>
        <ul className={styles.navList}>
          <li className={styles.navItem}>
            <Link href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" className= {styles.navLink}>
              <Image src="/chick.png" alt="chick" width={25} height={25} />
            </Link>
          </li>
          <li className={styles.navItem}>
            <Link href="https://www.instagram.com/mnprosthetics/" className={styles.navLink}>
                <Image src="/insta_icon.png" alt="insta" width={25} height={25} />
            </Link>
          </li>
          <li className={styles.navItem}>
            <Link href="https://www.umneuroprosthetics.org/" className={styles.navLink}>
                 <Image src="/web.png" alt="website" width={30} height={30} />
            </Link>
          </li>
        </ul>
    </footer>
  );
};

export default Footer;