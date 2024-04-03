import styles from '../app/style/card.module.css';
import Image from 'next/image';

const Card = () => {   
    return (
        <div className={styles.card}>
            <div className={styles.cardContent}>
                <div className={styles.cardTop}>
                    <span className={styles.cardTitle}>Card Title</span>
                    <p>Subteam</p>
                </div>
                <div className={styles.cardBottom}>
                    <p>Projects?</p>             
                    <Image
                        src="/burger-menu.svg" // Path to your SVG file in the public folder
                        alt="Burger Menu Icon"
                        width={24} // Adjust width and height as needed
                        height={24}
                    />
                </div>
            </div>
            <div className={styles.cardImage}>
                <Image src="/cat.png" alt="cat" width={100} height={100} />
            </div>
        </div>
    )
}

export default Card;