BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "django_migrations" (
	"id"	integer NOT NULL,
	"app"	varchar(255) NOT NULL,
	"name"	varchar(255) NOT NULL,
	"applied"	datetime NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "auth_group_permissions" (
	"id"	integer NOT NULL,
	"group_id"	integer NOT NULL,
	"permission_id"	integer NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("permission_id") REFERENCES "auth_permission"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "auth_user_groups" (
	"id"	integer NOT NULL,
	"user_id"	integer NOT NULL,
	"group_id"	integer NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" (
	"id"	integer NOT NULL,
	"user_id"	integer NOT NULL,
	"permission_id"	integer NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("permission_id") REFERENCES "auth_permission"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "django_admin_log" (
	"id"	integer NOT NULL,
	"object_id"	text,
	"object_repr"	varchar(200) NOT NULL,
	"action_flag"	smallint unsigned NOT NULL CHECK("action_flag" >= 0),
	"change_message"	text NOT NULL,
	"content_type_id"	integer,
	"user_id"	integer NOT NULL,
	"action_time"	datetime NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "django_content_type" (
	"id"	integer NOT NULL,
	"app_label"	varchar(100) NOT NULL,
	"model"	varchar(100) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "auth_permission" (
	"id"	integer NOT NULL,
	"content_type_id"	integer NOT NULL,
	"codename"	varchar(100) NOT NULL,
	"name"	varchar(255) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "auth_group" (
	"id"	integer NOT NULL,
	"name"	varchar(150) NOT NULL UNIQUE,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "auth_user" (
	"id"	integer NOT NULL,
	"password"	varchar(128) NOT NULL,
	"last_login"	datetime,
	"is_superuser"	bool NOT NULL,
	"username"	varchar(150) NOT NULL UNIQUE,
	"last_name"	varchar(150) NOT NULL,
	"email"	varchar(254) NOT NULL,
	"is_staff"	bool NOT NULL,
	"is_active"	bool NOT NULL,
	"date_joined"	datetime NOT NULL,
	"first_name"	varchar(150) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "django_session" (
	"session_key"	varchar(40) NOT NULL,
	"session_data"	text NOT NULL,
	"expire_date"	datetime NOT NULL,
	PRIMARY KEY("session_key")
);
CREATE TABLE IF NOT EXISTS "businesspartner_businesspartner" (
	"id"	integer NOT NULL,
	"Business_partner"	varchar(250),
	"short_image_description"	varchar(150),
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "homepage_homepage" (
	"id"	integer NOT NULL,
	"heading1"	varchar(50) NOT NULL,
	"heading1_description"	text NOT NULL,
	"heading2"	varchar(50) NOT NULL,
	"short_description"	varchar(50),
	"heading2_description"	text NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "submenuhandler_submenuhandler" (
	"id"	integer NOT NULL,
	"sub_title"	varchar(100),
	"subweb_url"	varchar(100),
	"menuhandler_id"	bigint NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("menuhandler_id") REFERENCES "menuhandler_menuhandler"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "aboutus_aboutus" (
	"id"	integer NOT NULL,
	"title"	varchar(100) NOT NULL,
	"description"	text NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "policy_policy" (
	"id"	integer NOT NULL,
	"policy_type"	varchar(100) NOT NULL,
	"policy_title"	varchar(100) NOT NULL,
	"policy_description"	text NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "vision_vision" (
	"id"	integer NOT NULL,
	"title"	varchar(100) NOT NULL,
	"sub_title1"	varchar(100) NOT NULL,
	"Sub_title2"	varchar(100) NOT NULL,
	"sub_title1_description"	text NOT NULL,
	"sub_title2_description"	text NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "boardmember_boardmember" (
	"id"	integer NOT NULL,
	"member_name"	varchar(50) NOT NULL,
	"member_designation"	varchar(100) NOT NULL,
	"member_profile"	text NOT NULL,
	"member_color"	varchar(50) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "loanproduct_loanproduct" (
	"id"	integer NOT NULL,
	"loan_title"	varchar(50) NOT NULL,
	"loan_amount"	varchar(150) NOT NULL,
	"loan_roi"	varchar(150) NOT NULL,
	"loan_tenure"	varchar(150) NOT NULL,
	"loan_image"	varchar(250),
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "slider_slider" (
	"id"	integer NOT NULL,
	"slider_title"	varchar(150) NOT NULL,
	"slider_short_description"	varchar(150),
	"slider_images"	varchar(250),
	"menuhandler_id"	bigint NOT NULL,
	"slider_url"	varchar(150),
	"slider_status"	integer NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("menuhandler_id") REFERENCES "menuhandler_menuhandler"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "businessprocess_businessprocess" (
	"id"	integer NOT NULL,
	"title"	varchar(100) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "businessprocessdescription_businessprocessdescription" (
	"id"	integer NOT NULL,
	"title"	varchar(100),
	"description"	text NOT NULL,
	"businessprocess_id"	bigint NOT NULL,
	"color"	varchar(100),
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("businessprocess_id") REFERENCES "businessprocess_businessprocess"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "menuhandler_menuhandler" (
	"id"	integer NOT NULL,
	"title"	varchar(100) NOT NULL,
	"web_url"	varchar(150) NOT NULL,
	"is_main_menu"	integer NOT NULL,
	"has_sub_menu"	integer NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "setting_setting" (
	"id"	integer NOT NULL,
	"title"	varchar(50),
	"websiteUrl"	varchar(50),
	"contact_no"	varchar(50),
	"email"	varchar(254),
	"alc"	integer,
	"branch"	integer,
	"district"	integer,
	"state"	integer,
	"facebook_url"	varchar(50),
	"linkedin_url"	varchar(50),
	"short_description"	varchar(100),
	"twitter_url"	varchar(50),
	"website_logo"	varchar(250),
	"registered_address"	text NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "django_migrations" ("id","app","name","applied") VALUES (1,'contenttypes','0001_initial','2023-06-01 16:36:54.353155'),
 (2,'auth','0001_initial','2023-06-01 16:36:54.378090'),
 (3,'admin','0001_initial','2023-06-01 16:36:54.412884'),
 (4,'admin','0002_logentry_remove_auto_add','2023-06-01 16:36:54.427840'),
 (5,'admin','0003_logentry_add_action_flag_choices','2023-06-01 16:36:54.437733'),
 (6,'contenttypes','0002_remove_content_type_name','2023-06-01 16:36:54.457697'),
 (7,'auth','0002_alter_permission_name_max_length','2023-06-01 16:36:54.471665'),
 (8,'auth','0003_alter_user_email_max_length','2023-06-01 16:36:54.482672'),
 (9,'auth','0004_alter_user_username_opts','2023-06-01 16:36:54.493670'),
 (10,'auth','0005_alter_user_last_login_null','2023-06-01 16:36:54.508215'),
 (11,'auth','0006_require_contenttypes_0002','2023-06-01 16:36:54.513825'),
 (12,'auth','0007_alter_validators_add_error_messages','2023-06-01 16:36:54.523794'),
 (13,'auth','0008_alter_user_username_max_length','2023-06-01 16:36:54.537759'),
 (14,'auth','0009_alter_user_last_name_max_length','2023-06-01 16:36:54.549791'),
 (15,'auth','0010_alter_group_name_max_length','2023-06-01 16:36:54.561172'),
 (16,'auth','0011_update_proxy_permissions','2023-06-01 16:36:54.570137'),
 (17,'auth','0012_alter_user_first_name_max_length','2023-06-01 16:36:54.583136'),
 (18,'sessions','0001_initial','2023-06-01 16:36:54.594273'),
 (19,'setting','0001_initial','2023-06-01 16:50:40.041826'),
 (20,'setting','0002_setting_alc_setting_branch_setting_district_and_more','2023-06-01 16:58:15.739101'),
 (21,'setting','0003_setting_facebook_url_setting_linkedin_url_and_more','2023-06-01 17:02:56.133325'),
 (22,'homepage','0001_initial','2023-06-01 17:24:01.374214'),
 (23,'businesspartner','0001_initial','2023-06-02 13:37:11.402849'),
 (24,'homepage','0002_homepage_short_description_and_more','2023-06-02 13:57:05.042025'),
 (25,'businesspartner','0002_businesspartner_short_image_description','2023-06-02 14:05:54.367648'),
 (26,'setting','0004_setting_website_logo','2023-06-02 15:02:33.214243'),
 (27,'menuhandler','0001_initial','2023-06-02 15:25:30.998093'),
 (28,'slider','0001_initial','2023-06-02 21:19:47.251492'),
 (29,'slider','0002_slider_slider_url','2023-06-02 21:22:10.197203'),
 (30,'slider','0003_alter_slider_slider_images','2023-06-02 22:22:09.320293'),
 (31,'submenuhandler','0001_initial','2023-06-03 06:34:05.826475'),
 (32,'slider','0002_slider_menuhandler_slider_slider_url_and_more','2023-06-03 07:25:43.281486'),
 (33,'aboutus','0001_initial','2023-06-03 07:48:16.753882'),
 (34,'boardmember','0001_initial','2023-06-03 11:01:48.906569'),
 (35,'policy','0001_initial','2023-06-03 22:43:03.138688'),
 (36,'vision','0001_initial','2023-06-04 06:00:07.280017'),
 (37,'boardmember','0002_boardmember_member_color','2023-06-04 06:34:13.542185'),
 (38,'loanproduct','0001_initial','2023-06-04 15:47:51.711218'),
 (39,'loanproduct','0002_loanproduct_loan_image','2023-06-04 15:55:08.959868'),
 (40,'slider','0003_alter_slider_slider_short_description_and_more','2023-06-05 06:04:07.968765'),
 (41,'slider','0004_alter_slider_slider_short_description_and_more','2023-06-05 06:06:58.851101'),
 (42,'slider','0005_alter_slider_slider_title','2023-06-05 06:07:55.998698'),
 (43,'slider','0006_slider_slider_status','2023-06-05 06:43:52.796756'),
 (44,'businessprocess','0001_initial','2023-06-05 13:56:23.085176'),
 (45,'businessprocessdescription','0001_initial','2023-06-05 13:56:23.101181'),
 (46,'businessprocessdescription','0002_businessprocessdescription_color','2023-06-05 16:15:43.069206'),
 (47,'menuhandler','0002_alter_menuhandler_web_url','2023-06-05 22:48:44.407350'),
 (48,'menuhandler','0003_menuhandler_has_sub_menu','2023-06-06 22:29:40.206456'),
 (49,'setting','0005_alter_setting_registered_address','2023-06-07 19:21:00.367209');
INSERT INTO "django_admin_log" ("id","object_id","object_repr","action_flag","change_message","content_type_id","user_id","action_time") VALUES (1,'1','setting object (1)',1,'[{"added": {}}]',7,1,'2023-06-01 16:53:33.086894'),
 (2,'1','setting object (1)',2,'[{"changed": {"fields": ["District", "State", "Branch", "Alc"]}}]',7,1,'2023-06-01 16:58:36.033816'),
 (3,'1','setting object (1)',2,'[{"changed": {"fields": ["Registered address", "Short description", "Facebook url", "Twitter url", "Linkedin url"]}}]',7,1,'2023-06-01 17:04:09.043950'),
 (4,'1','setting object (1)',2,'[]',7,1,'2023-06-01 17:14:42.140719'),
 (5,'1','homepage object (1)',1,'[{"added": {}}]',8,1,'2023-06-01 17:27:11.436589'),
 (6,'1','Businesspartner object (1)',1,'[{"added": {}}]',9,1,'2023-06-02 14:06:13.450635'),
 (7,'2','Businesspartner object (2)',1,'[{"added": {}}]',9,1,'2023-06-02 14:06:34.454264'),
 (8,'1','homepage object (1)',2,'[{"changed": {"fields": ["Heading1 description", "Heading2 description", "Short description"]}}]',8,1,'2023-06-02 14:08:27.323081'),
 (9,'1','setting object (1)',2,'[{"changed": {"fields": ["Website logo"]}}]',7,1,'2023-06-02 15:03:33.112058'),
 (10,'1','setting object (1)',2,'[{"changed": {"fields": ["Registered address"]}}]',7,1,'2023-06-02 15:06:33.145664'),
 (11,'1','rahul',2,'[{"changed": {"fields": ["First name", "Last name"]}}]',4,1,'2023-06-02 15:09:04.720564'),
 (12,'1','homepage object (1)',2,'[{"changed": {"fields": ["Heading1"]}}]',8,1,'2023-06-02 21:10:02.273784'),
 (13,'1','homepage object (1)',2,'[{"changed": {"fields": ["Heading1"]}}]',8,1,'2023-06-02 21:10:25.817069'),
 (14,'1','slider object (1)',1,'[{"added": {}}]',12,1,'2023-06-02 21:25:42.799598'),
 (15,'1','slider object (1)',3,'',12,1,'2023-06-02 22:12:30.207277'),
 (16,'1','Home',1,'[{"added": {}}]',10,1,'2023-06-03 06:34:39.789655'),
 (17,'2','About Us',1,'[{"added": {}}]',10,1,'2023-06-03 06:38:26.215474'),
 (18,'3','Product',1,'[{"added": {}}]',10,1,'2023-06-03 06:38:39.646652'),
 (19,'1','Vision',1,'[{"added": {}}]',13,1,'2023-06-03 06:39:05.518449'),
 (20,'1','Vision',2,'[{"changed": {"fields": ["Subweb url"]}}]',13,1,'2023-06-03 06:39:18.785353'),
 (21,'2','Mission',1,'[{"added": {}}]',13,1,'2023-06-03 06:39:30.769588'),
 (22,'4','Board Memebers',1,'[{"added": {}}]',10,1,'2023-06-03 06:40:27.929020'),
 (23,'5','Business Process',1,'[{"added": {}}]',10,1,'2023-06-03 06:40:52.007926'),
 (24,'6','Privacy Policy',1,'[{"added": {}}]',10,1,'2023-06-03 06:41:08.242531'),
 (25,'7','@Carrier',1,'[{"added": {}}]',10,1,'2023-06-03 06:41:23.535226'),
 (26,'8','Contact Us',1,'[{"added": {}}]',10,1,'2023-06-03 06:41:33.257975'),
 (27,'8','Contact Us',3,'',10,1,'2023-06-03 06:51:16.920940'),
 (28,'7','@Carrier',3,'',10,1,'2023-06-03 06:51:16.929676'),
 (29,'6','Privacy Policy',3,'',10,1,'2023-06-03 06:51:16.937677'),
 (30,'5','Business Process',3,'',10,1,'2023-06-03 06:51:16.946234'),
 (31,'4','Board Memebers',3,'',10,1,'2023-06-03 06:51:16.954114'),
 (32,'3','Product',3,'',10,1,'2023-06-03 06:51:16.962668'),
 (33,'2','About Us',3,'',10,1,'2023-06-03 06:51:16.969743'),
 (34,'1','Home',3,'',10,1,'2023-06-03 06:51:16.977731'),
 (35,'9','Home',1,'[{"added": {}}]',10,1,'2023-06-03 07:26:13.372898'),
 (36,'10','About Us',1,'[{"added": {}}]',10,1,'2023-06-03 07:26:28.482883'),
 (37,'3','Mission',1,'[{"added": {}}]',13,1,'2023-06-03 07:26:40.392388'),
 (38,'1','aboutus object (1)',1,'[{"added": {}}]',14,1,'2023-06-03 07:48:50.984313'),
 (39,'1','aboutus object (1)',2,'[{"changed": {"fields": ["Title"]}}]',14,1,'2023-06-03 10:45:02.198967'),
 (40,'1','aboutus object (1)',2,'[{"changed": {"fields": ["Title"]}}]',14,1,'2023-06-03 10:45:15.775351'),
 (41,'1','aboutus object (1)',2,'[]',14,1,'2023-06-03 10:55:05.336512'),
 (42,'1','boardmember object (1)',1,'[{"added": {}}]',15,1,'2023-06-03 11:10:57.988041'),
 (43,'2','boardmember object (2)',1,'[{"added": {}}]',15,1,'2023-06-03 11:11:33.081180'),
 (44,'3','boardmember object (3)',1,'[{"added": {}}]',15,1,'2023-06-03 11:12:08.098594'),
 (45,'4','boardmember object (4)',1,'[{"added": {}}]',15,1,'2023-06-03 11:12:39.355494'),
 (46,'1','policy object (1)',1,'[{"added": {}}]',16,1,'2023-06-03 22:46:16.210593'),
 (47,'1','vision object (1)',1,'[{"added": {}}]',17,1,'2023-06-04 06:04:44.836928'),
 (48,'4','boardmember object (4)',2,'[{"changed": {"fields": ["Member color"]}}]',15,1,'2023-06-04 06:34:49.906145'),
 (49,'3','boardmember object (3)',2,'[{"changed": {"fields": ["Member color"]}}]',15,1,'2023-06-04 06:35:03.392849'),
 (50,'2','boardmember object (2)',2,'[{"changed": {"fields": ["Member color"]}}]',15,1,'2023-06-04 06:35:17.823722'),
 (51,'1','boardmember object (1)',2,'[{"changed": {"fields": ["Member color"]}}]',15,1,'2023-06-04 06:35:31.313645'),
 (52,'1','loanproduct object (1)',1,'[{"added": {}}]',18,1,'2023-06-04 15:52:23.098969'),
 (53,'2','loanproduct object (2)',1,'[{"added": {}}]',18,1,'2023-06-04 15:53:17.577989'),
 (54,'3','loanproduct object (3)',1,'[{"added": {}}]',18,1,'2023-06-04 15:53:56.618309'),
 (55,'1','loanproduct object (1)',2,'[{"changed": {"fields": ["Loan image"]}}]',18,1,'2023-06-04 15:56:15.830771'),
 (56,'2','loanproduct object (2)',2,'[{"changed": {"fields": ["Loan image"]}}]',18,1,'2023-06-04 15:56:43.195434'),
 (57,'3','loanproduct object (3)',2,'[{"changed": {"fields": ["Loan image"]}}]',18,1,'2023-06-04 15:56:57.839700'),
 (58,'1','Shoora',1,'[{"added": {}}]',12,1,'2023-06-05 06:04:49.617049'),
 (59,'1','Shoora',2,'[{"changed": {"fields": ["Slider short description"]}}]',12,1,'2023-06-05 06:08:10.719023'),
 (60,'2','Shoora',1,'[{"added": {}}]',12,1,'2023-06-05 06:39:52.825292'),
 (61,'3','Shoora',1,'[{"added": {}}]',12,1,'2023-06-05 06:40:10.406338'),
 (62,'1','Step 1 - Loan Survey',1,'[{"added": {}}]',19,1,'2023-06-05 14:02:13.039995'),
 (63,'2','Branch Survey',1,'[{"added": {}}]',19,1,'2023-06-05 14:02:24.968848'),
 (64,'2','Step 2 - Business Meeting',2,'[{"changed": {"fields": ["Title"]}}]',19,1,'2023-06-05 14:02:57.200598'),
 (65,'3','Step 3 - Loan Approval',1,'[{"added": {}}]',19,1,'2023-06-05 14:03:10.660893'),
 (66,'4','Step 3 - Business Plan',1,'[{"added": {}}]',19,1,'2023-06-05 14:03:22.879520'),
 (67,'1','Area Survey',1,'[{"added": {}}]',20,1,'2023-06-05 14:04:05.292361'),
 (68,'2','Branch Survey',1,'[{"added": {}}]',20,1,'2023-06-05 14:04:29.810035'),
 (69,'3','Village Survey',1,'[{"added": {}}]',20,1,'2023-06-05 14:04:55.372745'),
 (70,'4','Group Meeting',1,'[{"added": {}}]',20,1,'2023-06-05 14:05:24.503176'),
 (71,'5','Training',1,'[{"added": {}}]',20,1,'2023-06-05 14:05:44.672778'),
 (72,'6','Group Recognition',1,'[{"added": {}}]',20,1,'2023-06-05 14:06:06.977036'),
 (73,'7','Credit Bureau',1,'[{"added": {}}]',20,1,'2023-06-05 14:06:32.276738'),
 (74,'8','JLG Loan Approval',1,'[{"added": {}}]',20,1,'2023-06-05 14:06:53.360204'),
 (75,'9','Disbursement',1,'[{"added": {}}]',20,1,'2023-06-05 14:07:15.859742'),
 (76,'10','Loan Utilization Check(LUC)',1,'[{"added": {}}]',20,1,'2023-06-05 14:07:38.175923'),
 (77,'4','Step 4 - Business Plan',2,'[{"changed": {"fields": ["Title"]}}]',19,1,'2023-06-05 14:51:29.460513'),
 (78,'1','Area Survey',2,'[{"changed": {"fields": ["Color"]}}]',20,1,'2023-06-05 16:16:24.882501'),
 (79,'1','Area Survey',2,'[]',20,1,'2023-06-05 16:16:43.794314'),
 (80,'2','Branch Survey',2,'[{"changed": {"fields": ["Color"]}}]',20,1,'2023-06-05 16:17:11.336136'),
 (81,'3','Village Survey',2,'[{"changed": {"fields": ["Color"]}}]',20,1,'2023-06-05 16:17:39.998850'),
 (82,'4','Group Meeting',2,'[{"changed": {"fields": ["Color"]}}]',20,1,'2023-06-05 16:17:57.032809'),
 (83,'5','Training',2,'[{"changed": {"fields": ["Color"]}}]',20,1,'2023-06-05 16:18:14.422633'),
 (84,'6','Group Recognition',2,'[{"changed": {"fields": ["Color"]}}]',20,1,'2023-06-05 16:18:41.982443'),
 (85,'7','Credit Bureau',2,'[{"changed": {"fields": ["Color"]}}]',20,1,'2023-06-05 16:19:04.383461'),
 (86,'8','JLG Loan Approval',2,'[{"changed": {"fields": ["Color"]}}]',20,1,'2023-06-05 16:19:21.563106'),
 (87,'9','Disbursement',2,'[{"changed": {"fields": ["Color"]}}]',20,1,'2023-06-05 16:19:40.080244'),
 (88,'10','Loan Utilization Check(LUC)',2,'[{"changed": {"fields": ["Color"]}}]',20,1,'2023-06-05 16:19:56.023758'),
 (89,'1','Step - 1 : Area Survey',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 16:21:45.828906'),
 (90,'1','Step 1 - Area Survey',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 16:22:13.175544'),
 (91,'2','Step 2 - Branch Survey',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 16:22:27.974051'),
 (92,'3','Step 3 - Village Survey',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 16:22:40.166546'),
 (93,'4','Step 4 - Group Meeting',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 16:22:52.365471'),
 (94,'5','Step 5 - Training',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 16:23:04.888541'),
 (95,'6','Step 6 - Group Recognition',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 16:23:16.954924'),
 (96,'7','Step 7 - Credit Bureau',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 16:23:32.121989'),
 (97,'8','Step 8 - JLG Loan Approval',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 16:23:49.736157'),
 (98,'9','Step 9 - Disbursement',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 16:24:01.160093'),
 (99,'10','Step 10 - Loan Utilization Check(LUC)',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 16:24:12.943408'),
 (100,'1','Area Survey',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 20:48:11.340634'),
 (101,'1','Task 1 - Area Survey',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 20:48:35.666486'),
 (102,'2','Task 2 - Branch Survey',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 21:22:56.994910'),
 (103,'3','Task 3 - Village Survey',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 21:23:28.854938'),
 (104,'4','Task 1 - Group Meeting',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 21:23:49.668630'),
 (105,'5','Task 2 - Training',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 21:24:02.159777'),
 (106,'6','Task 3 - Group Recognition',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 21:24:22.519852'),
 (107,'7','Task 1 - Credit Bureau',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 21:24:37.629493'),
 (108,'8','Task 2 - JLG Loan Approval',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 21:24:49.477494'),
 (109,'9','Task 1 - Disbursement',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 21:25:07.049595'),
 (110,'10','Task 2 - Loan Utilization Check(LUC)',2,'[{"changed": {"fields": ["Title"]}}]',20,1,'2023-06-05 21:25:17.789379'),
 (111,'11','Business',1,'[{"added": {}}]',10,1,'2023-06-05 22:50:10.432878'),
 (112,'9','Home',2,'[{"changed": {"fields": ["Web url"]}}]',10,1,'2023-06-05 22:50:18.868240'),
 (113,'10','About Us',2,'[{"changed": {"fields": ["Web url"]}}]',10,1,'2023-06-05 22:50:35.166931'),
 (114,'12','Help & Support',1,'[{"added": {}}]',10,1,'2023-06-05 22:50:59.482983'),
 (115,'13','Privacy Policy',1,'[{"added": {}}]',10,1,'2023-06-05 22:51:22.037636'),
 (116,'14','Carrier @ Shoora',1,'[{"added": {}}]',10,1,'2023-06-05 22:51:51.244927'),
 (117,'15','Contact Us',1,'[{"added": {}}]',10,1,'2023-06-05 22:52:02.693493'),
 (118,'16','Donate Us',1,'[{"added": {}}]',10,1,'2023-06-05 22:52:12.700915'),
 (119,'4','Board Members',1,'[{"added": {}}]',13,1,'2023-06-05 22:53:44.586591'),
 (120,'3','Mission & Vision',2,'[{"changed": {"fields": ["Sub title", "Subweb url"]}}]',13,1,'2023-06-05 22:54:13.453997'),
 (121,'5','Business Loans - JLG',1,'[{"added": {}}]',13,1,'2023-06-05 22:55:14.702786'),
 (122,'9','Home',2,'[{"changed": {"fields": ["Web url"]}}]',10,1,'2023-06-06 10:09:23.695747'),
 (123,'10','About Us',2,'[{"changed": {"fields": ["Has sub menu"]}}]',10,1,'2023-06-06 22:30:21.434831'),
 (124,'11','Business',2,'[{"changed": {"fields": ["Has sub menu"]}}]',10,1,'2023-06-06 22:30:37.733392'),
 (125,'11','Business',2,'[{"changed": {"fields": ["Web url"]}}]',10,1,'2023-06-06 22:37:38.451309'),
 (126,'13','Our Policies',2,'[{"changed": {"fields": ["Title", "Web url"]}}]',10,1,'2023-06-06 22:44:57.719070'),
 (127,'13','Our Policies',2,'[{"changed": {"fields": ["Has sub menu"]}}]',10,1,'2023-06-06 22:45:07.029951'),
 (128,'6','Privacy Policy',1,'[{"added": {}}]',13,1,'2023-06-06 22:45:38.856686'),
 (129,'1','policy object (1)',2,'[{"changed": {"fields": ["Policy description"]}}]',16,1,'2023-06-06 22:49:51.265363'),
 (130,'1','loanproduct object (1)',2,'[{"changed": {"fields": ["Loan image"]}}]',18,1,'2023-06-07 18:46:11.029892'),
 (131,'7','Business Process',1,'[{"added": {}}]',13,1,'2023-06-07 18:48:20.739839'),
 (132,'7','Business Process',2,'[{"changed": {"fields": ["Menuhandler"]}}]',13,1,'2023-06-07 18:49:09.186597'),
 (133,'1','setting object (1)',2,'[{"changed": {"fields": ["Registered address"]}}]',7,1,'2023-06-07 19:19:23.465847'),
 (134,'1','setting object (1)',2,'[{"changed": {"fields": ["Registered address"]}}]',7,1,'2023-06-07 19:21:19.247147'),
 (135,'12','Help & Support',2,'[{"changed": {"fields": ["Web url"]}}]',10,1,'2023-06-07 19:23:05.917205'),
 (136,'4','boardmember object (4)',3,'',15,1,'2023-06-07 22:36:07.090474'),
 (137,'2','boardmember object (2)',2,'[{"changed": {"fields": ["Member designation"]}}]',15,1,'2023-06-07 22:36:32.342179'),
 (138,'3','boardmember object (3)',2,'[{"changed": {"fields": ["Member designation"]}}]',15,1,'2023-06-07 22:36:45.032606'),
 (139,'1','testTest',1,'[{"added": {}}]',3,1,'2023-06-07 23:01:47.763876'),
 (140,'2','saurabh',1,'[{"added": {}}]',4,1,'2023-06-07 23:02:45.899686'),
 (141,'2','saurabh',2,'[{"changed": {"fields": ["First name", "Last name", "Groups"]}}]',4,1,'2023-06-07 23:03:22.618084'),
 (142,'2','saurabh',2,'[{"changed": {"fields": ["Staff status"]}}]',4,1,'2023-06-07 23:04:50.355815'),
 (143,'2','saurabh',2,'[]',4,1,'2023-06-07 23:04:51.138822'),
 (144,'2','saurabh',3,'',4,1,'2023-06-07 23:06:13.111073'),
 (145,'1','testTest',3,'',3,1,'2023-06-07 23:06:26.839955'),
 (146,'3','Businesspartner object (3)',1,'[{"added": {}}]',9,1,'2023-06-16 16:23:20.876333'),
 (147,'3','Businesspartner object (3)',2,'[{"changed": {"fields": ["Business partner"]}}]',9,1,'2023-06-16 16:25:05.109983');
INSERT INTO "django_content_type" ("id","app_label","model") VALUES (1,'admin','logentry'),
 (2,'auth','permission'),
 (3,'auth','group'),
 (4,'auth','user'),
 (5,'contenttypes','contenttype'),
 (6,'sessions','session'),
 (7,'setting','setting'),
 (8,'homepage','homepage'),
 (9,'businesspartner','businesspartner'),
 (10,'menuhandler','menuhandler'),
 (11,'menuhandler','submenuhandler'),
 (12,'slider','slider'),
 (13,'submenuhandler','submenuhandler'),
 (14,'aboutus','aboutus'),
 (15,'boardmember','boardmember'),
 (16,'policy','policy'),
 (17,'vision','vision'),
 (18,'loanproduct','loanproduct'),
 (19,'businessprocess','businessprocess'),
 (20,'businessprocessdescription','businessprocessdescription');
INSERT INTO "auth_permission" ("id","content_type_id","codename","name") VALUES (1,1,'add_logentry','Can add log entry'),
 (2,1,'change_logentry','Can change log entry'),
 (3,1,'delete_logentry','Can delete log entry'),
 (4,1,'view_logentry','Can view log entry'),
 (5,2,'add_permission','Can add permission'),
 (6,2,'change_permission','Can change permission'),
 (7,2,'delete_permission','Can delete permission'),
 (8,2,'view_permission','Can view permission'),
 (9,3,'add_group','Can add group'),
 (10,3,'change_group','Can change group'),
 (11,3,'delete_group','Can delete group'),
 (12,3,'view_group','Can view group'),
 (13,4,'add_user','Can add user'),
 (14,4,'change_user','Can change user'),
 (15,4,'delete_user','Can delete user'),
 (16,4,'view_user','Can view user'),
 (17,5,'add_contenttype','Can add content type'),
 (18,5,'change_contenttype','Can change content type'),
 (19,5,'delete_contenttype','Can delete content type'),
 (20,5,'view_contenttype','Can view content type'),
 (21,6,'add_session','Can add session'),
 (22,6,'change_session','Can change session'),
 (23,6,'delete_session','Can delete session'),
 (24,6,'view_session','Can view session'),
 (25,7,'add_setting','Can add setting'),
 (26,7,'change_setting','Can change setting'),
 (27,7,'delete_setting','Can delete setting'),
 (28,7,'view_setting','Can view setting'),
 (29,8,'add_homepage','Can add homepage'),
 (30,8,'change_homepage','Can change homepage'),
 (31,8,'delete_homepage','Can delete homepage'),
 (32,8,'view_homepage','Can view homepage'),
 (33,9,'add_businesspartner','Can add businesspartner'),
 (34,9,'change_businesspartner','Can change businesspartner'),
 (35,9,'delete_businesspartner','Can delete businesspartner'),
 (36,9,'view_businesspartner','Can view businesspartner'),
 (37,10,'add_menuhandler','Can add menuhandler'),
 (38,10,'change_menuhandler','Can change menuhandler'),
 (39,10,'delete_menuhandler','Can delete menuhandler'),
 (40,10,'view_menuhandler','Can view menuhandler'),
 (41,11,'add_submenuhandler','Can add submenuhandler'),
 (42,11,'change_submenuhandler','Can change submenuhandler'),
 (43,11,'delete_submenuhandler','Can delete submenuhandler'),
 (44,11,'view_submenuhandler','Can view submenuhandler'),
 (45,12,'add_slider','Can add slider'),
 (46,12,'change_slider','Can change slider'),
 (47,12,'delete_slider','Can delete slider'),
 (48,12,'view_slider','Can view slider'),
 (49,13,'add_submenuhandler','Can add submenuhandler'),
 (50,13,'change_submenuhandler','Can change submenuhandler'),
 (51,13,'delete_submenuhandler','Can delete submenuhandler'),
 (52,13,'view_submenuhandler','Can view submenuhandler'),
 (53,14,'add_aboutus','Can add aboutus'),
 (54,14,'change_aboutus','Can change aboutus'),
 (55,14,'delete_aboutus','Can delete aboutus'),
 (56,14,'view_aboutus','Can view aboutus'),
 (57,15,'add_boardmember','Can add boardmember'),
 (58,15,'change_boardmember','Can change boardmember'),
 (59,15,'delete_boardmember','Can delete boardmember'),
 (60,15,'view_boardmember','Can view boardmember'),
 (61,16,'add_policy','Can add policy'),
 (62,16,'change_policy','Can change policy'),
 (63,16,'delete_policy','Can delete policy'),
 (64,16,'view_policy','Can view policy'),
 (65,17,'add_vision','Can add vision'),
 (66,17,'change_vision','Can change vision'),
 (67,17,'delete_vision','Can delete vision'),
 (68,17,'view_vision','Can view vision'),
 (69,18,'add_loanproduct','Can add loanproduct'),
 (70,18,'change_loanproduct','Can change loanproduct'),
 (71,18,'delete_loanproduct','Can delete loanproduct'),
 (72,18,'view_loanproduct','Can view loanproduct'),
 (73,19,'add_businessprocess','Can add businessprocess'),
 (74,19,'change_businessprocess','Can change businessprocess'),
 (75,19,'delete_businessprocess','Can delete businessprocess'),
 (76,19,'view_businessprocess','Can view businessprocess'),
 (77,20,'add_businessprocessdescription','Can add businessprocessdescription'),
 (78,20,'change_businessprocessdescription','Can change businessprocessdescription'),
 (79,20,'delete_businessprocessdescription','Can delete businessprocessdescription'),
 (80,20,'view_businessprocessdescription','Can view businessprocessdescription');
INSERT INTO "auth_user" ("id","password","last_login","is_superuser","username","last_name","email","is_staff","is_active","date_joined","first_name") VALUES (1,'pbkdf2_sha256$600000$uSmfhp0I3idbjBET5DnG8E$c+a7k8IdqNDXZca4oRmuGrfrCAiVrzdbGayrHnhWXKo=','2023-06-16 16:24:55.054997',1,'rahul','Saxena','rahulsaxenaalld@gmail.com',1,1,'2023-06-01 16:37:37','Rahul');
INSERT INTO "django_session" ("session_key","session_data","expire_date") VALUES ('bedkvovv2vkifru1de6jmvnieumldzck','.eJxVjEEOwiAUBe_C2hBLoYJL9z0D-fAfUjWQlHZlvLtt0oVu38y8t_C0LtmvDbOfWFxFJ06_W6D4RNkBP6jcq4y1LPMU5K7IgzY5Vsbrdrh_B5la3uqoBgxaA93Z9ggwSbGxjl00sCYyg4JNFoRg1UURh36DidATwWkjPl8TTzmc:1q519S:7MOpWUuz20JqSDVpydja93rLi-viJGD-NqaJpOFRJOI','2023-06-16 15:02:54.570027'),
 ('fexei00sz8r249b9tvuwlgbii2sg6x3j','.eJxVjEEOwiAUBe_C2hBLoYJL9z0D-fAfUjWQlHZlvLtt0oVu38y8t_C0LtmvDbOfWFxFJ06_W6D4RNkBP6jcq4y1LPMU5K7IgzY5Vsbrdrh_B5la3uqoBgxaA93Z9ggwSbGxjl00sCYyg4JNFoRg1UURh36DidATwWkjPl8TTzmc:1q6x4a:YDF0Ms63rrM5Ju2qObX2l0BiLHzr83VZ0BtOAsBVTW4','2023-06-21 23:05:52.567109'),
 ('bgnllyrdnqqibdhcegkfhxudxez0mggt','.eJxVjEEOwiAUBe_C2hBLoYJL9z0D-fAfUjWQlHZlvLtt0oVu38y8t_C0LtmvDbOfWFxFJ06_W6D4RNkBP6jcq4y1LPMU5K7IgzY5Vsbrdrh_B5la3uqoBgxaA93Z9ggwSbGxjl00sCYyg4JNFoRg1UURh36DidATwWkjPl8TTzmc:1qA76V:NeVUA-n72TjM_4jXzi1EtzEmT_TpOWxM9hKQX35DZsg','2023-06-30 16:24:55.062014');
INSERT INTO "businesspartner_businesspartner" ("id","Business_partner","short_image_description") VALUES (1,'business_partner/crif-high-mark.png','Crif Highmark'),
 (2,'business_partner/hdfcbank.jpeg','HDFC Bank'),
 (3,'business_partner/logo_eUSguUi.png','Fairasset');
INSERT INTO "homepage_homepage" ("id","heading1","heading1_description","heading2","short_description","heading2_description") VALUES (1,'Requirement Of Micro-Finance','<p>Micro-finance is a financial service designed for low-income individuals who are unable to access traditional banking services. Micro-finance institutions (MFIs) provide small loans, savings accounts, insurance, and other financial services to help clients start or expand small businesses. The goal of micro-finance is to alleviate poverty by empowering people to become self-sufficient and generate income. To ensure that micro-finance is successful, it requires a supportive policy environment, efficient delivery mechanisms, and responsible practices by the MFIs. It also requires appropriate regulation, access to capital, and technical assistance to build the capacity of the institutions and their clients. Micro-finance has the potential to transform the lives of the poor and create economic opportunities in underserved communities.</p>','Theme Of Micro-Finance','Our awesome Partner''s we''ve had the pleasure to wo','<p>The central theme for microfinance has always been uplifting the lives of low income households in rural and semi-urban markets. As the consumption patterns and living standards of borrowers change, credit demand will soon encompass consumption based needs such as children&rsquo;s education fees, marriage funds, and medicine and hospital fees. Staying relevant by addressing these customer needs requires data-based analysis of customer economics and personas with a focus on tracking credit utilization in order to develop hyper-personalized service and product offerings.</p>');
INSERT INTO "submenuhandler_submenuhandler" ("id","sub_title","subweb_url","menuhandler_id") VALUES (3,'Mission & Vision','vision-mission',10),
 (4,'Board Members','board-members',10),
 (5,'Business Loans - JLG','loan-product',11),
 (6,'Privacy Policy','privacy-policy',13),
 (7,'Business Process','business-process',10);
INSERT INTO "aboutus_aboutus" ("id","title","description") VALUES (1,'SHOORA WELFARE FOUNDATION: TRANSFORMING LIVES THROUGH EMPOWERING COMMUNITIES','<p>The Shoora Welfare Foundation is a non-profit organization that was established in November 2018 with the aim of improving the welfare of society. The foundation is focused on empowering the underprivileged by providing them with the necessary tools and support to help themselves, and in turn, support others in need. One of the primary objectives of the foundation is to address the issue of hidden unemployment, which is a major contributor to poverty in rural areas.<br /><br />In many cases, people in rural areas have valuable skills that they can use to start and run their own businesses. However, they often lack the resources and knowledge to make their businesses successful. The Shoora Welfare Foundation aims to address this issue by providing financial assistance, as well as training and support, to help people start and sustain their own businesses. By empowering people in this way, the foundation is working towards creating sustainable economic growth and promoting self-reliance.<br /><br />One of the key focus areas of the foundation is supporting women in rural areas. Women in these communities are often overlooked in the business world, and face many challenges in starting and growing their own businesses. The foundation aims to address this issue by providing financial assistance, training, and support to women entrepreneurs. By empowering women in this way, the foundation is working towards promoting gender equality while also promoting sustainable economic growth.<br /><br />Overall, the Shoora Welfare Foundation is committed to making a difference in the lives of those who need it most. By providing support, training, and resources to underprivileged communities, the foundation is working towards creating a better future for all.</p>');
INSERT INTO "policy_policy" ("id","policy_type","policy_title","policy_description") VALUES (1,'privacy_policy','Privacy Policy','<p>We truly value your support and the impact it has on families of the women, their dreams and on the lives of the people working with them. Whether you volunteer, advocate, fundraise, or donate, you are making a huge difference. Therefore, we promise to treat you with respect and honesty.</p>
<h3>Communicating with you</h3>
<p>We like to keep our supporters informed about our latest activities and accomplishments. We promise to be clear about how we will communicate with you. If you do not want to be contacted, or prefer not to be contacted in certain ways, we will honour that. You can update your preferences with us at any time on our website or by calling our supporter services team at +91-9335329286 or Email: info@shoorawelfare.com.</p>
<h3>Fundraising</h3>
<p>Fundraising is central to achieving our goal to provide easy and affordable credit. We review our fundraising practices on an ongoing basis to ensure they are appropriate and transparent. We will aim to work above and beyond the standards set out by regulatory bodies.</p>
<h3>Your donation</h3>
<p>We are happy to answer questions you may have about how your donation is spent. If you wish to designate your gift to a location or programme, we will do our utmost to honour that request. If it is not possible to designate your gift in the manner requested, we will let you know why and work with you to redirect your gift.</p>
<p>Donations made in support of volunteers who are participating in challenge events or international builds are made directly to Habitat for Humanity and not the individual participating. In the unlikely event that a Build or challenge has to be cancelled, we regret that we cannot offer refunds on donations. Your donation will be used to help families around the area&rsquo;s of our reach.</p>
<h3>Accountability and Complaints</h3>
<p>We reserve the right to amend this privacy statement so please periodically visit our privacy policy in order to keep up to date with any changes. You are welcome to request a copy we hold of any personal information relating to you or to make a complaint if you are unhappy with anything we have done while communicating with you. Additionally, we are always happy to receive questions and feedback about our privacy policy. We will respond promptly to your questions and complaints.</p>');
INSERT INTO "vision_vision" ("id","title","sub_title1","Sub_title2","sub_title1_description","sub_title2_description") VALUES (1,'Vision & Mission','Vision','Mision','<div>
<div>Empowering lives through inclusive finance, Shoora Welfare Foundation envisions a future where microfinance breaks barriers and fosters economic growth for underserved communities. We are committed to providing tailored microloans, financial education, and ongoing support to empower individuals, entrepreneurs, and small businesses. By catalyzing sustainable development and unlocking opportunities, we aim to create a brighter future for all. Through our transparent and accessible financial services, we seek to bridge the financial gap, promote financial literacy, and foster self-reliance. Together, we strive to build resilient communities, alleviate poverty, and transform lives, ensuring that no one is left behind on the path to prosperity.</div>
</div>','<div>
<div>At Shoora Welfare Foundation, our mission is to provide comprehensive and accessible microfinance solutions that empower underserved individuals and entrepreneurs to build sustainable livelihoods and improve their financial well-being. We are committed to fostering financial inclusion by offering microloans and financial literacy programs tailored to the specific needs of our clients.</div>
<div>At Shoora, we are driven by our commitment to empowering individuals, fostering economic growth, and creating a positive and lasting impact on the communities we serve.</div>
</div>');
INSERT INTO "boardmember_boardmember" ("id","member_name","member_designation","member_profile","member_color") VALUES (1,'Rahul Saxena','MD & CEO, Chairman, Director','<p>Rahul has a unique background as one of the founders of a new generation Micro Finance Company that provides small loans to low-income groups and families in rural and urban areas. He has demonstrated skills in fund raising, management reporting, business planning and investor relations.<br />Before joining Shoora, He was employed with Small Finance Bank and Micro finance Institution also he was a co-founder of SZDIGI Services and Prisha Consulting &amp; Development, where he helped launch and grow a major MFI by offering financial solutions. He also has more than five years of experience with Laitor Infosolutions Pvt Ltd and Compaddicts Infotech Pvt Ltd.<br />He graduated from Dr Rizvi College of Engineering, Kaushambhi.</p>','#62074e'),
 (2,'Saurabh Gupta','Additional Director','<p>Saurabh Gupta is an accomplished business leader with over 10+ years of experience in the banking &amp; finance and IT industry. He has a vast experience in Core Banking Solution, Financial Products, and Accounting. He has been associated with many Private Ltd Companies.</p>','#9344f5'),
 (3,'Krishna Sharma','Director','<p>Krishna Kumar Sharma is leader with over 10+ years of experience in the Banking &amp; Finance Products industry. He has a good Experience in CRM Core Banking, Finance.</p>','#defc34');
INSERT INTO "loanproduct_loanproduct" ("id","loan_title","loan_amount","loan_roi","loan_tenure","loan_image") VALUES (1,'Saral Loan','10,000 to 18,000','30% Reducing','9 to 26 Months','loan-product/wilhelm-gunkel-WvCSESzhtXw-unsplash_1.jpg'),
 (2,'Uday Loan','20,000 to 35,000','30% Reducing','9 to 26 Months','loan-product/uday_texture.jpg'),
 (3,'Kiran Loan','35,000 and Above','26% Reducing','13 to 52 Months','loan-product/kiran_texture.jpg');
INSERT INTO "slider_slider" ("id","slider_title","slider_short_description","slider_images","menuhandler_id","slider_url","slider_status") VALUES (1,'Shoora',NULL,'slider/230605/webbanner1.png',9,'#',1),
 (2,'Shoora',NULL,'slider/230605/easy_micro_credit.jpeg',9,'#',1),
 (3,'Shoora',NULL,'slider/230605/bg-3.png',9,'#',1);
INSERT INTO "businessprocess_businessprocess" ("id","title") VALUES (1,'Step 1 - Loan Survey'),
 (2,'Step 2 - Business Meeting'),
 (3,'Step 3 - Loan Approval'),
 (4,'Step 4 - Business Plan');
INSERT INTO "businessprocessdescription_businessprocessdescription" ("id","title","description","businessprocess_id","color") VALUES (1,'Task 1 - Area Survey','<p>Our top priority is to serve people who have not been served by other financial institutions and to meet the unfulfilled demand for financial services. A senior officer will conduct an area survey, taking into account the priorities set by the board. During the survey, the team will focus on cash flow, market trends, crop patterns, credit demand, the presence of microfinance institutions and other financial institutions, law and order, caste and culture, infrastructure, transportation facilities from the head office/regional office, susceptibility to natural disasters such as floods or droughts, credit culture and other relevant factors</p>',1,'bg-warning'),
 (2,'Task 2 - Branch Survey','<p>The branch manager will be responsible for conducting a survey of the branch area. They will use secondary data to determine the poverty level in the area that the branch will serve. Key indicators that the branch manager will focus on include population density, geographic conditions, the presence of public sector banks, sources of cash flow in the area, the presence of microfinance institutions, the potential number of clients within the radius of operation and further scope for new branches nearby</p>',1,'bg-info'),
 (3,'Task 3 - Village Survey','<p>The field staff will conduct a village survey using rapid rural appraisal techniques and by meeting with the villagers. During the survey, the field staff will try to get an idea of the main sources of income for the poor, including agricultural labor and rural artisans, as well as the demographic profile of the community. They will also take into account social conditions, totems and taboos (especially in tribal areas).</p>',1,'bg-success'),
 (4,'Task 1 - Group Meeting','<p>Following a successful meeting with the villagers, the staff engaged with potential clients and requested them to arrange a Joint Liability Group (JLG). Subsequently, the staff visited each individual house belonging to the group members for a physical verification of KYC (Know Your Customer) details. They also facilitated the completion of household forms at the doorstep of each household.</p>',2,'bg-warning'),
 (5,'Task 2 - Training','<p>The training program will primarily emphasize understanding signatures and acquiring knowledge about various financial products and their respective purposes. The training will predominantly focus on products such as credit, savings, insurance, pension, and medical claim policies. The training will span across four days, and it is mandatory for all members to attend the training for the full duration. Each day, the staff will reinforce important aspects such as interest rates, RBI regulations for lenders and borrowers, credit bureaus, loan repayment timelines, loan size, meeting procedures, and pre-settlement conditions.</p>',2,'bg-info'),
 (6,'Task 3 - Group Recognition','<p>The branch manager will verify that every member present for the Group Recognition Test (GRT) has successfully completed the four-day training program. It is essential for all members to be familiar with the loan application and repayment procedures. The branch manager will ensure that the entire group has a collective understanding of financial literacy. During the household (HH) checks, the manager will match the KYC forms to ensure they are filled out completely and accurately. If any information is missing, the manager will take responsibility for completing the form, as they are accountable for identifying and rectifying any mistakes or errors in the form after conducting the HH and farm inspections.</p>',2,'bg-success'),
 (7,'Task 1 - Credit Bureau','<p>From the list 3rd lender less tha 1.5L for IGL(Income Generating Loan) Rural and Urban limit follow in IGL.</p>',3,'bg-warning'),
 (8,'Task 2 - JLG Loan Approval','<p>The Branch Manager (BM) will hold the final authority to approve high-value loans. The Branch Manager (BM) will involved in the approval process, considering factors such as the client''s business and their ability to repay the loan during challenging times or in the event of project failure. It is essential for the client to demonstrate alternate sources of funds or income that can be utilized for repayment during such circumstances. The decision to approve the loan will be made by the BM.</p>',3,'bg-info'),
 (9,'Task 1 - Disbursement','<p>Disbursements will be carried out at the branch, and the funds will be provided to the member''s husband or guardian. In the case of widows, divorcees, or married daughters, the guardian will receive the disbursement on their behalf. Unmarried girls are not permitted to participate in the program.</p>',4,'bg-warning'),
 (10,'Task 2 - Loan Utilization Check(LUC)','<p>The Branch Manager (BM) will hold the final authority to approve high-value loans. The Branch Manager (BM) will involved in the approval process, considering factors such as the client''s business and their ability to repay the loan during challenging times or in the event of project failure. It is essential for the client to demonstrate alternate sources of funds or income that can be utilized for repayment during such circumstances. The decision to approve the loan will be made by the BM.</p>',4,'bg-info');
INSERT INTO "menuhandler_menuhandler" ("id","title","web_url","is_main_menu","has_sub_menu") VALUES (9,'Home','/',1,0),
 (10,'About Us','about-us',1,1),
 (11,'Business','#',1,1),
 (12,'Help & Support','help-support',1,0),
 (13,'Our Policies','#',1,1),
 (14,'Carrier @ Shoora','#',1,0),
 (15,'Contact Us','#',1,0),
 (16,'Donate Us','#',1,0);
INSERT INTO "setting_setting" ("id","title","websiteUrl","contact_no","email","alc","branch","district","state","facebook_url","linkedin_url","short_description","twitter_url","website_logo","registered_address") VALUES (1,'Shoora Welfare Foundation','www.shoorawelfare.com','9335329286','info@shoorawelfare.com',50,1,1,1,'#','#','Our main focus is on serving individuals who have not yet been served, and addressing unmet demand i','#','logo/shooralogo.png','<p>Shoora Welfare Foundation</p>
<p>900/178B/2B Rajrooppur Prayagraj, U.P - 211011</p>');
CREATE UNIQUE INDEX IF NOT EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" (
	"group_id",
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" (
	"group_id"
);
CREATE INDEX IF NOT EXISTS "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" (
	"permission_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" (
	"user_id",
	"group_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" (
	"user_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_groups_group_id_97559544" ON "auth_user_groups" (
	"group_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" (
	"user_id",
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" (
	"user_id"
);
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" (
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" (
	"content_type_id"
);
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6" ON "django_admin_log" (
	"user_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" (
	"app_label",
	"model"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" (
	"content_type_id",
	"codename"
);
CREATE INDEX IF NOT EXISTS "auth_permission_content_type_id_2f476e4b" ON "auth_permission" (
	"content_type_id"
);
CREATE INDEX IF NOT EXISTS "django_session_expire_date_a5c62663" ON "django_session" (
	"expire_date"
);
CREATE INDEX IF NOT EXISTS "submenuhandler_submenuhandler_menuhandler_id_750cfc86" ON "submenuhandler_submenuhandler" (
	"menuhandler_id"
);
CREATE INDEX IF NOT EXISTS "slider_slider_menuhandler_id_6e007495" ON "slider_slider" (
	"menuhandler_id"
);
CREATE INDEX IF NOT EXISTS "businessprocessdescription_businessprocessdescription_businessprocess_id_de7f3f05" ON "businessprocessdescription_businessprocessdescription" (
	"businessprocess_id"
);
COMMIT;
