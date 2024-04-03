import Link from 'next/link';
import styles from '../app/style/navbar.module.css';
import {
  Dropdown,
  DropdownTrigger,
  DropdownMenu,
  DropdownSection,
  DropdownItem,
  Button
} from "@nextui-org/react";

const Navbar = () => {
  return (
    <div className={styles['home-header']}>
      <nav className={styles['home-navbar']}>
        <span className={styles.logo}>MNPORTAL</span>

        <ul className={styles.navList}>
          <li className={styles.navItem}>
            <Link href="/" className= {styles.navLink}>
              Home
            </Link>
          </li>
          <li className={styles.navItem}>
          <Dropdown>
            <DropdownTrigger>
              <Button variant="bordered">Open Menu</Button>
            </DropdownTrigger>

            <DropdownMenu aria-label="Link Actions">
              <DropdownItem key="home" href="/home">
                Home
              </DropdownItem>
              
              <DropdownItem key="about" href="/about">
                About
              </DropdownItem>
            </DropdownMenu>
          </Dropdown>
            <Link href="/documentation" className={styles.navLink}>
              Documentation
            </Link>
          </li>
          <li className={styles.navItem}>
            <Link href="/teams" className={styles.navLink}>
              Teams
            </Link>
          </li>
        </ul>
      </nav>
    </div>
  );
};

export default Navbar;