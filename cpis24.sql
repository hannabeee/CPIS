SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=admin, 2=stafff',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1=active, 2=inactive'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

 CREATE TABLE IF NOT EXISTS `borrow` (
`id` int(11) NOT NULL,
  `date_borrow` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `borrowcode` bigint(50) NOT NULL,
  `member_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_assigned` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `time_limit` datetime NOT NULL,
  `date_return` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

