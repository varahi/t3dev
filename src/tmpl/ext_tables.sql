#
# Table structure for table 'pages'
#
CREATE TABLE pages (
	hide_breadcrumb int(11) unsigned DEFAULT '0' NOT NULL,
);

#
# Table structure for table 'tt_content'
#
CREATE TABLE tt_content (
	video_id varchar(255) DEFAULT '' NOT NULL,
	video_caption varchar(255) DEFAULT '' NOT NULL,
	cropscaling tinyint(3) DEFAULT '0' NOT NULL,
    cropscaling_ratio varchar(100) DEFAULT '0' NOT NULL,
    cropscaling_orient tinyint(3) DEFAULT '0' NOT NULL,
);
