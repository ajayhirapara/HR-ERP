USE `hrerp`;

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `department` */

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `emp_last` varchar(255) DEFAULT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  `joining_date` datetime DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_idFkey` (`department_id`),
  KEY `manager_idFkey` (`manager_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values (1);
insert into `department`(id,department_name) values(1,'Admin');
insert into `department`(id,department_name) values(2,'HR');
insert into `department`(id,department_name) values(3,'Support');
insert into `department`(id,department_name) values(4,'Engineering');
