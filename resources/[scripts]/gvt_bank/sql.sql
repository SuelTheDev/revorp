 CREATE TABLE IF NOT EXISTS `gvt_bank` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `user_id` int(11) DEFAULT NULL,
        `amount` int(11) DEFAULT NULL,
        `title` varchar(255) DEFAULT NULL,
        `idtrans` int(11) DEFAULT NULL,
        PRIMARY KEY (`id`)
)