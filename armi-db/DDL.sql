create or replace schema Armi collate utf8mb4_general_ci;
use Armi;
SET time_zone = '+8:00';


-- 
create or replace table user_login (
	username varchar(30) not null primary key,
	authority text not null ,
	deadline long
);

-- 官網後台
create or replace table dept (
	id int auto_increment primary key,
	name varchar(30) null,
	active nchar(1) not null default 'Y',
	created_time datetime not null default now(),
	created_user varchar(30) not null default 'system',
	updated_time datetime not null default now(),
	updated_user varchar(30) not null default 'system'
);
create or replace table menu (
	id int auto_increment primary key,
	parent_id int null,
	name varchar(30) not null,
	path varchar(50) null,
	icon varchar(50) null,
	active char null,
	seq int null,
	created_time datetime not null default now(),
	created_user varchar(30) not null default 'system',
	updated_time datetime not null default now(),
	updated_user varchar(30) not null default 'system'
);


create or replace table permission (
	id int auto_increment primary key,
	parent_id int null comment '父級權限',
	name varchar(255) not null comment '名稱',
	value varchar(255) null comment '權限值',
	type int(1) null comment '權限類型 : 1->菜單 : 2->按鈕',
	uri varchar(255) null comment '前端路徑',
	enable char(1) default 'Y' not null comment '啟用狀態 : N->禁用 : Y->啟用',
	description varchar(255) null comment '描述',
	created_time datetime not null default now(),
	created_user varchar(30) not null default 'system',
	updated_time datetime not null default now(),
	updated_user varchar(30) not null default 'system'
);


create or replace table resource (
	id int auto_increment primary key,
	name varchar(255) not null comment '資源名稱',
	url varchar(255) not null comment '資源URL',
	description varchar(255) null comment '描述',
	enable char(1) default 'Y' null  comment 'Y -> 啟用 N -> 停用',
	created_time datetime not null default now(),
	created_user varchar(30) not null default 'system',
	updated_time datetime not null default now(),
	updated_user varchar(30) not null default 'system'
);
create or replace table role (
	id int auto_increment primary key,
	name varchar(30) null,
	active char null,
	dept_id int null,
	created_time datetime not null default now(),
	created_user varchar(30) not null default 'system',
	updated_time datetime not null default now(),
	updated_user varchar(30) not null default 'system'
);
create or replace table role_menu (
	role_id int not null,
	menu_id int not null,
	created_time datetime not null default now(),
	created_user varchar(30) not null default 'system',
	updated_time datetime not null default now(),
	updated_user varchar(30) not null default 'system',
	primary key (role_id, menu_id)
);
create or replace table role_permission (
	role_id int not null,
	permission_id int not null,
	created_time datetime not null default now(),
	created_user varchar(30) not null default 'system',
	updated_time datetime not null default now(),
	updated_user varchar(30) not null default 'system',
	primary key (role_id, permission_id)
);
create or replace table role_resource (
	role_id int not null,
	resource_id int not null,
	created_time datetime not null default now(),
	created_user varchar(30) not null default 'system',
	updated_time datetime not null default now(),
	updated_user varchar(30) not null default 'system',
	primary key (role_id, resource_id)
);
create or replace table user_info (
	username varchar(30) not null primary key,
	password varchar(50) not null,
	full_name varchar(30) null,
	mail varchar(50) null,
	active char null,
	phone varchar(10) null,
	created_time datetime not null default now(),
	created_user varchar(30) not null default 'system',
	updated_time datetime not null default now(),
	updated_user varchar(30) not null default 'system'
);
create or replace table user_role (
	username varchar(30) not null,
	role_id int not null,
	created_time datetime not null default now(),
	created_user varchar(30) not null default 'system',
	updated_time datetime not null default now(),
	updated_user varchar(30) not null default 'system',
	primary key (username, role_id)
);
-- 檔案資訊
create or replace table file_resource (
	id int auto_increment,
	type varchar(30) null comment '檔案類型',
	name varchar(255) null comment '檔案名稱',
	path varchar(255) null comment '檔案路徑',
	category_id int null comment '檔案分類',
	created_time datetime not null default now(),
	created_user varchar(30) not null default 'system',
	updated_time datetime not null default now(),
	updated_user varchar(30) not null default 'system',
	primary key (id)
);
-- 檔案分類
create or replace table category (
	id int auto_increment,
	name varchar (255) null comment '名稱',
	description varchar (255) null comment '描述',
	created_time datetime not null default now(),
	created_user varchar(30) not null default 'system',
	updated_time datetime not null default now(),
	updated_user varchar(30) not null default 'system',
	primary key (id)
);


-- 官網畫面
-- ===================================================================
create or replace table about_blog (
	id int auto_increment primary key,
	title varchar(255) null,
	sub_title varchar(255) null,
	sort int null,
	link varchar(255) null,
	contents text null comment 'CKEditor',
	tag_id int null,
	publish_user varchar(50) null,
	publish_date timestamp default current_timestamp() not null on update current_timestamp(),
	on_time timestamp default current_timestamp() not null on update current_timestamp(),
	off_time timestamp null,
	image_id int null comment 'Blog image id',
	enable char(1) null comment 'Y -> 啟用 N -> 停用',
	created_user varchar(50) null,
	created_time timestamp default current_timestamp() not null on update current_timestamp(),
	updated_user varchar(50) null,
	updated_time timestamp default current_timestamp() not null on update current_timestamp()
);
-- 
create or replace table about_tags (
	id int auto_increment primary key,
	tag varchar(255) null,
	tag_en varchar(255) null,
	enable char(1) null,
	link varchar(255) null,
	image_id int null comment 'Tag image id',
	sort int null comment '排序',
	created_user varchar(50) null,
	created_time timestamp default current_timestamp() not null on update current_timestamp(),
	updated_user varchar(50) null,
	updated_time timestamp default current_timestamp() not null on update current_timestamp()
);
create or replace table about_us (
	id int auto_increment primary key,
	lang char(5) null comment '語系',
	title varchar(50) null comment '標題',
	sub_title1 varchar(255) null comment '副標題 1',
	sub_title2 varchar(255) null comment '副標題 2',
	company_name varchar(255) null,
	email varchar(255) null,
	tele varchar(50) null,
	google_map text null,
	facebook text null,
	youtube text null,
	instagram text null,
	copyright varchar(255) null,
	address varchar(255) null,
	logo_id int null comment 'LOGO image id',
	profile_id int null comment '公司簡介檔案 id',
	image_big_id int null comment '大圖 id',
	image_small_id int null comment '小圖 id',
	contents1 text null,
	contents2 text null,
	contents3 text null comment 'CKEditor',
	contents4 text null,
	logo blob null,
	created_user varchar(50) null,
	created_time timestamp default current_timestamp() not null on update current_timestamp(),
	updated_user varchar(50) null,
	updated_time timestamp default current_timestamp() not null on update current_timestamp()
);
create or replace table contact_us (
	id int auto_increment primary key,
	unit varchar(255) null,
	contact_person varchar(50) null,
	mobile varchar(10) null,
	email varchar(100) null,
	company_web_link varchar(255) null,
	query_contents varchar(255) null,
	from_where varchar(255) null,
	status char(1) null comment '狀態',
	remark varchar(255) null comment '備註',
	created_user varchar(50) null,
	created_time timestamp default current_timestamp() not null on update current_timestamp(),
	updated_user varchar(50) null,
	updated_time timestamp default current_timestamp() not null on update current_timestamp()
);


create or replace table our_service_info (
	id int auto_increment primary key,
	lang varchar(5) null,
	title varchar(255) null,
	sub_contents text null,
	contents text null,
	image_id int null comment '圖片 id',
	image_left_id int null comment '左圖片 id',
	created_user varchar(50) default 'test' null,
	created_time timestamp default current_timestamp() not null on update current_timestamp(),
	updated_user varchar(50) default 'test' null,
	updated_time timestamp default current_timestamp() not null on update current_timestamp()
);
create or replace table our_service_item (
	id int auto_increment primary key,
	title varchar(255) null,
	title_en varchar(255) null,
	contents text null,
	contents_en text null,
	type char(1) null comment '分類用 暫時無使用',
	icon_id int null comment 'Icon id',
	sort int null comment '排序',
	enable char(1) null comment 'Y -> 啟用 N -> 停用',
	created_user varchar(50) null,
	created_time timestamp default current_timestamp() not null on update current_timestamp(),
	updated_user varchar(50) null,
	updated_time timestamp default current_timestamp() not null on update current_timestamp()
);
create or replace table page_img (
	id int auto_increment primary key,
	page_id int not null comment ' page_id 畫面連結',
	name varchar(255) null comment '頁面中文標題',
	name_en varchar(255) null comment '頁面英文標題',
	image_id int null comment '圖片 id',
	created_user varchar(50) null,
	created_time timestamp default current_timestamp() not null on update current_timestamp(),
	updated_user varchar(50) null,
	updated_time timestamp default current_timestamp() not null on update current_timestamp()
);
create or replace table page_info (
	id int auto_increment primary key,
	parent_id int not null,
	name varchar(50) null,
	name_en varchar(50) null,
	type char null,
	sort int null comment '',
	area char null comment ' A -> all  H -> header  F -> footer',
	icon_id int null comment 'Icon id',
	link varchar(255) null comment '連結',
	link_id varchar(10) null comment '連結 id',
	enable char(1) null comment 'Y -> 啟用 N -> 停用',
	created_user varchar(50) null,
	created_time timestamp default current_timestamp() not null on update current_timestamp(),
	updated_user varchar(50) null,
	updated_time timestamp default current_timestamp() not null on update current_timestamp()
);

-- 
create or replace table portfolio_info (
	id int auto_increment primary key,
	title varchar(255) null,
	contents text null,
	lang char(5) null,
	created_user varchar(50) null,
	created_time timestamp default current_timestamp() not null on update current_timestamp(),
	updated_user varchar(50) null,
	updated_time timestamp default current_timestamp() not null on update current_timestamp()
);
-- 
create or replace table portfolio_item (
	id int auto_increment primary key,
	title varchar(255) null,
	title_en varchar(255) null,
	image_id int null comment '圖片 id',
	logo_id int null comment 'logo id',
	enable char(1) null comment 'Y -> 啟用 N -> 停用',
	sort int null comment '排序',
	created_user varchar(50) null,
	created_time timestamp default current_timestamp() not null on update current_timestamp(),
	updated_user varchar(50) null,
	updated_time timestamp default current_timestamp() not null on update current_timestamp()
);
create or replace table recruitment_info (
	id int auto_increment primary key,
	lang char(5) null comment '語系',
	title varchar(255) null,
	sub_title varchar(255) null,
	contents text null,
	skill_contents text null comment 'CKEditor',
	image_id int null comment '圖片 id',
	created_user varchar(50) null,
	created_time timestamp default current_timestamp() not null on update current_timestamp(),
	updated_user varchar(50) null,
	updated_time timestamp default current_timestamp() not null on update current_timestamp()
);
create or replace table recruitment_item (
	id int auto_increment primary key,
	title varchar(50) null,
	contents text null,
	type char null comment '暫留',
	sort int null,
	link varchar(255) null comment '連結',
	enable char null comment ' Y -> 顯示 N -> 不顯示',
	created_user varchar(50) null,
	created_time timestamp default current_timestamp() not null on update current_timestamp(),
	updated_user varchar(50) null,
	updated_time timestamp default current_timestamp() not null on update current_timestamp()
);


-- =================================
-- 後台功能

create or replace table file_resource_temp (
	id int auto_increment,
	type varchar(30) null comment '檔案類型',
	name varchar(255) null comment '檔案名稱',
	path varchar(255) null comment '檔案路徑',
	category_id int null comment '檔案分類',
	created_time datetime not null default now(),
	created_user varchar(30) not null default 'system',
	updated_time datetime not null default now(),
	updated_user varchar(30) not null default 'system',
	primary key (id)
);

create or replace table about_us_temp (
	id int auto_increment primary key,
	lang char(5) null comment '語系',
	title varchar(50) null comment '標題',
	sub_title1 varchar(255) null comment '副標題 1',
	sub_title2 varchar(255) null comment '副標題 2',
	company_name varchar(255) null,
	email varchar(255) null,
	tele varchar(50) null,
	google_map text null,
	facebook text null,
	youtube text null,
	instagram text null,
	copyright varchar(255) null,
	address varchar(255) null,
	logo_id int null comment 'LOGO image id',
	profile_id int null comment '公司簡介檔案 id',
	image_big_id int null comment '大圖 id',
	image_small_id int null comment '小圖 id',
	contents1 text null,
	contents2 text null,
	contents3 text null comment 'CKEditor',
	contents4 text null,
	logo blob null,
	created_user varchar(50) null,
	created_time timestamp default current_timestamp() not null ,
	updated_user varchar(50) null,
	updated_time timestamp default current_timestamp() not null,
	status nchar(1) not null default 'D' comment '案件狀態'
);







