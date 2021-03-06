/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tweets` (
  `id` int(11) NOT NULL,
  `tweet_id` bigint(20) NOT NULL,
  `sender_name` varchar(50) DEFAULT NULL,
  `message` text,
  `sender_id` bigint(20) DEFAULT NULL,
  `retweeted_by_name` varchar(50) DEFAULT NULL,
  `retweeted_by_id` bigint(20) DEFAULT NULL,
  `geo_lat` float DEFAULT NULL,
  `geo_long` float DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `json_data` text,
  `source` varchar(255) DEFAULT NULL,
  `dm` tinyint(1) DEFAULT NULL,
  `recipient_name` varchar(50) DEFAULT NULL,
  `recipient_id` bigint(20) DEFAULT NULL,
  `sender_friends` int(11) DEFAULT NULL,
  `sender_followers` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_id` (`tweet_id`,`dm`)
);
/*!40101 SET character_set_client = @saved_cs_client */;
