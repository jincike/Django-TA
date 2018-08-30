/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.55-community : Database - mis
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mis` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mis`;

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `auth_group` */

insert  into `auth_group`(`id`,`name`) values (2,'人事'),(3,'库存'),(5,'经理'),(1,'职员'),(6,'财务'),(4,'采购');


/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=823 DEFAULT CHARSET=utf8;

/*Data for the table `auth_group_permissions` */

insert  into `auth_group_permissions`(`id`,`group_id`,`permission_id`) values (770,1,11),(776,1,37),(777,1,38),(778,1,39),(779,1,41),(780,1,43),(781,1,44),(782,1,45),(784,1,47),(786,1,50),(787,1,53),(788,1,55),(789,1,56),(790,1,57),(791,1,61),(792,1,62),(793,1,76),(794,1,77),(795,1,78),(796,1,80),(797,1,85),(798,1,86),(799,1,89),(800,1,91),(801,1,92),(802,1,93),(803,1,94),(804,1,95),(805,1,96),(806,1,97),(807,1,98),(808,1,99),(811,1,113),(812,1,114),(813,1,117),(814,1,119),(815,1,120),(816,1,121),(817,1,122),(818,1,123),(819,1,124),(820,1,125),(821,1,126),(822,1,127),(761,1,128),(762,1,129),(763,1,130),(764,1,131),(765,1,132),(766,1,133),(767,1,134),(768,1,135),(769,1,136),(771,1,154),(773,1,162),(774,1,163),(775,1,164),(783,1,174),(772,1,175),(785,1,176),(809,1,234),(810,1,235),(45,2,115),(355,3,58),(356,3,59),(357,3,60),(358,3,61),(359,3,62),(360,3,63),(361,3,79),(362,3,80),(363,3,81),(364,3,82),(365,3,83),(366,3,84),(335,3,156),(336,3,157),(337,3,158),(338,3,159),(339,3,160),(340,3,161),(341,3,162),(342,3,163),(343,3,164),(344,3,168),(345,3,169),(346,3,170),(347,3,171),(348,3,172),(349,3,173),(350,3,174),(351,3,175),(352,3,176),(353,3,178),(354,3,181),(525,4,40),(526,4,41),(527,4,177),(528,4,178),(529,4,179),(530,4,180),(531,4,181),(532,4,182),(533,4,186);

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add Site',7,'add_site'),(20,'Can change Site',7,'change_site'),(21,'Can delete Site',7,'delete_site'),(22,'Can add module',8,'add_module'),(23,'Can change module',8,'change_module'),(24,'Can delete module',8,'delete_module'),(25,'Can add menu',9,'add_menu'),(26,'Can change menu',9,'change_menu'),(27,'Can delete menu',9,'delete_menu'),(28,'Can add role',10,'add_role'),(29,'Can change role',10,'change_role'),(30,'Can delete role',10,'delete_role'),(31,'Can add value list',11,'add_valuelist'),(32,'Can change value list',11,'change_valuelist'),(33,'Can delete value list',11,'delete_valuelist'),(34,'Can add list item',12,'add_valuelistitem'),(35,'Can change list item',12,'change_valuelistitem'),(36,'Can delete list item',12,'delete_valuelistitem'),(37,'Can add address',13,'add_address'),(38,'Can change address',13,'change_address'),(39,'Can delete address',13,'delete_address'),(40,'Can add partner',14,'add_partner'),(41,'Can change partner',14,'change_partner'),(42,'Can delete partner',14,'delete_partner'),(43,'Can add bank account',15,'add_bankaccount'),(44,'Can change bank account',15,'change_bankaccount'),(45,'Can delete bank account',15,'delete_bankaccount'),(46,'Can add organization',16,'add_organization'),(47,'Can change organization',16,'change_organization'),(48,'Can delete organization',16,'delete_organization'),(49,'Can add org unit',17,'add_orgunit'),(50,'Can change org unit',17,'change_orgunit'),(51,'Can delete org unit',17,'delete_orgunit'),(52,'Can add position',18,'add_position'),(53,'Can change position',18,'change_position'),(54,'Can delete position',18,'delete_position'),(55,'Can add project',19,'add_project'),(56,'Can change project',19,'change_project'),(57,'Can delete project',19,'delete_project'),(58,'Can add warehouse',20,'add_warehouse'),(59,'Can change warehouse',20,'change_warehouse'),(60,'Can delete warehouse',20,'delete_warehouse'),(61,'Can add measure',21,'add_measure'),(62,'Can change measure',21,'change_measure'),(63,'Can delete measure',21,'delete_measure'),(64,'Can add trade',22,'add_trade'),(65,'Can change trade',22,'change_trade'),(66,'Can delete trade',22,'delete_trade'),(67,'Can add brand',23,'add_brand'),(68,'Can change brand',23,'change_brand'),(69,'Can delete brand',23,'delete_brand'),(70,'Can add category',24,'add_category'),(71,'Can change category',24,'change_category'),(72,'Can delete category',24,'delete_category'),(73,'Can add technical parameter',25,'add_technicalparametername'),(74,'Can change technical parameter',25,'change_technicalparametername'),(75,'Can delete technical parameter',25,'delete_technicalparametername'),(76,'Can add technical value',26,'add_technicalparametervalue'),(77,'Can change technical value',26,'change_technicalparametervalue'),(78,'Can delete technical value',26,'delete_technicalparametervalue'),(79,'Can add material',27,'add_material'),(80,'Can change material',27,'change_material'),(81,'Can delete material',27,'delete_material'),(82,'Can add material parameter',28,'add_materialparam'),(83,'Can change material parameter',28,'change_materialparam'),(84,'Can delete material parameter',28,'delete_materialparam'),(85,'Can add expenses account',29,'add_expenseaccount'),(86,'Can change expenses account',29,'change_expenseaccount'),(87,'Can delete expenses account',29,'delete_expenseaccount'),(88,'Can add employee',30,'add_employee'),(89,'Can change employee',30,'change_employee'),(90,'Can delete employee',30,'delete_employee'),(91,'Can add family member',31,'add_family'),(92,'Can change family member',31,'change_family'),(93,'Can delete family member',31,'delete_family'),(94,'Can add education experience',32,'add_education'),(95,'Can change education experience',32,'change_education'),(96,'Can delete education experience',32,'delete_education'),(97,'Can add work experience',33,'add_workexperience'),(98,'Can change work experience',33,'change_workexperience'),(99,'Can delete work experience',33,'delete_workexperience'),(100,'Can add workflow model',34,'add_modal'),(101,'Can change workflow model',34,'change_modal'),(102,'Can delete workflow model',34,'delete_modal'),(103,'Can add workflow node',35,'add_node'),(104,'Can change workflow node',35,'change_node'),(105,'Can delete workflow node',35,'delete_node'),(106,'Can add workflow instance',36,'add_instance'),(107,'Can change workflow instance',36,'change_instance'),(108,'Can delete workflow instance',36,'delete_instance'),(109,'Can add workflow history',37,'add_history'),(110,'Can change workflow history',37,'change_history'),(111,'Can delete workflow history',37,'delete_history'),(112,'Can add workflow todo',38,'add_todolist'),(113,'Can change workflow todo',38,'change_todolist'),(114,'Can delete workflow todo',38,'delete_todolist'),(115,'view all employee',30,'view_all_employee'),(116,'Can add extra param',39,'add_extraparam'),(117,'Can change extra param',39,'change_extraparam'),(118,'Can delete extra param',39,'delete_extraparam'),(119,'Can add work order',40,'add_workorder'),(120,'Can change work order',40,'change_workorder'),(121,'Can delete work order',40,'delete_workorder'),(122,'Can add wo extra value',41,'add_woextravalue'),(123,'Can change wo extra value',41,'change_woextravalue'),(124,'Can delete wo extra value',41,'delete_woextravalue'),(125,'Can add wo item',42,'add_woitem'),(126,'Can change wo item',42,'change_woitem'),(127,'Can delete wo item',42,'delete_woitem'),(128,'Can add loan',43,'add_loan'),(129,'Can change loan',43,'change_loan'),(130,'Can delete loan',43,'delete_loan'),(131,'Can add reimbursement',44,'add_reimbursement'),(132,'Can change reimbursement',44,'change_reimbursement'),(133,'Can delete reimbursement',44,'delete_reimbursement'),(134,'Can add fee item ',45,'add_reimbursementitem'),(135,'Can change fee item ',45,'change_reimbursementitem'),(136,'Can delete fee item ',45,'delete_reimbursementitem'),(137,'Can add salary item',46,'add_salaryitem'),(138,'Can change salary item',46,'change_salaryitem'),(139,'Can delete salary item',46,'delete_salaryitem'),(140,'Can add employee entry',47,'add_entry'),(141,'Can change employee entry',47,'change_entry'),(142,'Can delete employee entry',47,'delete_entry'),(143,'Can add salary item',48,'add_employeesalaryitem'),(144,'Can change salary item',48,'change_employeesalaryitem'),(145,'Can delete salary item',48,'delete_employeesalaryitem'),(146,'Can add employee transfer',49,'add_transfer'),(147,'Can change employee transfer',49,'change_transfer'),(148,'Can delete employee transfer',49,'delete_transfer'),(149,'Can add employee departure',50,'add_departure'),(150,'Can change employee departure',50,'change_departure'),(151,'Can delete employee departure',50,'delete_departure'),(152,'modify salary item',47,'modify_salary_item'),(153,'Can add Inventory',51,'add_inventory'),(154,'Can change Inventory',51,'change_inventory'),(155,'Can delete Inventory',51,'delete_inventory'),(156,'Can add Initial Inventory',52,'add_initialinventory'),(157,'Can change Initial Inventory',52,'change_initialinventory'),(158,'Can delete Initial Inventory',52,'delete_initialinventory'),(159,'Can add StockIn',53,'add_stockin'),(160,'Can change StockIn',53,'change_stockin'),(161,'Can delete StockIn',53,'delete_stockin'),(162,'Can add StockOut',54,'add_stockout'),(163,'Can change StockOut',54,'change_stockout'),(164,'Can delete StockOut',54,'delete_stockout'),(165,'Can add in out detail',55,'add_inoutdetail'),(166,'Can change in out detail',55,'change_inoutdetail'),(167,'Can delete in out detail',55,'delete_inoutdetail'),(168,'Can add init item',56,'add_inititem'),(169,'Can change init item',56,'change_inititem'),(170,'Can delete init item',56,'delete_inititem'),(171,'Can add in item',57,'add_initem'),(172,'Can change in item',57,'change_initem'),(173,'Can delete in item',57,'delete_initem'),(174,'Can add out item',58,'add_outitem'),(175,'Can change out item',58,'change_outitem'),(176,'Can delete out item',58,'delete_outitem'),(177,'Can add purchase order',59,'add_purchaseorder'),(178,'Can change purchase order',59,'change_purchaseorder'),(179,'Can delete purchase order',59,'delete_purchaseorder'),(180,'Can add po item',60,'add_poitem'),(181,'Can change po item',60,'change_poitem'),(182,'Can delete po item',60,'delete_poitem'),(183,'view all customer',15,'view_all_customer'),(184,'view all supplier',15,'view_all_supplier'),(185,'view all customer',14,'view_all_customer'),(186,'view all supplier',14,'view_all_supplier'),(187,'Can add Invoice',61,'add_invoice'),(188,'Can change Invoice',61,'change_invoice'),(189,'Can delete Invoice',61,'delete_invoice'),(190,'Can add Payment',62,'add_payment'),(191,'Can change Payment',62,'change_payment'),(192,'Can delete Payment',62,'delete_payment'),(193,'Can add activity',63,'add_activity'),(194,'Can change activity',63,'change_activity'),(195,'Can delete activity',63,'delete_activity'),(196,'Can add feedback',64,'add_feedback'),(197,'Can change feedback',64,'change_feedback'),(198,'Can delete feedback',64,'delete_feedback'),(199,'Can add enroll',65,'add_enroll'),(200,'Can change enroll',65,'change_enroll'),(201,'Can delete enroll',65,'delete_enroll'),(202,'Can add sale order',66,'add_saleorder'),(203,'Can change sale order',66,'change_saleorder'),(204,'Can delete sale order',66,'delete_saleorder'),(205,'Can add order detail',67,'add_saleitem'),(206,'Can change order detail',67,'change_saleitem'),(207,'Can delete order detail',67,'delete_saleitem'),(208,'Can add Payment Collection',68,'add_paymentcollection'),(209,'Can change Payment Collection',68,'change_paymentcollection'),(210,'Can delete Payment Collection',68,'delete_paymentcollection'),(211,'Can add offer sheet',69,'add_offersheet'),(212,'Can change offer sheet',69,'change_offersheet'),(213,'Can delete offer sheet',69,'delete_offersheet'),(214,'Can add offer detail',70,'add_offeritem'),(215,'Can change offer detail',70,'change_offeritem'),(216,'Can delete offer detail',70,'delete_offeritem'),(217,'Can add ware return',71,'add_warereturn'),(218,'Can change ware return',71,'change_warereturn'),(219,'Can delete ware return',71,'delete_warereturn'),(220,'Can add return item',72,'add_returnitem'),(221,'Can change return item',72,'change_returnitem'),(222,'Can delete return item',72,'delete_returnitem'),(223,'Can add ware adjust',73,'add_wareadjust'),(224,'Can change ware adjust',73,'change_wareadjust'),(225,'Can delete ware adjust',73,'delete_wareadjust'),(226,'Can add adjust item',74,'add_adjustitem'),(227,'Can change adjust item',74,'change_adjustitem'),(228,'Can delete adjust item',74,'delete_adjustitem'),(229,'Can add data import',75,'add_dataimport'),(230,'Can change data import',75,'change_dataimport'),(231,'Can delete data import',75,'delete_dataimport'),(232,'financial pay',43,'financial_pay'),(233,'financial pay',44,'financial_pay'),(234,'Can add document',76,'add_document'),(235,'Can change document',76,'change_document'),(236,'Can delete document',76,'delete_document');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values (11,'pbkdf2_sha256$20000$65muyWSOyY0I$AJfRNDE6kHRx5nC+mpIokzi8SbBxOgkHvhUSV9aEsPs=','2015-07-30 21:20:26',1,'chengcai','才','成','chengcai@abc.com',1,1,'2015-06-28 06:07:28'),(12,'pbkdf2_sha256$20000$Aa8BLynbsEpp$pI4WoKbMcC6aMUWt0CMCsG+n4pCd1hU3en6rLrHhh8s=','2015-06-28 06:21:54',0,'admin','管理员','系统','admin@abc.com',1,1,'2015-06-28 06:21:16'),(13,'pbkdf2_sha256$20000$PEAP6nZQMRCd$tZYq/lxTE8D4AfxuTvDp6SwhXzhjlti1Md21z0sM+CQ=','2015-07-30 21:24:15',0,'zhangsan','张三','','',1,1,'2015-07-02 05:16:00');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `auth_user_groups` */

insert  into `auth_user_groups`(`id`,`user_id`,`group_id`) values (15,12,1),(23,13,1),(21,14,1),(22,15,1),(20,16,1),(24,17,1);

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1148 DEFAULT CHARSET=utf8;

/*Data for the table `django_admin_log` */

insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values (986,'2015-06-28 06:19:13','18','用户信息',3,'',75,11),(987,'2015-06-28 06:19:51','19','用户信息导入',1,'',75,11),(988,'2015-06-28 06:21:08','19','用户信息导入',2,'已修改 attach 。',75,11),(989,'2015-06-28 07:27:18','1','规章制度-考勤手册',1,'',76,11),(990,'2015-06-28 07:40:49','1','职员',2,'已修改 permissions 。',3,11),(991,'2015-06-28 08:16:44','1','【模板文档】-【基础数据】-1001部门岗位员工导入模板',2,'已修改 title，keywords，description，tp 和 attach 。',76,11),(992,'2015-06-28 08:18:34','1','【模板文档】-【基础数据】-1001部门岗位员工导入模板',2,'已修改 description 。',76,11),(993,'2015-06-28 08:20:33','1','【模板文档】-【基础数据】-1001部门岗位员工导入模板',2,'已修改 description 。',76,11),(994,'2015-06-28 08:21:18','1','【模板文档】-【基础数据】-1001部门岗位员工导入模板',2,'已修改 description 。',76,11),(995,'2015-06-28 08:23:01','2','【模板文档】-【基础数据】-1002期初库存导入模板',1,'',76,11),(996,'2015-06-28 08:23:55','2','【模板文档】-【基础数据】-1002期初库存导入模板',2,'已修改 description 。',76,11),(997,'2015-06-28 08:26:09','2','【模板文档】-【基础数据】-1002期初库存导入模板',2,'已修改 description 。',76,11),(998,'2015-06-28 08:27:02','2','【模板文档】-【基础数据】-1002期初库存导入模板',2,'已修改 description 。',76,11),(999,'2015-06-28 08:30:17','3','【模板文档】-【基础数据】-1003合作伙伴导入模板',1,'',76,11),(1000,'2015-06-28 08:31:03','3','【模板文档】-【基础数据】-1003合作伙伴导入模板',2,'已修改 description 。',76,11),(1001,'2015-06-28 08:32:25','4','【模板文档】-【基础数据】-1004项目信息导入模板',1,'',76,11),(1002,'2015-06-28 08:32:33','3','【模板文档】-【基础数据】-1003合作伙伴导入模板',2,'已修改 tp 。',76,11),(1003,'2015-06-28 08:32:43','2','【模板文档】-【基础数据】-1002期初库存导入模板',2,'已修改 tp 。',76,11),(1004,'2015-06-28 08:35:37','5','【模板文档】-【基础数据】-1005用户信息导入模板',1,'',76,11),(1005,'2015-06-28 08:35:59','5','【模板文档】-【基础数据】-1005用户信息导入模板',2,'已修改 tp 。',76,11),(1006,'2015-06-28 08:39:50','6','【模板文档】-【明细数据】-2001报价单明细导入模板',1,'',76,11),(1007,'2015-06-28 08:44:03','6','【模板文档】-【明细数据】-2001报价单明细导入模板',2,'已修改 description 。',76,11),(1008,'2015-06-28 08:45:56','6','【模板文档】-【明细数据】-2001报价单明细导入模板',2,'已修改 description 。',76,11),(1009,'2015-06-28 08:47:41','7','【模板文档】-【明细数据】-2002需求单明细导入模板',1,'',76,11),(1010,'2015-06-28 08:48:09','7','【模板文档】-【明细数据】-2002需求单明细导入模板',2,'已修改 description 。',76,11),(1011,'2015-06-28 08:50:09','8','【模板文档】-【明细数据】-2003采购单明细导入模板',1,'',76,11),(1012,'2015-06-28 08:54:09','1','【模板文档】-【基础数据】-1001部门岗位员工导入模板',2,'已修改 description 。',76,11),(1013,'2015-06-28 08:58:43','19','用户信息导入',3,'',75,11),(1014,'2015-06-28 08:58:43','16','项目导入',3,'',75,11),(1015,'2015-06-28 08:58:43','15','合作伙伴',3,'',75,11),(1016,'2015-06-28 09:03:59','20','【上线准备】-【部门|岗位|员工】数据导入',1,'',75,11),(1017,'2015-06-28 09:06:51','20','【上线准备】-【部门|岗位|员工】数据导入',2,'已修改 description 。',75,11),(1018,'2015-06-28 09:07:25','20','【上线准备】-【部门|岗位|员工】数据导入',2,'已修改 description 。',75,11),(1019,'2015-06-28 09:07:45','20','【上线准备】-【部门|岗位|员工】数据导入',2,'已修改 description 。',75,11),(1020,'2015-06-28 09:08:36','20','【上线准备】-【部门|岗位|员工】数据导入',2,'已修改 description 。',75,11),(1021,'2015-06-28 09:09:24','21','【上线准备】-【用户信息】数据导入',1,'',75,11),(1022,'2015-06-28 09:10:16','21','【上线准备】-【用户信息】数据导入',2,'已修改 description 。',75,11),(1023,'2015-06-28 09:10:30','21','【上线准备】-【用户信息】数据导入',2,'已修改 description 。',75,11),(1024,'2015-06-28 09:11:53','21','【上线准备】-【用户信息】数据导入',2,'已修改 description 。',75,11),(1025,'2015-06-28 09:12:02','20','【上线准备】-【部门|岗位|员工】数据导入',2,'已修改 description 。',75,11),(1026,'2015-06-28 09:12:46','21','【上线准备】-【用户信息】数据导入',2,'已修改 is_clear 。',75,11),(1027,'2015-06-28 09:13:34','22','【上线准备】-【合作伙伴信息】数据导入',1,'',75,11),(1028,'2015-06-28 09:14:29','22','【上线准备】-【合作伙伴信息】数据导入',2,'已修改 description 。',75,11),(1029,'2015-06-28 09:14:45','22','【上线准备】-【合作伙伴信息】数据导入',2,'已修改 description 。',75,11),(1030,'2015-06-28 09:16:24','20','【上线准备】-【部门|岗位|员工】第一步',2,'已修改 title 。',75,11),(1031,'2015-06-28 09:16:37','21','【上线准备】-【用户信息】第二步',2,'已修改 title 。',75,11),(1032,'2015-06-28 09:16:49','22','【上线准备】-【合作伙伴信息】第三步',2,'已修改 title 。',75,11),(1033,'2015-06-28 09:18:59','23','【上线准备】-【项目信息】数据导入',1,'',75,11),(1034,'2015-06-28 09:19:11','23','【上线准备】-【项目信息】第四步',2,'已修改 title 。',75,11),(1035,'2015-06-28 09:19:28','23','【上线准备】-【项目信息】第四步（可选）',2,'已修改 title 。',75,11),(1036,'2015-06-28 09:20:20','22','【上线准备】-【合作伙伴信息】第三步',2,'已修改 description 。',75,11),(1037,'2015-06-28 09:20:48','23','【上线准备】-【项目信息】第四步（可选）',2,'已修改 description 。',75,11),(1038,'2015-06-29 21:02:51','57',' 加班申请',1,'',27,11),(1039,'2015-06-29 21:03:37','58',' 调休申请',1,'',27,11),(1040,'2015-06-29 21:03:55','58','IT00058 调休申请',2,'已修改 tp 。',27,11),(1041,'2015-06-29 21:06:13','59',' 休假申请',1,'',27,11),(1042,'2015-06-29 21:07:24','58','IT00058 调休申请',2,'已修改 spec 和 warehouse 。',27,11),(1043,'2015-06-29 21:09:02','57','IT00057 加班申请',2,'已修改 spec 。',27,11),(1044,'2015-06-29 21:13:47','60',' 入职办理',1,'',27,11),(1045,'2015-06-29 21:15:17','3','IT00003 用车申请',2,'已变更 name 和 data_type for 扩展参数 \"起始里程\". 已变更 name 和 data_type for 扩展参数 \"结束里程\". 已变更 name for 扩展参数 \"所用里程\". 已变更 name for 扩展参数 \"目的地\".',27,11),(1046,'2015-06-29 21:16:00','3','IT00003 用车申请',2,'已修改 spec 。',27,11),(1047,'2015-06-29 21:16:37','57','IT00057 加班申请',2,'已修改 is_virtual 。',27,11),(1048,'2015-06-29 21:16:46','58','IT00058 调休申请',2,'已修改 can_sale 和 is_virtual 。',27,11),(1049,'2015-06-29 21:16:56','59','IT00059 休假申请',2,'已修改 can_sale 和 is_virtual 。',27,11),(1050,'2015-06-29 21:17:15','60','IT00060 入职办理',2,'已修改 is_virtual 。',27,11),(1051,'2015-06-29 21:18:44','1','IT00001 出差申请',2,'已修改 spec 。',27,11),(1052,'2015-06-29 21:22:36','61',' 用印申请',1,'',27,11),(1053,'2015-06-29 21:23:43','3','IT00003 用车申请',2,'已修改 spec 。',27,11),(1054,'2015-06-29 21:27:04','60','IT00060 入职办理',2,'已添加 扩展参数 \"ERP系统/帐号\". 已添加 扩展参数 \"邮箱开通/邮箱地址\". 已变更 name for 扩展参数 \"员工手册/保密培训\".',27,11),(1055,'2015-06-29 21:33:14','62',' 收入证明开具',1,'',27,11),(1056,'2015-06-29 21:38:11','63',' 员工离职',1,'',27,11),(1057,'2015-06-29 21:39:13','6','IT00006 F2-H03 罗浮厅',2,'已修改 spec 。',27,11),(1058,'2015-06-29 21:40:04','6','IT00006 2号楼3楼大会议室',2,'已修改 name 。',27,11),(1059,'2015-06-29 21:42:10','62','IT00062 收入证明',2,'已修改 name 。',27,11),(1060,'2015-06-29 21:42:26','62','IT00062 收入证明',2,'已修改 spec 。',27,11),(1061,'2015-06-29 22:00:18','18',' ',3,'',14,11),(1062,'2015-06-29 22:01:03','17','中国船舶重工业集团',2,'已修改 name 和 short 。',14,11),(1063,'2015-06-29 22:02:04','61','IT00061 用印申请',2,'已修改 spec 。',27,11),(1064,'2015-06-30 20:07:48','63','IT00063 离职办理',2,'已修改 name 。',27,11),(1065,'2015-06-30 20:09:12','64',' 培训申请',1,'',27,11),(1066,'2015-06-30 20:22:27','18','京东商城',1,'',14,11),(1067,'2015-06-30 20:23:07','1',' 采购物品',1,'',59,11),(1068,'2015-06-30 20:23:36','1','CG00001 采购物品',2,'已变更 price 和 tax for 采购明细 \"POItem object\". 已变更 measure，price 和 tax for 采购明细 \"POItem object\".',59,11),(1069,'2015-07-01 05:58:07','None','1',1,'',63,11),(1070,'2015-07-01 06:17:53','2','2',1,'',63,11),(1071,'2015-07-01 06:18:24','2','2',2,'没有字段被修改。',63,11),(1072,'2015-07-01 06:29:17','2','2',2,'已修改 description 。',63,11),(1073,'2015-07-01 06:32:18','2','2',2,'已修改 description 。',63,11),(1074,'2015-07-01 06:34:14','2','2',2,'已修改 description 。',63,11),(1075,'2015-07-01 06:35:11','2','2',2,'已修改 description 。',63,11),(1076,'2015-07-01 06:35:55','2','2',2,'已修改 description 。',63,11),(1077,'2015-07-01 06:37:00','2','2',2,'已修改 description 。',63,11),(1078,'2015-07-01 06:37:21','3','123',1,'',63,11),(1079,'2015-07-01 06:46:22','2','项目审批流程',1,'',34,11),(1080,'2015-07-02 05:04:19','1','张三',2,'已修改 code，gender 和 rank 。',30,11),(1081,'2015-07-02 05:16:59','13','zhangsan',1,'',4,11),(1082,'2015-07-02 05:17:08','14','lisi',1,'',4,11),(1083,'2015-07-02 05:17:21','15','wangwu',1,'',4,11),(1084,'2015-07-02 05:17:32','16','dongyong',1,'',4,11),(1085,'2015-07-02 05:18:01','16','dongyong',2,'已修改 first_name 和 groups 。',4,11),(1086,'2015-07-02 05:18:14','14','lisi',2,'已修改 first_name 和 groups 。',4,11),(1087,'2015-07-02 05:18:32','15','wangwu',2,'已修改 first_name 和 groups 。',4,11),(1088,'2015-07-02 05:18:47','13','zhangsan',2,'已修改 first_name 和 groups 。',4,11),(1089,'2015-07-02 05:19:41','16','dongyong',2,'已修改 is_staff 。',4,11),(1090,'2015-07-02 05:19:48','14','lisi',2,'已修改 is_staff 。',4,11),(1091,'2015-07-02 05:19:54','15','wangwu',2,'已修改 is_staff 。',4,11),(1092,'2015-07-02 05:20:01','13','zhangsan',2,'已修改 is_staff 。',4,11),(1093,'2015-07-02 05:22:26','2','张三',1,'',30,11),(1094,'2015-07-02 05:23:53','2','张三',2,'已修改 birthday 和 user 。',30,11),(1095,'2015-07-02 05:24:41','1','李四',2,'已修改 name，pinyin，gender 和 user 。',30,11),(1096,'2015-07-02 05:25:23','2','张三',2,'已修改 workday 和 startday 。',30,11),(1097,'2015-07-02 05:27:10','3','王五',1,'',30,11),(1098,'2015-07-02 05:28:44','4','董永',1,'',30,11),(1099,'2015-07-02 05:44:31','5','N01-商务主管审批',2,'已修改 next_user_handler 。',35,11),(1100,'2015-07-02 06:07:37','4','1004 董永',2,'已修改 user 。',30,11),(1101,'2015-07-02 06:18:45','5','N01-商务主管审批',2,'已修改 status_field 和 status_value 。',35,11),(1102,'2015-07-02 06:19:06','6','N02-财务经理审批',2,'已修改 next_user_handler，status_field 和 status_value 。',35,11),(1103,'2015-07-02 06:19:27','7','N03-总经理审批',2,'已修改 handler_type 和 positions 。',35,11),(1104,'2015-07-02 20:50:47','5','N01-商务主管审批',2,'已修改 next 。',35,11),(1105,'2015-07-02 20:58:30','5','N01-商务主管审批',2,'已修改 next 。',35,11),(1106,'2015-07-02 21:43:08','5','N01-商务主管审批',2,'已修改 can_edit 。',35,11),(1107,'2015-07-02 21:50:00','5','N01-商务主管审批',2,'已修改 can_edit 。',35,11),(1108,'2015-07-02 21:51:23','5','N01-商务主管审批',2,'已修改 can_edit 。',35,11),(1109,'2015-07-03 05:46:47','6','N02-财务经理审批',2,'已修改 action 。',35,11),(1110,'2015-07-03 06:19:36','7','内部运营项目',2,'已修改 budget 。',19,11),(1111,'2015-07-03 06:24:43','5','N01-商务主管审批',2,'已修改 next_node_handler 。',35,11),(1112,'2015-07-03 21:28:30','9','【使用手册】-功能概述',1,'',76,11),(1113,'2015-07-03 21:28:58','10','【使用手册】-基本操作',1,'',76,11),(1114,'2015-07-03 21:29:29','11','【使用手册】-个人自助',1,'',76,11),(1115,'2015-07-03 21:29:58','12','【使用手册】-销售管理',1,'',76,11),(1116,'2015-07-03 21:30:39','13','【使用手册】-采购管理',1,'',76,11),(1117,'2015-07-03 21:31:19','14','【使用手册】-库存管理',1,'',76,11),(1118,'2015-07-03 21:31:41','15','【使用手册】-组织机构',1,'',76,11),(1119,'2015-07-03 21:32:03','16','【使用手册】-基础数据',1,'',76,11),(1120,'2015-07-03 21:32:26','17','【使用手册】-工作流管理',1,'',76,11),(1121,'2015-07-04 10:56:34','1','-申请采购办公用品一批',1,'',40,13),(1122,'2015-07-04 11:06:00','9','中海洋船舶工业集团张江工业园配电柜项目',1,'',19,13),(1123,'2015-07-04 11:58:58','2','-出差申请（重庆）',1,'',40,13),(1124,'2015-07-04 12:15:27','3','-用车申请（张江）',1,'',40,13),(1125,'2015-07-04 12:18:14','4','-用车申请（张江）',1,'',40,13),(1126,'2015-07-04 12:20:21','3','WO00003-用车申请（张江）',2,'已修改 classification 。',40,13),(1127,'2015-07-04 13:36:53','1',' 张三 2015年3月份行政部备用金 J:3000.00 Y:3000.00',1,'',43,13),(1128,'2015-07-04 13:38:14','1','15年3月份行政部费用报销',1,'',44,13),(1129,'2015-07-04 13:39:34','1','15年3月份行政部费用报销',2,'已添加 费用明细 \"ReimbursementItem object\". 已添加 费用明细 \"ReimbursementItem object\".',44,13),(1130,'2015-07-04 13:39:59','1','15年3月份行政部费用报销',2,'已修改 description 。',44,13),(1131,'2015-07-04 15:18:13','3','WO00003-用车申请（张江）',2,'已修改 classification 。',40,13),(1132,'2015-07-04 15:19:05','3','WO00003-2号楼3楼男厕所小便池堵塞',2,'已修改 title 和 description 。',40,13),(1133,'2015-07-04 18:15:02','1','WO00001-申请采购办公用品一批',2,'已修改 description 。',40,13),(1134,'2015-07-04 18:21:01','1','WO00001-申请采购办公用品一批',2,'已修改 service 。',40,13),(1135,'2015-07-07 21:09:47','1','123',1,'',69,11),(1136,'2015-07-07 21:10:14','1','123',2,'已变更 measure 和 sale_price for 报价明细 \"OfferItem object\". 已变更 measure for 报价明细 \"OfferItem object\". 已变更 measure for 报价明细 \"OfferItem object\".',69,11),(1137,'2015-07-15 12:04:06','20','【上线准备】-【部门|岗位|员工】第一步',2,'已修改 attach 。',75,11),(1138,'2015-07-15 12:10:58','20','【上线准备】-【部门|岗位|员工】第一步',2,'已修改 attach 。',75,11),(1139,'2015-07-15 12:36:18','1','11',1,'',54,11),(1140,'2015-07-15 12:36:39','1','11',2,'已变更 inventory for 出库明细 \"OutItem object\".',54,11),(1141,'2015-07-15 12:39:11','1','会议接待领用水果',2,'已修改 title 。 已变更 cnt for 出库明细 \"OutItem object\".',54,11),(1142,'2015-07-17 12:07:05','1','一批物资入库',1,'',53,11),(1143,'2015-07-17 12:07:23','1','一批办公物资入库',2,'已修改 title 。',53,11),(1144,'2015-07-17 12:09:39','2','调整一批物资库存',1,'',73,11),(1145,'2015-07-17 12:12:39','1','归还物资',1,'',71,11),(1146,'2015-07-17 12:14:55','1','归还物资',2,'已变更 cnt for 返库明细 \"ReturnItem object\".',71,11),(1147,'2015-07-17 12:16:36','1','上海某集团有限公司',2,'已修改 name 。',16,11);

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(13,'basedata','address'),(15,'basedata','bankaccount'),(23,'basedata','brand'),(24,'basedata','category'),(75,'basedata','dataimport'),(76,'basedata','document'),(32,'basedata','education'),(30,'basedata','employee'),(29,'basedata','expenseaccount'),(39,'basedata','extraparam'),(31,'basedata','family'),(27,'basedata','material'),(28,'basedata','materialparam'),(21,'basedata','measure'),(14,'basedata','partner'),(19,'basedata','project'),(25,'basedata','technicalparametername'),(26,'basedata','technicalparametervalue'),(22,'basedata','trade'),(11,'basedata','valuelist'),(12,'basedata','valuelistitem'),(20,'basedata','warehouse'),(33,'basedata','workexperience'),(5,'contenttypes','contenttype'),(50,'hr','departure'),(48,'hr','employeesalaryitem'),(47,'hr','entry'),(46,'hr','salaryitem'),(49,'hr','transfer'),(74,'invent','adjustitem'),(57,'invent','initem'),(52,'invent','initialinventory'),(56,'invent','inititem'),(55,'invent','inoutdetail'),(51,'invent','inventory'),(58,'invent','outitem'),(72,'invent','returnitem'),(53,'invent','stockin'),(54,'invent','stockout'),(73,'invent','wareadjust'),(71,'invent','warereturn'),(16,'organ','organization'),(17,'organ','orgunit'),(18,'organ','position'),(61,'purchase','invoice'),(62,'purchase','payment'),(60,'purchase','poitem'),(59,'purchase','purchaseorder'),(70,'sale','offeritem'),(69,'sale','offersheet'),(68,'sale','paymentcollection'),(67,'sale','saleitem'),(66,'sale','saleorder'),(63,'selfhelp','activity'),(65,'selfhelp','enroll'),(64,'selfhelp','feedback'),(43,'selfhelp','loan'),(44,'selfhelp','reimbursement'),(45,'selfhelp','reimbursementitem'),(41,'selfhelp','woextravalue'),(42,'selfhelp','woitem'),(40,'selfhelp','workorder'),(6,'sessions','session'),(9,'syscfg','menu'),(8,'syscfg','module'),(10,'syscfg','role'),(7,'syscfg','site'),(37,'workflow','history'),(36,'workflow','instance'),(34,'workflow','modal'),(35,'workflow','node'),(38,'workflow','todolist');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'contenttypes','0001_initial','2015-05-01 07:28:26'),(2,'auth','0001_initial','2015-05-01 07:28:26'),(3,'admin','0001_initial','2015-05-01 07:28:26'),(4,'contenttypes','0002_remove_content_type_name','2015-05-01 07:28:26'),(5,'auth','0002_alter_permission_name_max_length','2015-05-01 07:28:26'),(6,'auth','0003_alter_user_email_max_length','2015-05-01 07:28:26'),(7,'auth','0004_alter_user_username_opts','2015-05-01 07:28:26'),(8,'auth','0005_alter_user_last_login_null','2015-05-01 07:28:26'),(9,'auth','0006_require_contenttypes_0002','2015-05-01 07:28:26'),(10,'sessions','0001_initial','2015-05-01 07:28:26'),(11,'syscfg','0001_initial','2015-05-01 07:28:27'),(12,'basedata','0001_initial','2015-05-01 09:25:30'),(13,'basedata','0002_auto_20150501_0929','2015-05-01 09:30:01'),(14,'basedata','0003_auto_20150501_0931','2015-05-01 09:31:07'),(15,'basedata','0004_address','2015-05-01 10:52:00'),(16,'basedata','0005_auto_20150501_1121','2015-05-01 11:21:30'),(17,'basedata','0006_partner','2015-05-01 12:02:16'),(18,'basedata','0007_bankaccount','2015-05-01 15:35:20'),(19,'basedata','0008_auto_20150501_1547','2015-05-01 15:48:03'),(20,'organ','0001_initial','2015-05-01 19:14:41'),(21,'organ','0002_auto_20150501_2036','2015-05-01 20:36:43'),(22,'organ','0003_auto_20150501_2045','2015-05-01 20:46:03'),(23,'basedata','0009_auto_20150502_0817','2015-05-02 08:17:55'),(24,'basedata','0010_auto_20150502_0851','2015-05-02 08:51:53'),(25,'basedata','0011_auto_20150502_0934','2015-05-02 09:34:17'),(26,'basedata','0012_auto_20150502_0946','2015-05-02 09:46:24'),(27,'basedata','0013_auto_20150502_1311','2015-05-02 13:11:33'),(28,'basedata','0014_auto_20150502_1314','2015-05-02 13:14:16'),(29,'basedata','0015_brand_weight','2015-05-02 13:21:10'),(30,'basedata','0016_auto_20150502_1402','2015-05-02 14:04:33'),(31,'basedata','0017_auto_20150502_1731','2015-05-02 17:31:10'),(32,'basedata','0018_auto_20150502_2100','2015-05-02 21:00:06'),(33,'organ','0004_auto_20150503_1445','2015-05-03 14:46:12'),(34,'basedata','0019_auto_20150503_1445','2015-05-03 14:46:12'),(35,'basedata','0020_auto_20150503_1501','2015-05-03 15:01:41'),(36,'basedata','0021_auto_20150503_1518','2015-05-03 15:18:14'),(37,'basedata','0022_auto_20150503_1538','2015-05-03 15:38:24'),(38,'basedata','0023_auto_20150504_2120','2015-05-04 21:20:32'),(39,'basedata','0024_education_family_workexperience','2015-05-04 21:59:53'),(44,'organ','0005_auto_20150510_1141','2015-05-10 11:41:46'),(49,'workflow','0001_initial','2015-05-10 12:18:40'),(50,'workflow','0002_auto_20150513_2124','2015-05-13 21:24:50'),(51,'basedata','0025_auto_20150516_1829','2015-05-16 18:30:12'),(52,'basedata','0026_extraparam','2015-05-22 22:01:36'),(53,'selfhelp','0001_initial','2015-05-22 23:06:19'),(54,'selfhelp','0002_auto_20150522_2330','2015-05-22 23:30:14'),(55,'selfhelp','0003_auto_20150523_0621','2015-05-23 06:21:46'),(56,'basedata','0027_auto_20150523_2007','2015-05-23 20:07:34'),(57,'selfhelp','0004_auto_20150523_2007','2015-05-23 20:07:35'),(58,'selfhelp','0005_auto_20150523_2031','2015-05-23 20:31:54'),(59,'selfhelp','0006_auto_20150523_2050','2015-05-23 20:50:08'),(60,'selfhelp','0007_auto_20150523_2052','2015-05-23 20:52:17'),(61,'selfhelp','0008_auto_20150523_2133','2015-05-23 21:33:23'),(62,'selfhelp','0009_auto_20150523_2146','2015-05-23 21:46:15'),(65,'workflow','0003_auto_20150524_2208','2015-05-24 22:23:11'),(67,'hr','0001_initial','2015-05-25 22:12:43'),(68,'selfhelp','0010_auto_20150525_2255','2015-05-25 22:55:20'),(69,'selfhelp','0011_auto_20150603_1344','2015-06-03 13:44:59'),(70,'basedata','0028_auto_20150603_1444','2015-06-03 14:44:39'),(71,'invent','0001_initial','2015-06-03 15:56:04'),(72,'purchase','0001_initial','2015-06-03 20:27:01'),(73,'purchase','0002_auto_20150603_2117','2015-06-03 21:17:30'),(74,'purchase','0003_auto_20150603_2202','2015-06-03 22:02:53'),(75,'basedata','0029_auto_20150606_0944','2015-06-06 09:44:41'),(76,'basedata','0030_auto_20150606_0949','2015-06-06 09:49:22'),(77,'purchase','0004_auto_20150606_1050','2015-06-06 10:50:56'),(78,'invent','0002_auto_20150606_1050','2015-06-06 10:50:57'),(79,'invent','0003_auto_20150606_1147','2015-06-06 11:48:06'),(80,'purchase','0005_poitem_measure','2015-06-06 11:48:07'),(81,'invent','0004_initem_po_item','2015-06-06 11:54:49'),(82,'invent','0005_auto_20150606_1205','2015-06-06 12:06:09'),(83,'invent','0006_stockin_batch','2015-06-06 12:08:31'),(84,'invent','0007_auto_20150606_2008','2015-06-06 20:08:50'),(85,'invent','0008_inoutdetail_status','2015-06-06 20:30:43'),(86,'invent','0009_auto_20150607_1132','2015-06-07 11:33:09'),(87,'invent','0010_auto_20150607_1202','2015-06-07 12:03:02'),(88,'purchase','0006_auto_20150607_1202','2015-06-07 12:03:04'),(89,'purchase','0007_auto_20150607_1353','2015-06-07 13:53:55'),(90,'invent','0011_outitem_inventory','2015-06-08 21:07:50'),(91,'basedata','0031_auto_20150608_2143','2015-06-08 21:44:17'),(92,'invent','0012_auto_20150608_2143','2015-06-08 21:44:18'),(93,'invent','0013_auto_20150609_0623','2015-06-09 06:23:21'),(94,'purchase','0008_invoice','2015-06-10 20:51:34'),(95,'purchase','0009_auto_20150610_2133','2015-06-10 21:33:08'),(96,'selfhelp','0012_activity_enroll_feedback','2015-06-11 21:37:16'),(97,'selfhelp','0013_activity_code','2015-06-11 21:41:50'),(98,'invent','0014_auto_20150613_1747','2015-06-13 17:48:07'),(99,'sale','0001_initial','2015-06-14 12:07:39'),(100,'sale','0002_auto_20150614_1748','2015-06-14 17:48:34'),(101,'sale','0003_paymentcollection_org','2015-06-14 17:51:18'),(102,'purchase','0010_auto_20150614_1822','2015-06-14 18:22:22'),(103,'sale','0004_auto_20150614_2026','2015-06-14 20:26:59'),(104,'sale','0005_offeritem_discount_price','2015-06-14 20:31:16'),(105,'sale','0006_auto_20150617_2108','2015-06-17 21:08:38'),(106,'sale','0007_saleitem_discount_price','2015-06-20 21:16:32'),(107,'basedata','0032_material_tp','2015-06-20 21:35:33'),(108,'invent','0015_auto_20150621_0836','2015-06-21 08:36:19'),(109,'invent','0016_auto_20150621_1425','2015-06-21 14:25:45'),(110,'basedata','0033_auto_20150622_1009','2015-06-22 10:09:50'),(111,'selfhelp','0014_auto_20150627_0534','2015-06-27 05:34:44'),(112,'selfhelp','0015_loan_is_clear','2015-06-27 06:45:06'),(113,'purchase','0011_purchaseorder_attach','2015-06-27 19:58:41'),(114,'selfhelp','0016_auto_20150627_2039','2015-06-27 20:40:10'),(115,'basedata','0034_auto_20150627_2055','2015-06-27 20:56:46'),(116,'selfhelp','0017_woitem_measure','2015-06-27 20:56:47'),(117,'basedata','0035_document','2015-06-28 07:13:21'),(118,'workflow','0004_auto_20150630_2042','2015-06-30 20:43:08'),(119,'workflow','0005_auto_20150630_2138','2015-06-30 21:38:29'),(120,'workflow','0006_node_action','2015-06-30 22:10:27'),(121,'workflow','0007_node_can_edit','2015-07-02 21:12:10');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('2rdw4agh630yjfqhy14jie3dgzhi8v8i','OGEyMjM1MDM3YmU1ZmE4NjYxNmIzOWE5MTY3NjYzZjhhNDUyMWQxMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUzODFkNDg2MjM0YTlmMTQ0YjBkM2Y4ZWY4NWNmMDZlMmRkYjE1MWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-05-16 08:18:20'),('9yr00u8rvtplvssvra5nkw29ykbs9cxo','OGEyMjM1MDM3YmU1ZmE4NjYxNmIzOWE5MTY3NjYzZjhhNDUyMWQxMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUzODFkNDg2MjM0YTlmMTQ0YjBkM2Y4ZWY4NWNmMDZlMmRkYjE1MWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-06-24 20:54:54'),('bffad131mfdzd3ti0eat4ixwbaedqqfn','OGEyMjM1MDM3YmU1ZmE4NjYxNmIzOWE5MTY3NjYzZjhhNDUyMWQxMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjUzODFkNDg2MjM0YTlmMTQ0YjBkM2Y4ZWY4NWNmMDZlMmRkYjE1MWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-05-15 07:39:11');

DROP TABLE IF EXISTS `basedata_valuelistitem`;

CREATE TABLE `basedata_valuelistitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_code` varchar(6) DEFAULT NULL,
  `code` varchar(6) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_valuelistitem_group_id_13b9f5f2_idx` (`group_id`,`group_code`),
  CONSTRAINT `basedata_valuelistite_group_id_435c66f8_fk_basedata_valuelist_id` FOREIGN KEY (`group_id`) REFERENCES `basedata_valuelist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=416 DEFAULT CHARSET=utf8;

/*Data for the table `basedata_valuelistitem` */

insert  into `basedata_valuelistitem`(`id`,`group_code`,`code`,`name`,`status`,`weight`,`group_id`) values (13,'S011','01','送货地址',1,9,11),(14,'S011','02','发票地址',1,9,11),(15,'S011','03','临时地址',1,9,11),(16,'S011','04','家庭地址',0,9,11),(17,'S012','00','跟踪/新建',1,1,12),(18,'S012','01','投标/报价',1,2,12),(19,'S012','02','签订合同',1,3,12),(20,'S012','03','生产/交付',1,4,12),(21,'S012','04','验收/回款',1,5,12),(22,'S012','99','关闭',1,6,12),(23,'S013','00','产品/服务交付类',1,9,13),(24,'S013','10','技术/设备改造类',1,9,13),(25,'S013','20','内部运营类',1,9,13),(26,'S013','40','其他临时项目',1,9,13),(27,'S014','A','管理/行政类',1,9,14),(28,'S014','S','营销/市场类',1,9,14),(29,'S014','T','技术/研发类',1,9,14),(30,'S014','P','生产/操作类',1,9,14),(31,'S015','01','员级',1,9,15),(32,'S015','02','初级',1,9,15),(33,'S015','03','中级',1,9,15),(34,'S015','04','高级',1,9,15),(35,'S015','05','专家',1,9,15),(36,'S016','10','在岗工作',1,9,16),(37,'S016','11','见习期（试用）',1,9,16),(38,'S016','12','待岗',1,9,16),(39,'S016','20','离职',1,9,16),(40,'S016','21','退休',1,9,16),(41,'S016','22','终止劳动合同',1,9,16),(42,'S016','23','协商解除劳动合同',1,9,16),(43,'S016','24','劳动者主张解除劳动合同',1,9,16),(44,'S016','25','用人单位主张解除劳动合同',1,9,16),(45,'S016','30','死亡',1,9,16),(46,'S017','10','领导班子',1,9,17),(47,'S017','11','副总师（助理）',1,9,17),(48,'S017','12','部门负责人（正职）',1,9,17),(49,'S017','13','部门负责人（副职）',1,9,17),(50,'S017','14','部门内设机构负责人（正职）',1,9,17),(51,'S017','15','部门内设机构负责人（副职）',1,9,17),(52,'S017','20','一级职员',1,9,17),(53,'S017','21','二级职员',1,9,17),(54,'S017','22','三级职员',1,9,17),(55,'S017','23','四级职员',1,9,17),(56,'S017','24','五级职员',1,9,17),(57,'S017','25','六级职员',1,9,17),(58,'S017','26','七级职员',1,9,17),(59,'S017','27','八级职员',1,9,17),(60,'S018','10','经营者',1,9,18),(61,'S018','20','中层管理人员',1,9,18),(62,'S018','21','一般管理人员',1,9,18),(63,'S018','30','专业技术人员',1,9,18),(64,'S018','40','技能人员',1,9,18),(65,'S018','50','服务人员',1,9,18),(66,'S018','90','其他人员',1,9,18),(67,'S019','1','劳动合同制（长期）',1,9,19),(68,'S019','2','劳动合同制（短期）',1,9,19),(69,'S019','3','人事代理制',1,9,19),(70,'S019','4','劳务派遣制',1,9,19),(71,'S019','5','非全日制',1,9,19),(72,'S019','6','业务外包',1,9,19),(73,'S019','9','其他',1,9,19),(74,'S020','00','无宗教信仰',1,9,20),(75,'S020','10','佛教',1,9,20),(76,'S020','20','喇嘛教',1,9,20),(77,'S020','30','道教',1,9,20),(78,'S020','40','天主教',1,9,20),(79,'S020','50','基督教',1,9,20),(80,'S020','70','东正教',1,9,20),(81,'S020','80','伊斯兰教',1,9,20),(82,'S020','99','其他',1,9,20),(83,'S021','01','汉族',1,9,21),(84,'S021','02','蒙古族',1,9,21),(85,'S021','03','回族',1,9,21),(86,'S021','04','藏族',1,9,21),(87,'S021','05','维吾尔族',1,9,21),(88,'S021','06','苗族',1,9,21),(89,'S021','07','彝族',1,9,21),(90,'S021','08','壮族',1,9,21),(91,'S021','09','布依族',1,9,21),(92,'S021','10','朝鲜族',1,9,21),(93,'S021','11','满族',1,9,21),(94,'S022','CN','中国',1,9,22),(95,'S022','EG','埃及',1,9,22),(96,'S022','AT','奥地利',1,9,22),(97,'S022','AU','澳大利亚',1,9,22),(98,'S022','PK','巴基斯坦',1,9,22),(99,'S022','BR','巴西',1,9,22),(100,'S022','KP','北朝鲜',1,9,22),(101,'S022','BE','比利时',1,9,22),(102,'S022','IS','冰岛',1,9,22),(103,'S022','PL','波兰',1,9,22),(104,'S022','DK','丹麦',1,9,22),(105,'S022','DE','德国',1,9,22),(106,'S022','FR','法国',1,9,22),(107,'S022','KR','韩国',1,9,22),(108,'S022','NL','荷兰',1,9,22),(109,'S022','CA','加拿大',1,9,22),(110,'S022','US','美国',1,9,22),(111,'S022','JP','日本',1,9,22),(112,'S022','TW','中国台湾',1,9,22),(113,'S022','HK','中国香港',1,9,22),(114,'S022','ES','西班牙',1,9,22),(115,'S022','GR','希腊',1,9,22),(116,'S022','SG','新加坡',1,9,22),(117,'S022','NZ','新西兰',1,9,22),(118,'S022','IT','意大利',1,9,22),(119,'S022','GB','英国',1,9,22),(120,'S022','MO','中国澳门',1,9,22),(121,'S022','IL','以色列',1,9,22),(122,'S023','10','未婚',1,9,23),(123,'S023','20','初婚',1,9,23),(124,'S023','21','再婚',1,9,23),(125,'S023','22','复婚',1,9,23),(126,'S023','30','丧偶',1,9,23),(127,'S023','40','离婚',1,9,23),(128,'S023','90','其他',1,9,23),(129,'S024','0','研究生',1,9,24),(132,'S024','10','大学本科',1,9,24),(136,'S024','20','大学专科和专科学校',1,9,24),(144,'S024','40','技工学校',1,9,24),(146,'S024','50','高中',1,9,24),(147,'S024','60','初中',1,9,24),(148,'S024','70','小学',1,9,24),(149,'S024','80','文盲或半文盲',1,9,24),(150,'gender','0','未知的性别',1,9,10),(151,'gender','1','男性',1,9,10),(152,'gender','2','女性',1,9,10),(153,'gender','9','未说明的性别',1,9,10),(154,'S025','11','丈夫',1,9,25),(155,'S025','12','妻子',1,9,25),(156,'S025','21','独生子',1,9,25),(157,'S025','22','长子',1,9,25),(158,'S025','23','次子',1,9,25),(159,'S025','24','三子',1,9,25),(160,'S025','25','四子',1,9,25),(161,'S025','26','五子',1,9,25),(162,'S025','27','养子或继子',1,9,25),(163,'S025','28','女婿',1,9,25),(164,'S025','31','独生女',1,9,25),(165,'S025','32','长女',1,9,25),(166,'S025','33','次女',1,9,25),(167,'S025','34','三女',1,9,25),(168,'S025','35','四女',1,9,25),(169,'S025','36','五女',1,9,25),(170,'S025','37','养女或继女',1,9,25),(171,'S025','51','父亲',1,9,25),(172,'S025','52','母亲',1,9,25),(173,'S025','53','公公',1,9,25),(174,'S025','54','婆婆',1,9,25),(175,'S025','55','岳父',1,9,25),(176,'S025','56','岳母',1,9,25),(177,'S025','57','继父或养父',1,9,25),(178,'S025','58','继母或养母',1,9,25),(179,'S025','71','兄',1,9,25),(180,'S025','72','嫂',1,9,25),(181,'S025','73','弟',1,9,25),(182,'S025','74','弟媳',1,9,25),(183,'S025','75','姐姐',1,9,25),(184,'S025','76','姐夫',1,9,25),(185,'S025','77','妹妹',1,9,25),(186,'S025','78','妹夫',1,9,25),(187,'S026','01','中国共产党党员',1,9,26),(188,'S026','02','中国共产党预备党员',1,9,26),(189,'S026','03','中国共产主义青年团团员',1,9,26),(190,'S026','04','中国国民党革命委员会会员',1,9,26),(191,'S026','05','中国民主同盟盟员',1,9,26),(192,'S026','06','中国民主建国会会员',1,9,26),(193,'S026','07','中国民主促进会会员',1,9,26),(194,'S026','08','中国农工民主党党员',1,9,26),(195,'S026','09','中国致公党党员',1,9,26),(196,'S026','10','九三学社社员',1,9,26),(197,'S026','11','台湾民主自治同盟盟员',1,9,26),(198,'S026','12','无党派民主人士',1,9,26),(199,'S026','13','群众',1,9,26),(200,'S027','0','未服兵役',1,9,27),(201,'S027','1','退出现役',1,9,27),(202,'S027','2','士兵预备役',1,9,27),(203,'S027','3','军官预备役',1,9,27),(204,'S027','4','服现役',1,9,27),(205,'S027','9','其他',1,9,27),(206,'S028','0','不明',1,9,28),(207,'S028','1','A型',1,9,28),(208,'S028','2','B型',1,9,28),(209,'S028','3','O型',1,9,28),(210,'S028','4','AB型',1,9,28),(211,'S028','9','其他',1,9,28),(212,'S029','11','国家公务员',1,9,29),(213,'S029','13','专业技术人员',1,9,29),(214,'S029','17','职员',1,9,29),(215,'S029','21','企业管理人员',1,9,29),(216,'S029','24','工人',1,9,29),(217,'S029','27','农民',1,9,29),(218,'S029','31','学生',1,9,29),(219,'S029','37','现役军人',1,9,29),(220,'S029','51','自由职业者',1,9,29),(221,'S029','54','个人经营者',1,9,29),(222,'S029','70','无业人员',1,9,29),(223,'S029','80','退（离）休人员',1,9,29),(224,'S029','90','其他',1,9,29),(225,'S030','1','劳动合同',1,9,30),(226,'S030','2','岗位聘用合同',1,9,30),(227,'S030','3','聘任合同',1,9,30),(228,'S030','9','其他',1,9,30),(229,'S031','1','有固定期限',1,9,31),(230,'S031','2','无固定期限',1,9,31),(231,'S031','3','以任务为限',1,9,31),(232,'S031','9','其他',1,9,31),(233,'S032','1','严格保密',1,9,32),(234,'S032','2','需要保密',1,9,32),(235,'S032','3','无需保密',1,9,32),(236,'S033','01','初定',1,9,33),(237,'S033','02','续订',1,9,33),(238,'S033','03','变更',1,9,33),(239,'S033','04','终止',1,9,33),(240,'S033','05','解除',1,9,33),(241,'S034','1','定时',1,9,34),(242,'S034','2','不定时',1,9,34),(243,'S034','3','综合计算工时',1,9,34),(244,'S035','10','研究生教育',1,9,35),(245,'S035','20','大学本科教育',1,9,35),(246,'S035','30','大学专科教育',1,9,35),(247,'S035','40','中等职业教育',1,9,35),(248,'S035','60','普通高级中学教育',1,9,35),(249,'S035','70','初级中学教育',1,9,35),(250,'S035','80','小学教育',1,9,35),(251,'S035','90','其他',1,9,35),(252,'S035','99','非学历教育',1,9,35),(254,'S036','11','全日制小学',1,9,36),(255,'S036','12','全日制中学',1,9,36),(256,'S036','13','全日制中专',1,9,36),(257,'S036','14','全日制高等学校',1,9,36),(259,'S036','41','国家行政学院',1,9,36),(260,'S036','42','省行政学院',1,9,36),(261,'S036','49','其他行政学院（校）',1,9,36),(262,'S036','71','中央党校',1,9,36),(263,'S036','72','省委党校',1,9,36),(264,'S036','73','地、市委党校',1,9,36),(265,'S036','81','军队（武警）高等院校',1,9,36),(266,'S036','82','军队（武警）中等专科学校',1,9,36),(267,'S036','83','军队（武警）党校',1,9,36),(268,'S036','84','军队（武警）科研机构',1,9,36),(269,'S036','85','军队（武警）医院',1,9,36),(270,'S037','1','名誉博士 ',1,9,37),(271,'S037','2','博士',1,9,37),(272,'S037','3','硕士',1,9,37),(273,'S037','4','学士',1,9,37),(274,'S037','5','双学士',1,9,37),(275,'S038','01','哲学',1,9,38),(276,'S038','02','经济学',1,9,38),(277,'S038','03','法学',1,9,38),(278,'S038','04','教育学',1,9,38),(279,'S038','05','文学',1,9,38),(280,'S038','06','历史学',1,9,38),(281,'S038','07','理学',1,9,38),(282,'S038','08','工学',1,9,38),(283,'S038','09','农学',1,9,38),(284,'S038','10','医学',1,9,38),(285,'S038','11','军事学',1,9,38),(286,'S038','12','管理学',1,9,38),(287,'S038','14','建筑学',1,9,38),(288,'S037','9','其他',1,9,37),(289,'S038','99','其他',1,9,38),(290,'S039','15','复员干部',1,9,39),(291,'S039','10','军转干部',1,9,39),(292,'S039','20','转业士官',1,9,39),(293,'S039','30','复员士官',1,9,39),(294,'S039','40','退役士兵',1,9,39),(295,'S039','99','非复转军人',1,9,39),(296,'S040','1','党委（党组）书记',1,9,40),(297,'S040','2','党委（党组）副书记',1,9,40),(298,'S040','3','党委常委（党组成员）',1,9,40),(299,'S040','4','纪委书记（纪检组组长）',1,9,40),(300,'S040','6','工会主席',1,9,40),(301,'S040','8','其他党委（党组）负责人',1,9,40),(302,'S040','9','非党委负责人',1,9,40),(303,'S041','010101','董事长',1,9,41),(304,'S041','010102','副董事长',1,9,41),(305,'S041','010103','董事',1,9,41),(306,'S041','010104','职工董事',1,9,41),(307,'S041','0201','监事会主席',1,9,41),(308,'S041','0202','监事会副主席',1,9,41),(309,'S041','0203','监事',1,9,41),(310,'S041','0204','国资委派出监事',1,9,41),(311,'S041','0205','职工监事',1,9,41),(312,'S041','00','非董事监事',1,9,41),(313,'S042','00','非特殊工种',1,9,42),(314,'S042','11','汽机运行值班工',1,9,42),(315,'S042','12','锅炉运行值班工',1,9,42),(316,'S042','13','燃料运行值班工',1,9,42),(317,'S042','14','锅炉本体检修工',1,9,42),(318,'S042','15','保温工',1,9,42),(319,'S042','16','钢球磨煤机及制粉系统检修工',1,9,42),(320,'S042','17','水轮机检修工',1,9,42),(321,'S042','6','其他（由地方社会保障部门认可的特殊工种）',1,9,42),(322,'S042','21','锅炉本体安装工',1,9,42),(323,'S042','22','管道安装工',1,9,42),(324,'S042','23','筑炉瓦工',1,9,42),(325,'S042','24','装模工',1,9,42),(326,'S042','31','水轮机安装工',1,9,42),(327,'S042','32','采石工',1,9,42),(328,'S042','33','爆破',1,9,42),(329,'S042','34','石料粉碎工',1,9,42),(330,'S042','35','潜水员',1,9,42),(331,'S042','35','轮机工',1,9,42),(332,'S042','37','水手',1,9,42),(333,'S042','41','翻砂铸造工',1,9,42),(334,'S042','42','喷砂工',1,9,42),(335,'S042','43','镀锌工',1,9,42),(336,'S042','44','电镀工',1,9,42),(337,'S042','45','印刷线路制板工',1,9,42),(338,'S042','46','浸漆工',1,9,42),(339,'S042','47','电焊条制作工',1,9,42),(340,'S042','48','注塑工',1,9,42),(341,'S042','49','铆工',1,9,42),(342,'S042','51','混凝土工',1,9,42),(343,'S042','52','钢筋工',1,9,42),(344,'S042','53','架子工',1,9,42),(345,'S042','54','推土机司机',1,9,42),(346,'S042','55','挖土机司机',1,9,42),(347,'S042','56','重型载重汽车司机',1,9,42),(348,'S042','57','野外勘测工',1,9,42),(349,'S042','58','沥青工',1,9,42),(350,'S042','59','环氧树脂工',1,9,42),(351,'S043','1','健康或良好',1,9,43),(352,'S043','2','一般或较弱',1,9,43),(353,'S043','3','有慢性病（一）',1,9,43),(354,'S043','4','有慢性病（二）',1,9,43),(355,'S043','6','残疾',1,9,43),(356,'S043','7','军残',1,9,43),(357,'S044','S','内部服务',1,9,44),(358,'S044','R','设备维修',1,9,44),(359,'S044','Q','问题咨询',1,9,44),(360,'S045','HR','人事',1,1,45),(361,'S045','FI','财务',1,2,45),(362,'S045','AD','行政',1,4,45),(363,'S045','MA','市场',1,4,45),(364,'S045','BU','商务',1,5,45),(365,'S045','CS','客服',1,6,45),(366,'S045','OT','其他',1,7,45),(367,'S046','NEW','新建',1,9,46),(368,'S046','SCHE','调度',1,9,46),(369,'S046','PROC','处理',1,9,46),(370,'S046','CLOSE','关闭',1,9,46),(371,'S044','D','采购申请',1,9,44),(372,'S047','0','无试用期',1,1,47),(373,'S047','1','1个月',1,2,47),(374,'S047','2','2个月',1,2,47),(375,'S047','3','3个月',1,3,47),(376,'S047','4','4个月',1,4,47),(377,'S047','5','5个月',1,5,47),(378,'S047','6','6个月',1,6,47),(379,'S047','12','1年',1,12,47),(380,'S048','10','工资',1,9,48),(381,'S048','20','社保',1,9,48),(382,'S048','30','奖金',1,9,48),(383,'S048','40','福利',1,9,48),(384,'S048','99','其他',1,9,48),(385,'S049','+','增加',1,9,49),(386,'S049','-','扣款',1,9,49),(387,'S050','10','固定值',1,9,50),(388,'S050','20','比例值',1,9,50),(390,'S050','30','计算值',1,9,50),(391,'S051','10','个人辞职',1,9,51),(392,'S051','20','合同到期',1,9,51),(393,'S051','30','公司辞退',1,9,51),(394,'S051','40','人员死亡',1,9,51),(395,'S051','50','法定退休',1,9,51),(396,'S051','60','其他',1,9,51),(397,'S045','PO','采购',1,3,45),(398,'S052','0.00','0%',1,9,52),(399,'S052','0.03','3%',1,9,52),(400,'S052','0.05','5%',1,9,52),(401,'S052','0.07','7%',1,9,52),(402,'S052','0.10','10%',1,9,52),(403,'S052','0.17','17%',1,9,52),(404,'S053','10','普通发票',1,9,53),(405,'S053','20','增值税专用发票',1,9,53),(406,'S053','30','专业发票',1,9,53),(407,'S054','10','生产物料',1,9,54),(408,'S054','20','建筑物/培训室',1,9,54),(409,'S054','30','员工宿舍',1,9,54),(410,'S054','40','工卡/饭卡',1,9,54),(411,'S054','50','车辆',1,9,54),(412,'S054','60','图书',1,9,54),(413,'S054','70','工位',1,9,54),(414,'S054','80','工单服务',1,9,54),(415,'S054','11','办公用品',1,9,54);


DROP TABLE IF EXISTS `basedata_valuelist`;

CREATE TABLE `basedata_valuelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(6) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `init` tinyint(1) NOT NULL,
  `locked` tinyint(1) NOT NULL,
  `lock_time` datetime DEFAULT NULL,
  `locked_by_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basedata_valuelist_module_id_249f4ef9_fk_syscfg_module_id` (`module_id`),
  KEY `basedata_valuelist_locked_by_id_3ddaefa_fk_auth_user_id` (`locked_by_id`),
  CONSTRAINT `basedata_valuelist_locked_by_id_3ddaefa_fk_auth_user_id` FOREIGN KEY (`locked_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `basedata_valuelist_module_id_249f4ef9_fk_syscfg_module_id` FOREIGN KEY (`module_id`) REFERENCES `syscfg_module` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

/*Data for the table `basedata_valuelist` */

insert  into `basedata_valuelist`(`id`,`begin`,`end`,`creator`,`modifier`,`creation`,`modification`,`code`,`name`,`status`,`init`,`locked`,`lock_time`,`locked_by_id`,`module_id`) values (10,'2015-05-01','9999-12-31','zhugl','zhugl','2015-05-01 09:58:32','2015-05-03 08:16:48','gender','性别',1,0,0,NULL,NULL,2),(11,'2015-05-01','9999-12-31','zhugl','zhugl','2015-05-01 10:31:10','2015-05-03 07:08:51','S011','地址类型',1,0,0,NULL,NULL,2),(12,'2015-05-02','9999-12-31','zhugl','zhugl','2015-05-02 10:00:30','2015-05-03 07:08:44','S012','项目状态',1,0,0,NULL,NULL,2),(13,'2015-05-02','9999-12-31','zhugl','zhugl','2015-05-02 10:03:27','2015-05-03 07:08:28','S013','项目类别',1,0,0,NULL,NULL,2),(14,'2015-05-03','9999-12-31','zhugl',NULL,'2015-05-03 06:49:41','2015-05-03 06:49:41','S014','岗位序列',1,0,0,NULL,NULL,2),(15,'2015-05-03','9999-12-31','zhugl','zhugl','2015-05-03 06:56:08','2015-05-09 15:41:55','S015','岗位级别',1,0,0,NULL,NULL,2),(16,'2015-05-03','9999-12-31','zhugl',NULL,'2015-05-03 07:13:31','2015-05-03 07:13:31','S016','人员状态',1,0,0,NULL,NULL,2),(17,'2015-05-03','9999-12-31','zhugl','zhugl','2015-05-03 07:19:43','2015-05-03 07:19:50','S017','职员级别',1,0,0,NULL,NULL,2),(18,'2015-05-03','9999-12-31','zhugl',NULL,'2015-05-03 07:22:10','2015-05-03 07:22:10','S018','人员类别',1,0,0,NULL,NULL,2),(19,'2015-05-03','9999-12-31','zhugl','zhugl','2015-05-03 07:24:00','2015-05-03 15:12:54','S019','用工形式',1,0,0,NULL,NULL,2),(20,'2015-05-03','9999-12-31','zhugl',NULL,'2015-05-03 07:33:41','2015-05-03 07:33:41','S020','宗教信仰',1,0,0,NULL,NULL,2),(21,'2015-05-03','9999-12-31','zhugl','zhugl','2015-05-03 07:42:12','2015-05-03 08:32:32','S021','民族',1,0,0,NULL,NULL,2),(22,'2015-05-03','9999-12-31','zhugl',NULL,'2015-05-03 07:54:20','2015-05-03 07:54:20','S022','国家',1,0,0,NULL,NULL,2),(23,'2015-05-03','9999-12-31','zhugl','zhugl','2015-05-03 08:00:47','2015-05-03 08:33:02','S023','婚姻状况',1,0,0,NULL,NULL,2),(24,'2015-05-03','9999-12-31','zhugl','zhugl','2015-05-03 08:11:20','2015-05-03 08:32:51','S024','文化程度',1,0,0,NULL,NULL,2),(25,'2015-05-03','9999-12-31','zhugl','zhugl','2015-05-03 08:26:49','2015-05-03 08:32:42','S025','家庭关系',1,0,0,NULL,NULL,2),(26,'2015-05-03','9999-12-31','zhugl','zhugl','2015-05-03 08:39:02','2015-05-03 08:43:11','S026','政治面貌',1,0,0,NULL,NULL,2),(27,'2015-05-03','9999-12-31','zhugl',NULL,'2015-05-03 08:41:44','2015-05-03 08:41:44','S027','兵役状况',1,0,0,NULL,NULL,2),(28,'2015-05-03','9999-12-31','zhugl',NULL,'2015-05-03 08:44:29','2015-05-03 08:44:29','S028','血型',1,0,0,NULL,NULL,2),(29,'2015-05-03','9999-12-31','zhugl',NULL,'2015-05-03 08:51:03','2015-05-03 08:51:03','S029','人员身份',1,0,0,NULL,NULL,2),(30,'2015-05-03','9999-12-31','zhugl',NULL,'2015-05-03 08:52:49','2015-05-03 08:52:49','S030','合同类型',1,0,0,NULL,NULL,2),(31,'2015-05-03','9999-12-31','zhugl','zhugl','2015-05-03 08:54:11','2015-05-03 08:54:19','S031','合同期限类型',1,0,0,NULL,NULL,2),(32,'2015-05-03','9999-12-31','zhugl','zhugl','2015-05-03 08:55:13','2015-05-03 08:56:32','S032','合同密级',1,0,0,NULL,NULL,2),(33,'2015-05-03','9999-12-31','zhugl',NULL,'2015-05-03 08:56:17','2015-05-03 08:56:17','S033','合同变动类型',1,0,0,NULL,NULL,2),(34,'2015-05-03','9999-12-31','zhugl',NULL,'2015-05-03 08:58:32','2015-05-03 08:58:32','S034','工时制度',1,0,0,NULL,NULL,2),(35,'2015-05-03','9999-12-31','zhugl',NULL,'2015-05-03 09:56:24','2015-05-03 09:56:24','S035','教育类型',1,0,0,NULL,NULL,2),(36,'2015-05-03','9999-12-31','zhugl','zhugl','2015-05-03 10:02:20','2015-05-03 10:02:38','S036','从学单位类别',1,0,0,NULL,NULL,2),(37,'2015-05-03','9999-12-31','zhugl','zhugl','2015-05-03 10:13:32','2015-05-03 10:16:48','S037','学位',1,0,0,NULL,NULL,2),(38,'2015-05-03','9999-12-31','zhugl','zhugl','2015-05-03 10:16:17','2015-05-03 10:17:06','S038','专业类别',1,0,0,NULL,NULL,2),(39,'2015-05-03','9999-12-31','zhugl',NULL,'2015-05-03 13:41:51','2015-05-03 13:41:51','S039','复转军人标识',1,0,0,NULL,NULL,2),(40,'2015-05-03','9999-12-31','zhugl','zhugl','2015-05-03 14:04:26','2015-05-03 14:07:50','S040','党委负责人标识',1,0,0,NULL,NULL,2),(41,'2015-05-03','9999-12-31','zhugl','zhugl','2015-05-03 14:07:37','2015-05-03 14:08:16','S041','董事监事标识',1,0,0,NULL,NULL,2),(42,'2015-05-03','9999-12-31','zhugl','zhugl','2015-05-03 14:14:35','2015-05-03 14:18:08','S042','特殊工种',1,0,0,NULL,NULL,2),(43,'2015-05-03','9999-12-31','zhugl',NULL,'2015-05-03 14:21:31','2015-05-03 14:21:31','S043','身体状况',1,0,0,NULL,NULL,2),(44,'2015-05-22','9999-12-31','zhugl','zhugl','2015-05-22 22:38:58','2015-05-25 20:58:34','S044','工单类型',1,0,0,NULL,NULL,2),(45,'2015-05-22','9999-12-31','zhugl','zhugl','2015-05-22 22:41:19','2015-05-25 20:26:41','S045','业务域',1,0,0,NULL,NULL,4),(46,'2015-05-22','9999-12-31','zhugl','zhugl','2015-05-22 22:44:49','2015-05-24 20:07:18','S046','工单状态',1,0,0,NULL,NULL,4),(47,'2015-05-24','9999-12-31','zhugl','zhugl','2015-05-24 20:04:37','2015-05-24 20:06:09','S047','试用期',1,1,1,NULL,NULL,3),(48,'2015-05-24','9999-12-31','zhugl',NULL,'2015-05-24 20:11:06','2015-05-24 20:11:06','S048','工资项类别',1,0,0,NULL,NULL,3),(49,'2015-05-24','9999-12-31','zhugl','zhugl','2015-05-24 20:13:08','2015-05-24 20:13:15','S049','增减属性',1,0,0,NULL,NULL,3),(50,'2015-05-24','9999-12-31','zhugl','zhugl','2015-05-24 20:20:10','2015-05-24 20:37:22','S050','计算方式',1,0,0,NULL,NULL,3),(51,'2015-05-24','9999-12-31','zhugl','zhugl','2015-05-24 21:32:21','2015-05-24 21:32:31','S051','离职类别',1,0,0,NULL,NULL,3),(52,'2015-06-03','9999-12-31','zhugl',NULL,'2015-06-03 20:01:03','2015-06-03 20:01:03','S052','税率',1,0,0,NULL,NULL,5),(53,'2015-06-14','9999-12-31','zhugl','zhugl','2015-06-14 11:09:43','2015-06-14 12:43:38','S053','发票类别 ',1,0,0,NULL,NULL,6),(54,'2015-06-20','9999-12-31','zhugl','zhugl','2015-06-20 21:33:08','2015-06-21 11:30:19','S054','物料性质',1,0,0,NULL,NULL,2);

/*Table structure for table `basedata_document` */

DROP TABLE IF EXISTS `basedata_document`;

CREATE TABLE `basedata_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  
  `keywords` varchar(120) DEFAULT NULL,
  `description` longtext,
  `status` varchar(2) ,
  `pub_date` datetime DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `attach` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  
  
  `tradeday` VARCHAR(20),
  `srjc` VARCHAR(20),
  `quanyi` VARCHAR(20),
  `fene` VARCHAR(20),
  `drsx` VARCHAR(20),
  `drjc` VARCHAR(20),
  `daycost` VARCHAR(20) ,
  `pcyk` VARCHAR(20),
  `drzq` VARCHAR(20),
  `bzjz` VARCHAR(20),
  `fdyk` VARCHAR(20),
  `fxd` VARCHAR(20),
  `zjbz` VARCHAR(20),
  `jingzhi` VARCHAR(20),
  PRIMARY KEY (`id`),
  KEY `basedata_document_user_id_105428c7_fk_auth_user_id` (`user_id`),
  CONSTRAINT `basedata_document_user_id_105428c7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `basedata_document` */

/*insert  into `basedata_document`(`id`,`begin`,`end`,`creator`,`modifier`,`creation`,`modification`,`code`,`title`,`keywords`,`description`,`tp`,`business_domain`,`status`,`pub_date`,`size`,`attach`,`user_id`) values (1,'2015-06-28','9999-12-31','chengcai','chengcai','2015-06-28 07:27:18','2015-06-28 08:54:09','FD0001','【模板文档】-【基础数据】-1001部门岗位员工导入模板','导入模板 部门 岗位 员工','1）在系统上线的时候，用于大批量的导入部门、岗位、员工信息；\r\n2）操作路径为：【基础数据】>【导入】；\r\n3）在列表页面选择“增加 导入”按钮，打开表单页面；\r\n4）在表单页面，填写“处理类”字段的值为：OPS，选择本地文档上传；\r\n5）注意：先保存，后执行“导入”；\r\n6）提示：在组织机构重组时，可使用本模板进行大批量更改；','00','OT','1','2015-07-06 20:47:19',NULL,'doc/1001部门岗位员工导入模板.xls',11),(2,'2015-06-28','9999-12-31','chengcai','chengcai','2015-06-28 08:23:01','2015-06-28 08:32:43','FD0002','【模板文档】-【基础数据】-1002期初库存导入模板','导入模板 期初库存','1）在系统上线的时候，用于批量的导入期初库存信息；\r\n2）操作路径为：【库存管理】>【期初库存】；\r\n3）在列表页面，选择“增加 期初库存”按钮，进入表单页面；\r\n4）输入相关信息，从本地上传修改后的CSV文档；\r\n5）先保存，后执行“入库”操作；\r\n6）注意：本文档为csv格式，请使用excel编辑；\r\n','00','OT','1','2015-07-06 20:47:19',NULL,'doc/1002期初库存导入模板.csv',11),(3,'2015-06-28','9999-12-31','chengcai','chengcai','2015-06-28 08:30:17','2015-06-28 08:32:33','FD0003','【模板文档】-【基础数据】-1003合作伙伴导入模板','导入模板 合作伙伴','1）在系统上线的时候，用于大批量的导入合作伙伴（客户、供应商）信息；\r\n2）操作路径为：【基础数据】>【导入】；\r\n3）在列表页面选择“增加 导入”按钮，打开表单页面；\r\n4）在表单页面，选择本地文档上传；\r\n5）注意：先保存，后执行“导入”；','00','OT','1','2015-07-06 20:47:19',NULL,'doc/1003合作伙伴导入模板.xls',11),(4,'2015-06-28','9999-12-31','chengcai',NULL,'2015-06-28 08:32:25','2015-06-28 08:32:25','FD0004','【模板文档】-【基础数据】-1004项目信息导入模板','导入模板 项目信息','','00','OT','1','2015-07-06 20:47:19',NULL,'doc/1004项目导入模板.xls',11),(5,'2015-06-28','9999-12-31','chengcai','chengcai','2015-06-28 08:35:37','2015-06-28 08:35:59','FD0005','【模板文档】-【基础数据】-1005用户信息导入模板','导入模板 用户','1）在系统上线的时候，用于大批量的导入用户信息；\r\n2）操作路径为：【基础数据】>【导入】；\r\n3）在列表页面选择“增加 导入”按钮，打开表单页面；\r\n4）在表单页面，填写“处理类”字段的值为：admin.user，选择本地文档上传；\r\n5）注意：先保存，后执行“导入”；','00','OT','1','2015-07-06 20:47:19',NULL,'',11),(6,'2015-06-28','9999-12-31','chengcai','chengcai','2015-06-28 08:39:50','2015-06-28 08:45:56','FD0006','【模板文档】-【明细数据】-2001报价单明细导入模板','导入模板 报价单明细 ','1）在创建报价单的时候，若物料明细太多，可选择从excel批量导入；\r\n2）在保存报价单的时候，系统依据上传的文档自动加载物料；\r\n3）导入的物料遵循“没有即创建”原则，若系统中没有此物料则直接创建，检查的依据为【物料编号】，请慎重填写【物料编号】，避免造成重复导入；\r\n4）本模板有开关功能，当【B1】单元格为【0演示数据】时，不导入，为【1正式报价】时导入','00','BU','1','2015-07-06 20:47:19',NULL,'doc/2001报价单明细样例.xls',11),(7,'2015-06-28','9999-12-31','chengcai','chengcai','2015-06-28 08:47:41','2015-06-28 08:48:09','FD0007','【模板文档】-【明细数据】-2002需求单明细导入模板','导入模板 需求单明细 工单服务 ','1）在创建【工单服务】的时候，若需求物料明细太多，可选择从excel批量导入；\r\n2）在保存【工单服务】的时候，系统依据上传的文档自动加载物料；\r\n3）导入的物料遵循“没有即创建”原则，若系统中没有此物料则直接创建，检查的依据为【物料编号】，请慎重填写【物料编号】，避免造成重复导入；\r\n4）本模板有开关功能，当【B1】单元格为【0演示数据】时，不导入，为【1正式报价】时导入','00','OT','1','2015-07-06 20:47:19',NULL,'doc/2002需求计划明细样例.xls',11),(8,'2015-06-28','9999-12-31','chengcai',NULL,'2015-06-28 08:50:09','2015-06-28 08:50:09','FD0008','【模板文档】-【明细数据】-2003采购单明细导入模板','导入模板 采购单明细 ','1）在创建【采购单】的时候，若物料明细太多，可选择从excel批量导入；\r\n2）在保存【采购单】的时候，系统依据上传的文档自动加载物料；\r\n3）导入的物料遵循“没有即创建”原则，若系统中没有此物料则直接创建，检查的依据为【物料编号】，请慎重填写【物料编号】，避免造成重复导入；\r\n4）本模板有开关功能，当【B1】单元格为【0演示数据】时，不导入，为【1正式报价】时导入','00','PO','1','2015-07-06 20:47:19',NULL,'doc/2003采购单明细样例.xls',11),(9,'2015-07-03','9999-12-31','chengcai',NULL,'2015-07-03 21:28:30','2015-07-03 21:28:30','FD0009','【使用手册】-功能概述','maximus 功能概述','','00','OT','0',NULL,NULL,'',11),(10,'2015-07-03','9999-12-31','chengcai',NULL,'2015-07-03 21:28:58','2015-07-03 21:28:58','FD0010','【使用手册】-基本操作','maximus 基本操作','','00','OT','0',NULL,NULL,'',11),(11,'2015-07-03','9999-12-31','chengcai',NULL,'2015-07-03 21:29:29','2015-07-03 21:29:29','FD0011','【使用手册】-个人自助','maximus 个人自助','','00','OT','0',NULL,NULL,'',11),(12,'2015-07-03','9999-12-31','chengcai',NULL,'2015-07-03 21:29:58','2015-07-03 21:29:58','FD0012','【使用手册】-销售管理','maximus 销售管理','','00','OT','0',NULL,NULL,'',11),(13,'2015-07-03','9999-12-31','chengcai',NULL,'2015-07-03 21:30:39','2015-07-03 21:30:39','FD0013','【使用手册】-采购管理','maximus 采购管理','','00','OT','0',NULL,NULL,'',11),(14,'2015-07-03','9999-12-31','chengcai',NULL,'2015-07-03 21:31:19','2015-07-03 21:31:19','FD0014','【使用手册】-库存管理','maximus 库存管理','','00','OT','0',NULL,NULL,'',11),(15,'2015-07-03','9999-12-31','chengcai',NULL,'2015-07-03 21:31:41','2015-07-03 21:31:41','FD0015','【使用手册】-组织机构','maximus 组织机构','','00','OT','0',NULL,NULL,'',11),(16,'2015-07-03','9999-12-31','chengcai',NULL,'2015-07-03 21:32:03','2015-07-03 21:32:03','FD0016','【使用手册】-基础数据','maximus 基础数据','','00','OT','0',NULL,NULL,'',11),(17,'2015-07-03','9999-12-31','chengcai',NULL,'2015-07-03 21:32:26','2015-07-03 21:32:26','FD0017','【使用手册】-工作流管理','maximus 工作流','','00','OT','0',NULL,NULL,'',11);*/
INSERT INTO `basedata_document`(`id`,`drjc`,`quanyi`,`fene`,`daycost`,`jingzhi`) VALUES(1,10,2100000,2100000,2100000,1);

/*Table structure for table `basedata_expenseaccount` */

DROP TABLE IF EXISTS `basedata_expenseaccount`;

CREATE TABLE `basedata_expenseaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `category` varchar(4) NOT NULL,
  `description` longtext,
  
  `parent_id` int(11) DEFAULT NULL,
  `jijinid` int(11) not null,
  `qhzh` varchar(10) not null,
  
  `totalbank` int(11) not null,
  
  PRIMARY KEY (`id`)
 
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `basedata_expenseaccount` */



/*Table structure for table `basedata_project` */

DROP TABLE IF EXISTS `basedata_project`;

CREATE TABLE `basedata_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `creator` varchar(20) DEFAULT NULL,
  `modifier` varchar(20) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `modification` datetime DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `short` varchar(20) DEFAULT NULL,
  `pinyin` varchar(120) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `jijinid` int(10),
  `prj_type` varchar(2),
  `description` longtext,
  
  PRIMARY KEY (`id`)
 
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `basedata_project` */

/*insert  into `basedata_project`(`id`,`begin`,`end`,`creator`,`modifier`,`creation`,`modification`,`code`,`name`,`short`,`pinyin`,`status`,`prj_type`,`description`,`income`,`expand`,`blueprint`,`offer`,`business`,`partner_id`) values (7,NULL,NULL,NULL,'chengcai','2015-06-27 22:39:27','2015-07-30 21:24:06','PJ-C-1001','内部运营项目','','','02','00','','50000.00',NULL,NULL,'','','',NULL,NULL),(8,NULL,NULL,NULL,NULL,'2015-06-27 22:39:27','2015-07-03 05:50:38','PJ-C-1002','办公用品分摊项目','','','03','00',NULL,NULL,NULL,NULL,'','','',NULL,NULL),(9,'2015-07-04','9999-12-31','zhangsan',NULL,'2015-07-04 11:05:59','2015-07-12 01:26:21','PJ0009','中海洋船舶工业集团张江工业园配电柜项目','','','03','00','',NULL,NULL,'','','',NULL);*/
DROP TABLE IF EXISTS `basedata_project_users`;

CREATE TABLE `basedata_project_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_id` (`project_id`,`user_id`),
  KEY `basedata_project_users_user_id_2b10e1a1_fk_auth_user_id` (`user_id`),
  CONSTRAINT `basedata_project_users_project_id_1560ad8_fk_basedata_project_id` FOREIGN KEY (`project_id`) REFERENCES `basedata_project` (`id`),
  CONSTRAINT `basedata_project_users_user_id_2b10e1a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `workflow_history`;

CREATE TABLE `workflow_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_time` datetime NOT NULL,
  `pro_type` int(11) NOT NULL,
  `memo` varchar(40) DEFAULT NULL,
  `inst_id` int(11) NOT NULL,
  `node_id` int(11),
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_history_d2b1b1e1` (`inst_id`),
  KEY `workflow_history_c693ebc8` (`node_id`),
  KEY `workflow_history_e8701ad4` (`user_id`),
  CONSTRAINT `workflow_history_inst_id_2237d3b0_fk_workflow_instance_id` FOREIGN KEY (`inst_id`) REFERENCES `workflow_instance` (`id`),
  CONSTRAINT `workflow_history_node_id_54527354_fk_workflow_node_id` FOREIGN KEY (`node_id`) REFERENCES `workflow_node` (`id`),
  CONSTRAINT `workflow_history_user_id_4dee98c5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `workflow_history` */

insert  into `workflow_history`(`id`,`pro_time`,`pro_type`,`memo`,`inst_id`,`node_id`,`user_id`) values (1,'2015-07-02 06:19:52',0,NULL,1,NULL,14),(2,'2015-07-03 05:48:11',1,'同意',1,5,13),(3,'2015-07-03 05:50:38',1,'好',1,6,16),(4,'2015-07-03 05:51:08',1,'',1,7,16),(7,'2015-07-05 09:44:25',0,NULL,3,NULL,14),(14,'2015-07-09 21:25:38',1,'123',3,5,13),(15,'2015-07-12 01:26:21',1,'12',3,6,16),(16,'2015-07-12 01:26:40',1,'123',3,7,16),(20,'2015-07-30 21:24:06',0,NULL,8,NULL,14);

/*Table structure for table `workflow_instance` */

DROP TABLE IF EXISTS `workflow_instance`;

CREATE TABLE `workflow_instance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `start_time` datetime NOT NULL,
  `approved_time` datetime DEFAULT NULL,
  `status` int(11) NOT NULL,
  `modal_id` int(11) NOT NULL,
  `starter_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_instance_9b2b8663` (`modal_id`),
  KEY `workflow_instance_11d91f21` (`starter_id`),
  CONSTRAINT `workflow_instance_modal_id_3eb1d1ea_fk_workflow_modal_id` FOREIGN KEY (`modal_id`) REFERENCES `workflow_modal` (`id`),
  CONSTRAINT `workflow_instance_starter_id_3e0b14b6_fk_auth_user_id` FOREIGN KEY (`starter_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `workflow_instance` */

insert  into `workflow_instance`(`id`,`code`,`object_id`,`start_time`,`approved_time`,`status`,`modal_id`,`starter_id`) values (1,'S00001',8,'2015-07-02 06:19:52','2015-07-03 05:51:08',99,2,14),(3,'S00003',9,'2015-07-05 09:44:25','2015-07-12 01:26:40',99,2,14),(8,'S00008',7,'2015-07-30 21:24:06',NULL,1,2,14);

/*Table structure for table `workflow_instance_current_nodes` */

DROP TABLE IF EXISTS `workflow_instance_current_nodes`;

CREATE TABLE `workflow_instance_current_nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `instance_id` (`instance_id`,`node_id`),
  KEY `workflow_instance_current_n_node_id_54bc8d3a_fk_workflow_node_id` (`node_id`),
  CONSTRAINT `workflow_instance_current_n_node_id_54bc8d3a_fk_workflow_node_id` FOREIGN KEY (`node_id`) REFERENCES `workflow_node` (`id`),
  CONSTRAINT `workflow_instance_cu_instance_id_556870f_fk_workflow_instance_id` FOREIGN KEY (`instance_id`) REFERENCES `workflow_instance` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `workflow_instance_current_nodes` */

insert  into `workflow_instance_current_nodes`(`id`,`instance_id`,`node_id`) values (3,8,5);

/*Table structure for table `workflow_modal` */

DROP TABLE IF EXISTS `workflow_modal`;

CREATE TABLE `workflow_modal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(6) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `description` longtext,
  `app_name` varchar(60) DEFAULT NULL,
  `model_name` varchar(60) DEFAULT NULL,
  `begin` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_moda_content_type_id_7646d9af_fk_django_content_type_id` (`content_type_id`),
  CONSTRAINT `workflow_moda_content_type_id_7646d9af_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `workflow_modal` */

insert  into `workflow_modal`(`id`,`code`,`name`,`description`,`app_name`,`model_name`,`begin`,`end`,`content_type_id`) values (1,'WF001','新员工入职流程','','basedata','employee','2015-05-10','9999-12-31',30),(2,'WF002','项目审批流程','','basedata','project','2015-07-01','9999-12-31',19);

/*Table structure for table `workflow_node` */

DROP TABLE IF EXISTS `workflow_node`;

CREATE TABLE `workflow_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(4) DEFAULT NULL,
  `name` varchar(80) NOT NULL,
  `tooltip` varchar(120) DEFAULT NULL,
  `start` tinyint(1) NOT NULL,
  `stop` tinyint(1) NOT NULL,
  `can_terminate` tinyint(1) NOT NULL,
  `can_deny` tinyint(1) NOT NULL,
  `email_notice` tinyint(1) NOT NULL,
  `short_message_notice` tinyint(1) NOT NULL,
  `approve_node` tinyint(1) NOT NULL,
  `handler` longtext,
  `handler_type` int(11) NOT NULL,
  `modal_id` int(11) NOT NULL,
  `next_node_handler` varchar(40),
  `next_user_handler` varchar(40),
  `status_field` varchar(40),
  `status_value` varchar(40),
  `action` varchar(40),
  `can_edit` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_node_modal_id_3aa9d381_fk_workflow_modal_id` (`modal_id`),
  CONSTRAINT `workflow_node_modal_id_3aa9d381_fk_workflow_modal_id` FOREIGN KEY (`modal_id`) REFERENCES `workflow_modal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `workflow_node` */

insert  into `workflow_node`(`id`,`code`,`name`,`tooltip`,`start`,`stop`,`can_terminate`,`can_deny`,`email_notice`,`short_message_notice`,`approve_node`,`handler`,`handler_type`,`modal_id`,`next_node_handler`,`next_user_handler`,`status_field`,`status_value`,`action`,`can_edit`) values (3,'N01','薪酬专员审批','',0,0,0,1,1,0,0,'',1,1,NULL,NULL,NULL,NULL,NULL,0),(4,'N02','合同专员审批','',0,0,0,1,1,0,0,'',1,1,NULL,NULL,NULL,NULL,NULL,0),(5,'N01','商务主管审批',NULL,0,0,0,1,1,0,0,'',1,2,'project.budge.gt.10000','up.position.user','status','02','',1),(6,'N02','财务经理审批',NULL,0,0,0,1,1,0,0,'',1,2,'','up.position.user','status','03','action.test',0),(7,'N03','总经理审批',NULL,0,0,0,1,1,0,0,'',2,2,'','','','','',0);

/*Table structure for table `workflow_node_departments` */

DROP TABLE IF EXISTS `workflow_node_departments`;

CREATE TABLE `workflow_node_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `orgunit_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `node_id` (`node_id`,`orgunit_id`),
  KEY `workflow_node_department_orgunit_id_276f2bb6_fk_organ_orgunit_id` (`orgunit_id`),
  CONSTRAINT `workflow_node_departments_node_id_379e5725_fk_workflow_node_id` FOREIGN KEY (`node_id`) REFERENCES `workflow_node` (`id`),
  CONSTRAINT `workflow_node_department_orgunit_id_276f2bb6_fk_organ_orgunit_id` FOREIGN KEY (`orgunit_id`) REFERENCES `organ_orgunit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `workflow_node_departments` */

/*Table structure for table `workflow_node_next` */

DROP TABLE IF EXISTS `workflow_node_next`;

CREATE TABLE `workflow_node_next` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_node_id` int(11) NOT NULL,
  `to_node_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `from_node_id` (`from_node_id`,`to_node_id`),
  KEY `workflow_node_next_to_node_id_71e709f3_fk_workflow_node_id` (`to_node_id`),
  CONSTRAINT `workflow_node_next_from_node_id_78e6ce74_fk_workflow_node_id` FOREIGN KEY (`from_node_id`) REFERENCES `workflow_node` (`id`),
  CONSTRAINT `workflow_node_next_to_node_id_71e709f3_fk_workflow_node_id` FOREIGN KEY (`to_node_id`) REFERENCES `workflow_node` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `workflow_node_next` */

insert  into `workflow_node_next`(`id`,`from_node_id`,`to_node_id`) values (3,3,4);

/*Table structure for table `workflow_node_positions` */

DROP TABLE IF EXISTS `workflow_node_positions`;

CREATE TABLE `workflow_node_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `node_id` (`node_id`,`position_id`),
  KEY `workflow_node_position_position_id_187bce75_fk_organ_position_id` (`position_id`),
  CONSTRAINT `workflow_node_positions_node_id_64f898c6_fk_workflow_node_id` FOREIGN KEY (`node_id`) REFERENCES `workflow_node` (`id`),
  CONSTRAINT `workflow_node_position_position_id_187bce75_fk_organ_position_id` FOREIGN KEY (`position_id`) REFERENCES `organ_position` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `workflow_node_positions` */

insert  into `workflow_node_positions`(`id`,`node_id`,`position_id`) values (1,7,87);

/*Table structure for table `workflow_node_roles` */

DROP TABLE IF EXISTS `workflow_node_roles`;

CREATE TABLE `workflow_node_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `node_id` (`node_id`,`role_id`),
  KEY `workflow_node_roles_role_id_1b05e9ff_fk_syscfg_role_id` (`role_id`),
  CONSTRAINT `workflow_node_roles_node_id_c6ea3f5_fk_workflow_node_id` FOREIGN KEY (`node_id`) REFERENCES `workflow_node` (`id`),
  CONSTRAINT `workflow_node_roles_role_id_1b05e9ff_fk_syscfg_role_id` FOREIGN KEY (`role_id`) REFERENCES `syscfg_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `workflow_node_roles` */

/*Table structure for table `workflow_node_users` */

DROP TABLE IF EXISTS `workflow_node_users`;

CREATE TABLE `workflow_node_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `node_id` (`node_id`,`user_id`),
  KEY `workflow_node_users_user_id_36b0d3c5_fk_auth_user_id` (`user_id`),
  CONSTRAINT `workflow_node_users_node_id_4b2940ca_fk_workflow_node_id` FOREIGN KEY (`node_id`) REFERENCES `workflow_node` (`id`),
  CONSTRAINT `workflow_node_users_user_id_36b0d3c5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `workflow_node_users` */

/*Table structure for table `workflow_todolist` */

DROP TABLE IF EXISTS `workflow_todolist`;

CREATE TABLE `workflow_todolist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(60) DEFAULT NULL,
  `model_name` varchar(60) DEFAULT NULL,
  `arrived_time` datetime NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `read_time` datetime DEFAULT NULL,
  `inst_id` int(11) NOT NULL,
  `node_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(10),
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `workflow_todolist_inst_id_5f7d95_fk_workflow_instance_id` (`inst_id`),
  KEY `workflow_todolist_user_id_5209b40_fk_auth_user_id` (`user_id`),
  KEY `workflow_todolist_node_id_6be79401_fk_workflow_node_id` (`node_id`),
  CONSTRAINT `workflow_todolist_inst_id_5f7d95_fk_workflow_instance_id` FOREIGN KEY (`inst_id`) REFERENCES `workflow_instance` (`id`),
  CONSTRAINT `workflow_todolist_node_id_6be79401_fk_workflow_node_id` FOREIGN KEY (`node_id`) REFERENCES `workflow_node` (`id`),
  CONSTRAINT `workflow_todolist_user_id_5209b40_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `workflow_todolist` */
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;