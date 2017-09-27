CREATE DATABASE `android`;
USE `android`;
CREATE TABLE `apn_user` (
  `id` bigint(20) NOT NULL auto_increment,
  `created_date` datetime default NULL,
  `email` varchar(64) default NULL,
  `name` varchar(64) default NULL,
  `password` varchar(64) default NULL,
  `updated_date` datetime default NULL,
  `username` varchar(64) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
