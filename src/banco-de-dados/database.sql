-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 07-Jan-2018 às 22:39
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_paineladm`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `config_site_nome` varchar(255) DEFAULT NULL,
  `config_keywords` longtext,
  `config_autor` varchar(255) DEFAULT NULL,
  `config_ga` longtext,
  `config_site_descricao` longtext,
  `config_og_image` varchar(255) DEFAULT NULL,
  `config_share_buttons` longtext,
  `config_icon` varchar(255) DEFAULT NULL,
  `config_telefone1` varchar(30) DEFAULT NULL,
  `config_telefone2` varchar(30) DEFAULT NULL,
  `config_telefone3` varchar(30) DEFAULT NULL,
  `config_email` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `config`
--

INSERT INTO `config` (`config_id`, `config_site_nome`, `config_keywords`, `config_autor`, `config_ga`, `config_site_descricao`, `config_og_image`, `config_share_buttons`, `config_icon`, `config_telefone1`, `config_telefone2`, `config_telefone3`, `config_email`) VALUES
(1, 'Codeigniter + Painel ADM', 'Dev, PHP, back-end, desenvolvimento, web', 'Orlando Almeida', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n    <script async src=\"https://www.googletagmanager.com/gtag/js?id=\"></script>\r\n    <script>\r\n       \r\n    </script>', 'Um site com painel administrativo utilizando o framework codeigniter', 'img/public/180px-Yoshi_FS.png', '<script type=\"text/javascript\" src=\"\"></script>                                                                                                                                                                ', 'img/public/180px-Yoshi_FS.png', '(13) 33333-3333', '(13) 3333-3333', '', 'admin@admin.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `smtp`
--

DROP TABLE IF EXISTS `smtp`;
CREATE TABLE IF NOT EXISTS `smtp` (
  `smtp_id` int(11) NOT NULL AUTO_INCREMENT,
  `smtp_host` varchar(200) DEFAULT NULL,
  `smtp_email` varchar(200) DEFAULT NULL,
  `smtp_senha` varchar(200) DEFAULT NULL,
  `smtp_porta` varchar(10) DEFAULT NULL,
  `smtp_copia_oculta` varchar(200) DEFAULT NULL,
  `smtp_nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`smtp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `smtp`
--

INSERT INTO `smtp` (`smtp_id`, `smtp_host`, `smtp_email`, `smtp_senha`, `smtp_porta`, `smtp_copia_oculta`, `smtp_nome`) VALUES
(1, 'mail.seudominio.com', 'contato@seudominio.com', 'fdasfasdfasdfasd', '587', 'email@email.com', 'Nome do site');

-- --------------------------------------------------------

--
-- Estrutura da tabela `social`
--

DROP TABLE IF EXISTS `social`;
CREATE TABLE IF NOT EXISTS `social` (
  `social_id` int(11) NOT NULL AUTO_INCREMENT,
  `social_facebook_url` varchar(255) DEFAULT NULL,
  `social_linkedin_url` varchar(255) DEFAULT NULL,
  `social_instagram_url` varchar(255) DEFAULT NULL,
  `social_google_url` varchar(255) DEFAULT NULL,
  `social_github_url` varchar(255) DEFAULT NULL,
  `social_bitbucket_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`social_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `social`
--

INSERT INTO `social` (`social_id`, `social_facebook_url`, `social_linkedin_url`, `social_instagram_url`, `social_google_url`, `social_github_url`, `social_bitbucket_url`) VALUES
(1, 'https://www.facebook.com/orlando.almeida.16', 'https://www.linkedin.com/in/orlando-almeida/', 'https://www.instagram.com/orlandoeal/', 'https://plus.google.com/u/0/112920672951524234426', 'https://github.com/orlandoeal', 'https://bitbucket.org/orlandoalmeida/');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `usuario_id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_nome` varchar(255) DEFAULT NULL,
  `usuario_email` varchar(255) DEFAULT NULL,
  `usuario_senha` varchar(255) DEFAULT NULL,
  `usuario_nivel` int(11) DEFAULT '1',
  PRIMARY KEY (`usuario_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `usuario_nome`, `usuario_email`, `usuario_senha`, `usuario_nivel`) VALUES
(1, 'Admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
