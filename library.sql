-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1:3306
-- Vytvořeno: Úte 29. čen 2021, 13:05
-- Verze serveru: 5.7.26
-- Verze PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `library`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `author_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `authors`
--

INSERT INTO `authors` (`author_id`, `name`, `nationality`, `surname`) VALUES
(1, 'William', 'Anglická', 'Shakespeare'),
(2, 'Edgar Alan', 'Americká', 'Poe'),
(3, 'Homér', 'Řecká', ''),
(4, 'JRR', 'Anglická', 'Tolkien');

-- --------------------------------------------------------

--
-- Struktura tabulky `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `book_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_czech_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `books`
--

INSERT INTO `books` (`book_id`, `name`, `author_id`, `price`, `description`, `url`) VALUES
(1, 'Romeo a Julie', 1, 100, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vestibulum fermentum tortor id mi. Praesent vitae arcu tempor neque lacinia pretium. Fusce suscipit libero eget elit. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam sit amet magna in magna gravida vehicula. Quisque porta. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Aenean fermentum risus id tortor. Vivamus porttitor turpis ac leo. Nam sed tellus id magna elementum tincidunt. Nullam dapibus fermentum ipsum. Pellentesque ipsum. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Fusce consectetuer risus a nunc. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Etiam ligula pede, sagittis quis, interdum ultricies, scelerisque eu. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.', 'Romeo_a_Julie'),
(2, 'Hamlet', 1, 100, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vestibulum fermentum tortor id mi. Praesent vitae arcu tempor neque lacinia pretium. Fusce suscipit libero eget elit. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam sit amet magna in magna gravida vehicula. Quisque porta. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Aenean fermentum risus id tortor. Vivamus porttitor turpis ac leo. Nam sed tellus id magna elementum tincidunt. Nullam dapibus fermentum ipsum. Pellentesque ipsum. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Fusce consectetuer risus a nunc. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Etiam ligula pede, sagittis quis, interdum ultricies, scelerisque eu. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.', 'Hamlet'),
(3, 'MacBeth', 1, 200, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vestibulum fermentum tortor id mi. Praesent vitae arcu tempor neque lacinia pretium. Fusce suscipit libero eget elit. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam sit amet magna in magna gravida vehicula. Quisque porta. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Aenean fermentum risus id tortor. Vivamus porttitor turpis ac leo. Nam sed tellus id magna elementum tincidunt. Nullam dapibus fermentum ipsum. Pellentesque ipsum. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Fusce consectetuer risus a nunc. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Etiam ligula pede, sagittis quis, interdum ultricies, scelerisque eu. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.', 'MacBeth'),
(4, 'Zkrocení zlé ženy', 1, 150, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vestibulum fermentum tortor id mi. Praesent vitae arcu tempor neque lacinia pretium. Fusce suscipit libero eget elit. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam sit amet magna in magna gravida vehicula. Quisque porta. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Aenean fermentum risus id tortor. Vivamus porttitor turpis ac leo. Nam sed tellus id magna elementum tincidunt. Nullam dapibus fermentum ipsum. Pellentesque ipsum. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Fusce consectetuer risus a nunc. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Etiam ligula pede, sagittis quis, interdum ultricies, scelerisque eu. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.', 'Zkroceni_zle_zeny'),
(5, 'Havran', 2, 150, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vestibulum fermentum tortor id mi. Praesent vitae arcu tempor neque lacinia pretium. Fusce suscipit libero eget elit. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam sit amet magna in magna gravida vehicula. Quisque porta. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Aenean fermentum risus id tortor. Vivamus porttitor turpis ac leo. Nam sed tellus id magna elementum tincidunt. Nullam dapibus fermentum ipsum. Pellentesque ipsum. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Fusce consectetuer risus a nunc. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Etiam ligula pede, sagittis quis, interdum ultricies, scelerisque eu. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.', 'Havran'),
(6, 'Jáma a Kyvadlo', 2, 150, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vestibulum fermentum tortor id mi. Praesent vitae arcu tempor neque lacinia pretium. Fusce suscipit libero eget elit. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam sit amet magna in magna gravida vehicula. Quisque porta. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Aenean fermentum risus id tortor. Vivamus porttitor turpis ac leo. Nam sed tellus id magna elementum tincidunt. Nullam dapibus fermentum ipsum. Pellentesque ipsum. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Fusce consectetuer risus a nunc. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Etiam ligula pede, sagittis quis, interdum ultricies, scelerisque eu. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.', 'Jama_a_Kyvadlo'),
(7, 'Politan', 2, 300, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vestibulum fermentum tortor id mi. Praesent vitae arcu tempor neque lacinia pretium. Fusce suscipit libero eget elit. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam sit amet magna in magna gravida vehicula. Quisque porta. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Aenean fermentum risus id tortor. Vivamus porttitor turpis ac leo. Nam sed tellus id magna elementum tincidunt. Nullam dapibus fermentum ipsum. Pellentesque ipsum. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Fusce consectetuer risus a nunc. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Etiam ligula pede, sagittis quis, interdum ultricies, scelerisque eu. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.', 'Politan'),
(8, 'Odyssea', 3, 500, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vestibulum fermentum tortor id mi. Praesent vitae arcu tempor neque lacinia pretium. Fusce suscipit libero eget elit. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam sit amet magna in magna gravida vehicula. Quisque porta. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Aenean fermentum risus id tortor. Vivamus porttitor turpis ac leo. Nam sed tellus id magna elementum tincidunt. Nullam dapibus fermentum ipsum. Pellentesque ipsum. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Fusce consectetuer risus a nunc. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Etiam ligula pede, sagittis quis, interdum ultricies, scelerisque eu. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.', 'Odyssea'),
(9, 'Illias', 3, 100, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vestibulum fermentum tortor id mi. Praesent vitae arcu tempor neque lacinia pretium. Fusce suscipit libero eget elit. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam sit amet magna in magna gravida vehicula. Quisque porta. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Aenean fermentum risus id tortor. Vivamus porttitor turpis ac leo. Nam sed tellus id magna elementum tincidunt. Nullam dapibus fermentum ipsum. Pellentesque ipsum. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Fusce consectetuer risus a nunc. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Etiam ligula pede, sagittis quis, interdum ultricies, scelerisque eu. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.', 'Illias'),
(10, 'Žabomyší válka', 3, 100, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Vestibulum fermentum tortor id mi. Praesent vitae arcu tempor neque lacinia pretium. Fusce suscipit libero eget elit. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam sit amet magna in magna gravida vehicula. Quisque porta. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Aenean fermentum risus id tortor. Vivamus porttitor turpis ac leo. Nam sed tellus id magna elementum tincidunt. Nullam dapibus fermentum ipsum. Pellentesque ipsum. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Fusce consectetuer risus a nunc. Nulla turpis magna, cursus sit amet, suscipit a, interdum id, felis. Etiam ligula pede, sagittis quis, interdum ultricies, scelerisque eu. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.', 'Zabomysi_valka'),
(11, 'Othello', 1, 100, 'První přidaná kniha přes book management', 'Othello'),
(13, 'Hobbit', 4, 200, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam erat volutpat. Pellentesque ipsum. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Nulla non lectus sed nisl molestie malesuada. Aenean vel massa quis mauris vehicula lacinia. Morbi imperdiet, mauris ac auctor dictum, nisl ligula egestas nulla, et sollicitudin sem purus in lacus. Mauris suscipit, ligula sit amet pharetra semper, nibh ante cursus purus, vel sagittis velit mauris vel metus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean fermentum risus id tortor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce consectetuer risus a nunc. Mauris elementum mauris vitae tortor. Curabitur vitae diam non enim vestibulum interdum. Aliquam ornare wisi eu metus.\r\n\r\nPraesent id justo in neque elementum ultrices. Maecenas fermentum, sem in pharetra pellentesque, velit turpis volutpat ante, in pharetra metus odio a lectus. Mauris elementum mauris vitae tortor. Etiam dictum tincidunt diam. Proin pede metus, vulputate nec, fermentum fringilla, vehicula vitae, justo. Nullam justo enim, consectetuer nec, ullamcorper ac, vestibulum in, elit. Nullam at arcu a est sollicitudin euismod. Aenean id metus id velit ullamcorper pulvinar. Maecenas sollicitudin. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Curabitur sagittis hendrerit ante. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Mauris dolor felis, sagittis at, luctus sed, aliquam non, tellus. Pellentesque pretium lectus id turpis. Duis ante orci, molestie vitae vehicula venenatis, tincidunt ac pede. Morbi leo mi, nonummy eget tristique non, rhoncus non leo. Integer vulputate sem a nibh rutrum consequat. Phasellus rhoncus. Integer in sapien. Morbi leo mi, nonummy eget tristique non, rhoncus non leo.\r\n\r\nPraesent id justo in neque elementum ultrices. In enim a arcu imperdiet malesuada. Etiam sapien elit, consequat eget, tristique non, venenatis quis, ante. Fusce consectetuer risus a nunc. Integer lacinia. Aenean placerat. Suspendisse sagittis ultrices augue. Aliquam in lorem sit amet leo accumsan lacinia. Pellentesque arcu. Vestibulum erat nulla, ullamcorper nec, rutrum non, nonummy ac, erat. Nullam lectus justo, vulputate eget mollis sed, tempor sed magna. In enim a arcu imperdiet malesuada. Vestibulum erat nulla, ullamcorper nec, rutrum non, nonummy ac, erat. Nullam at arcu a est sollicitudin euismod.\r\n\r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Morbi imperdiet, mauris ac auctor dictum, nisl ligula egestas nulla, et sollicitudin sem purus in lacus. Nullam rhoncus aliquam metus. Aliquam ornare wisi eu metus. Nulla est. Sed ac dolor sit amet purus malesuada congue. Proin pede metus, vulputate nec, fermentum fringilla, vehicula vitae, justo. Duis sapien nunc, commodo et, interdum suscipit, sollicitudin et, dolor. Curabitur bibendum justo non orci. Maecenas lorem.\r\n\r\nDuis bibendum, lectus ut viverra rhoncus, dolor nunc faucibus libero, eget facilisis enim ipsum id lacus. Vivamus porttitor turpis ac leo. Curabitur ligula sapien, pulvinar a vestibulum quis, facilisis vel sapien. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. In laoreet, magna id viverra tincidunt, sem odio bibendum justo, vel imperdiet sapien wisi sed libero. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec vitae arcu. Aliquam ornare wisi eu metus. Maecenas fermentum, sem in pharetra pellentesque, velit turpis volutpat ante, in pharetra metus odio a lectus. Maecenas libero. Nullam dapibus fermentum ipsum. Quisque porta. Aliquam erat volutpat. Aliquam in lorem sit amet leo accumsan lacinia. Maecenas ipsum velit, consectetuer eu lobortis ut, dictum at dui. Etiam bibendum elit eget erat. Vivamus ac leo pretium faucibus. Integer in sapien. Nullam sit amet magna in magna gravida vehicula.', 'Hobbit');

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `login` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `displayName` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`login`, `displayName`, `password_hash`, `admin`) VALUES
('Admin', 'Administrátor', '$2y$10$21XqAIOy.1Y1zcowZHDSj.AlFlUsFE/AIdGZLNf94HcQQgSOoCunO', 1),
('Franta_bezny_uzivatel', 'Franta Běžný uživatel', '$2y$10$bAEEmlHzfNWpRzmB7.cRZ.JYmgfQdRXEM66sSekNogBAkfc0Mi2/6', 0);

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
