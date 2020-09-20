CREATE TABLE `user_details` (
  `user_id` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  `phone_ext` bigint DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `user_role` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
);
INSERT INTO `user_management`.`user_details` (`user_id`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `gender`, `country`, `phone`, `phone_ext`, `email`, `address`, `user_name`, `password`, `user_role`) VALUES ('1', 'ranganath', 'vatti', 'devanga', '1996/07/01', 'male', 'india', '7483247032', '6309609657', 'devangmranganth@gmail.com', 'gorantla', 'ranganath', '@Reset1998', 'admin');
