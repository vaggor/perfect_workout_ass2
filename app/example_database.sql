/*
SQLyog Ultimate v9.02 
MySQL - 5.5.5-10.1.21-MariaDB : Database - example_database
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`example_database` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `example_database`;

/*Table structure for table `companies` */

DROP TABLE IF EXISTS `companies`;

CREATE TABLE `companies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `companies` */

insert  into `companies`(`id`,`name`,`created`,`modified`) values (1,'ABC',NULL,NULL),(2,'XYZ',NULL,NULL);

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `company_id` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `payroll_schedule` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `next_payment_date` datetime DEFAULT NULL,
  `is_admin` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `employees` */

insert  into `employees`(`id`,`company_id`,`name`,`payroll_schedule`,`start_date`,`end_date`,`next_payment_date`,`is_admin`,`created`,`modified`) values (1,1,'Eric Nill','bi-weekly','2023-10-16 00:00:00',NULL,'2023-10-26 00:00:00',0,NULL,NULL),(2,2,'John Doe','bi-weekly','2023-10-16 00:00:00',NULL,'2023-10-26 00:00:00',1,NULL,NULL),(3,1,'Philips Hessle','bi-monthly','2023-10-16 00:00:00',NULL,'2023-10-30 00:00:00',0,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
