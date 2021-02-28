use Armi;


-- 部門
INSERT INTO dept (id, name) values (1, '資訊部');
INSERT INTO dept (id, name) values (2, '人事部');
INSERT INTO dept (id, name) values (3, '業務部');
INSERT INTO dept (id, name) values (4, '行銷部');

-- 角色
INSERT INTO role (id, name, active, dept_id) VALUES (1, '老闆', 'Y', 1);
INSERT INTO role (id, name, active, dept_id) VALUES (2, '主管', 'Y', 1);
INSERT INTO role (id, name, active, dept_id) VALUES (3, '工程師', 'Y', 1);
INSERT INTO role (id, name, active, dept_id) VALUES (4, '打雜', 'Y', 1);
INSERT INTO role (id, name, active, dept_id) VALUES (5, '助理', 'Y', 2);
INSERT INTO role (id, name, active, dept_id) VALUES (6, '設計師', 'Y', 1);

-- 使用者
INSERT INTO user_info (username, password, full_name, mail, active, phone) VALUES ('poshen', 'zaqwsx', '林柏伸', 'poshen.lin@twarmitech.com', 'Y', '0909668322');
INSERT INTO user_info (username, password, full_name, mail, active, phone) VALUES ('joe', 'zaqwsx', '張柏維', 'joe.chang@twarmitech.com', 'Y', '0909668322');
INSERT INTO user_info (username, password, full_name, mail, active, phone) VALUES ('tyson', 'zaqwsx', '賴厚廷', 'tyson.lai@twarmitech.com', 'Y', '0909668322');
INSERT INTO user_info (username, password, full_name, mail, active, phone) VALUES ('cola', 'zaqwsx', '可樂', 'cola.wang@twarmitech.com', 'Y', '0909668322');
INSERT INTO user_info (username, password, full_name, mail, active, phone) VALUES ('jasmine', 'zaqwsx', '謝佳珊', 'jasmine.hsieh@twarmitech.com', 'Y', '0909668322');


INSERT INTO user_role (username, role_id) VALUES ('poshen', 3);
INSERT INTO user_role (username, role_id) VALUES ('joe', 1);
INSERT INTO user_role (username, role_id) VALUES ('tyson', 2);
INSERT INTO user_role (username, role_id) VALUES ('cola', 3);
INSERT INTO user_role (username, role_id) VALUES ('jasmine', 5);

-- 使用者權限
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (1, 0, '使用者', null, 1, null, 'Y', '使用者權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (2, 1, '使用者查詢', 'user:get', 2, '/audit/account/user', 'Y', '使用者查詢權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (3, 1, '使用者建立', 'user:create', 2, '/audit/account/user', 'Y', '使用者建立權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (4, 1, '使用者編輯', 'user:update', 2, '/audit/account/user', 'Y', '使用者編輯權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (5, 1, '使用者停用', 'user:toggle', 2, '/audit/account/user', 'Y', '使用者切換權限');
-- 角色-權限
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (6, 0, '角色', null, 1, null, 'Y', '角色權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (7, 6, '角色查詢', 'role:get', 2, '/audit/account/role', 'Y', '角色查詢權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (8, 6, '角色建立', 'role:create', 2, '/audit/account/role', 'Y', '角色建立權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (9, 6, '角色編輯', 'role:update', 2, '/audit/account/role', 'Y', '角色編輯權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (10, 6, '角色刪除', 'role:delete', 2, '/audit/account/role', 'Y', '角色刪除權限');
-- 部門-權限
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (11, 0, '部門', null, 1, null, 'Y', '部門權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (12, 11, '部門查詢', 'dept:get', 2, '/audit/account/dept', 'Y', '部門查詢權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (13, 11, '部門建立', 'dept:create', 2, '/audit/account/dept', 'Y', '部門建立權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (14, 11, '部門編輯', 'dept:update', 2, '/audit/account/dept', 'Y', '部門編輯權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (15, 11, '部門停用', 'dept:toggle', 2, '/audit/account/dept', 'Y', '部門切換權限');
-- 資訊-權限
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (16, 0, '資訊', null, 1, null, 'Y', '資訊權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (17, 16, '資訊查詢', 'info:get', 2, '/audit/info', 'Y', '資訊查詢權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (18, 16, '資訊新增', 'info:create', 2, '/audit/info', 'Y', '資訊建立權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (19, 16, '資訊編輯', 'info:update', 2, '/audit/info', 'Y', '資訊編輯權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (20, 16, '資訊刪除', 'info:delete', 2, '/audit/info', 'Y', '資訊刪除權限');
-- 選單-權限
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (21, 0, '選單', null, 1, null, 'Y', '資訊權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (22, 21, '選單查詢', 'menu:get', 2, '/audit/account/menu', 'Y', '選單查詢權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (23, 21, '選單編輯', 'menu:save', 2, '/audit/account/menu', 'Y', '選單編輯權限');
INSERT INTO permission (id, parent_id, name, value, type, uri, enable, description) VALUES (24, 21, '選單停用', 'menu:toggle', 2, '/audit/account/menu', 'Y', '選單切換權限');



INSERT INTO role_permission (role_id, permission_id) VALUES (1, 1);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 2);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 3);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 4);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 5);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 6);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 7);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 8);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 9);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 10);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 11);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 12);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 13);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 14);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 15);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 21);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 22);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 23);
INSERT INTO role_permission (role_id, permission_id) VALUES (1, 24);

INSERT INTO role_permission (role_id, permission_id) VALUES (2, 6);
INSERT INTO role_permission (role_id, permission_id) VALUES (2, 7);
INSERT INTO role_permission (role_id, permission_id) VALUES (2, 8);
INSERT INTO role_permission (role_id, permission_id) VALUES (2, 9);
INSERT INTO role_permission (role_id, permission_id) VALUES (2, 10);
INSERT INTO role_permission (role_id, permission_id) VALUES (2, 11);
INSERT INTO role_permission (role_id, permission_id) VALUES (2, 12);
INSERT INTO role_permission (role_id, permission_id) VALUES (2, 13);
INSERT INTO role_permission (role_id, permission_id) VALUES (2, 14);
INSERT INTO role_permission (role_id, permission_id) VALUES (2, 15);

INSERT INTO role_permission (role_id, permission_id) VALUES (3, 16);
INSERT INTO role_permission (role_id, permission_id) VALUES (3, 17);
INSERT INTO role_permission (role_id, permission_id) VALUES (3, 18);
INSERT INTO role_permission (role_id, permission_id) VALUES (3, 19);
INSERT INTO role_permission (role_id, permission_id) VALUES (3, 20);


INSERT INTO menu (id, parent_id, name, path, icon, active, seq) VALUES (1,0,'使用者管理',null,'','Y',1);
INSERT INTO menu (id, parent_id, name, path, icon, active, seq) VALUES (2,1,'使用者管理','/audit/account/user','','Y',1);
INSERT INTO menu (id, parent_id, name, path, icon, active, seq) VALUES (3,1,'角色管理','/audit/account/role','','Y',2);
INSERT INTO menu (id, parent_id, name, path, icon, active, seq) VALUES (4,1,'部門管理','/audit/account/dept','','Y',3);
INSERT INTO menu (id, parent_id, name, path, icon, active, seq) VALUES (5,0,'資訊編輯','/audit/info','','Y',2);
--INSERT INTO menu (id, parent_id, name, path, icon, active, seq) VALUES (6,0,'商品管理',null,'','Y',3);
--INSERT INTO menu (id, parent_id, name, path, icon, active, seq) VALUES (7,6,'商品總攬','/audit/product/info','','Y',1);
INSERT INTO menu (id, parent_id, name, path, icon, active, seq) VALUES (8,0,'功能項目',null,'','Y',4);
INSERT INTO menu (id, parent_id, name, path, icon, active, seq) VALUES (9,8,'頁面連結管理','/audit/function/official-page','','Y',1);
INSERT INTO menu (id, parent_id, name, path, icon, active, seq) VALUES (10,8,'首圖管理','/audit/function/maintain-banner','','Y',2);
INSERT INTO menu (id, parent_id, name, path, icon, active, seq) VALUES (11,8,'關於我們','/audit/function/about-us','','Y',3);
INSERT INTO menu (id, parent_id, name, path, icon, active, seq) VALUES (12,8,'服務內容','/audit/function/our-service','','Y',4);
INSERT INTO menu (id, parent_id, name, path, icon, active, seq) VALUES (13,8,'企業徵才','/audit/function/recruitment','','Y',5);
INSERT INTO menu (id, parent_id, name, path, icon, active, seq) VALUES (14,8,'聯絡我們-查詢條件','/audit/function/contact-us-search','','Y',6);
INSERT INTO menu (id, parent_id, name, path, icon, active, seq) VALUES (15,0,'異動紀錄查詢','/audit/export-alter','','Y',5);

INSERT INTO role_menu (role_id, menu_id) VALUES (3,1);
INSERT INTO role_menu (role_id, menu_id) VALUES (3,2);
INSERT INTO role_menu (role_id, menu_id) VALUES (3,3);
INSERT INTO role_menu (role_id, menu_id) VALUES (3,4);
INSERT INTO role_menu (role_id, menu_id) VALUES (3,5);
--INSERT INTO role_menu (role_id, menu_id) VALUES (3,6);
--INSERT INTO role_menu (role_id, menu_id) VALUES (3,7);

INSERT INTO role_menu (role_id, menu_id) VALUES (1,1);
INSERT INTO role_menu (role_id, menu_id) VALUES (1,2);
INSERT INTO role_menu (role_id, menu_id) VALUES (1,3);
INSERT INTO role_menu (role_id, menu_id) VALUES (1,4);
INSERT INTO role_menu (role_id, menu_id) VALUES (1,5);
--INSERT INTO role_menu (role_id, menu_id) VALUES (1,6);
--INSERT INTO role_menu (role_id, menu_id) VALUES (1,7);
INSERT INTO role_menu (role_id, menu_id) values (1,8);
INSERT INTO role_menu (role_id, menu_id) values (1,9);
INSERT INTO role_menu (role_id, menu_id) values (1,10);
INSERT INTO role_menu (role_id, menu_id) values (1,11);
INSERT INTO role_menu (role_id, menu_id) values (1,12);
INSERT INTO role_menu (role_id, menu_id) values (1,13);
INSERT INTO role_menu (role_id, menu_id) values (1,14);
INSERT INTO role_menu (role_id, menu_id) values (1,15);

INSERT INTO resource (id, name, url, description) VALUES (1, '使用者管理', '/user/**', null);
INSERT INTO resource (id, name, url, description) VALUES (2, '角色管理', '/role/**', null);
INSERT INTO resource (id, name, url, description) VALUES (3, '部門管理', '/dept/**', null);
INSERT INTO resource (id, name, url, description) VALUES (4, '資訊管理', '/info/**', null);

INSERT INTO role_resource (role_id, resource_id) VALUES (1, 1);
INSERT INTO role_resource (role_id, resource_id) VALUES (1, 2);
INSERT INTO role_resource (role_id, resource_id) VALUES (1, 3);
INSERT INTO role_resource (role_id, resource_id) VALUES (2, 2);
INSERT INTO role_resource (role_id, resource_id) VALUES (2, 3);
INSERT INTO role_resource (role_id, resource_id) VALUES (2, 4);
INSERT INTO role_resource (role_id, resource_id) VALUES (3, 4);


-- 官網資料
-- ================================== 

INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (1,'JPG','aboutUs.jpg','/aboutUs',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (2,'JPG','about-banner.jpg','/aboutUs',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (3,'JPG','about-img.jpg','/aboutUs',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (4,'JPG','blog-brand.jpg','/blog',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (5,'JPG','blog-daily.jpg','/blog',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (6,'JPG','blog-dev.jpg','/blog',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (7,'JPG','singlepage-banner.jpg','/blog/',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (8,'JPG','portfolio-01.jpg','/tag',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (9,'JPG','portfolio-02.jpg','/tag',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (10,'JPG','portfolio-03.jpg','/tag',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (11,'JPG','portfolio-04.jpg','/tag',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (12,'JPG','portfolio-05.jpg','/tag',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (13,'JPG','portfolio-06.jpg','/tag',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (14,'JPG','portfolio-07.jpg','/tag',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (15,'JPG','portfolio-08.jpg','/tag',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (16,'JPG','portfolio-09.jpg','/tag',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (17,'JPG','portfolio-10.jpg','/tag',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (18,'JPG','portfolio-11.jpg','/tag',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (19,'JPG','portfolio-12.jpg','/tag',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (20,'JPG','portfolio-13.jpg','/tag',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (21,'JPG','contact-banner.jpg','/contactus',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (22,'SVG','email.svg','/contactus',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (23,'SVG','phone.svg','/contactus',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (24,'SVG','placeholder.svg','/contactus',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (25,'SVG','earth.svg','/header-footer',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (26,'SVG','footer-LOGO.svg','/header-footer',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (27,'SVG','footerpattern.svg','/header-footer',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (28,'SVG','header-bg.svg','/header-footer',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (29,'SVG','header-LOGO.svg','/header-footer',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (30,'SVG','location.svg','/header-footer',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (31,'JPG','news-03.jpg','/news',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (32,'JPG','news-06.jpg','/news',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (33,'JPG','news-10.jpg','/news',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (34,'JPG','news-13.jpg','/news',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (35,'JPG','news-banner.jpg','/news',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (36,'JPG','service-banner.jpg','/ourservice',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (37,'JPG','recruit-banner.jpg','/recruit',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (38,'JPG','Acer.jpg','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (39,'JPG','AdvancedTEK.jpg','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (41,'JPG','ChunghwaPost .jpg','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (42,'JPG','CTCB.jpg','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (43,'JPG','FubonFinancial.jpg','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (44,'JPG','MOL.jpg','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (45,'JPG','NanShanLife.jpg','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (46,'JPG','PIC.jpg','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (47,'JPG','SYSTEX.jpg','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (48,'JPG','Tstar.jpg','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (49,'JPG','YuantaLife.jpg','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (50,'JPG','abou-leftimg.jpg','/aboutUs',null,'test','test');


INSERT INTO Armi.about_blog (id, title, sub_title, sort, link, contents, tag_id, image_id, enable, publish_user, publish_date, on_time, off_time, created_user, created_time, updated_user, updated_time) VALUES (1, 'test', 'test01', 5, 'https://google.com', '你好啊。我是喵', 1, 1, 'Y', '打雜','2020-1-1 00:00:00', now(), null, 'test', now(), 'test', now());
INSERT INTO Armi.about_blog (id, title, sub_title, sort, link, contents, tag_id, image_id, enable, publish_user, publish_date, on_time, off_time, created_user, created_time, updated_user, updated_time) VALUES (2, 'test', 'test01', 5, 'https://google.com', '你好啊。我是小賴', 1, 1, 'Y', '技術長', '2020-1-1 00:00:00', now(), null, 'test', now(), 'test', now());
INSERT INTO Armi.about_blog (id, title, sub_title, sort, link, contents, tag_id, image_id, enable, publish_user, publish_date, on_time, off_time, created_user, created_time, updated_user, updated_time) VALUES (3, '奧米王', '拉拉拉', 5, null, null, 1, 1, 'Y', '技術長', '2020-1-1 00:00:00', now(), null, 'test', now(), 'test', now());
INSERT INTO Armi.about_blog (id, title, sub_title, sort, link, contents, tag_id, image_id, enable, publish_user, publish_date, on_time, off_time, created_user, created_time, updated_user, updated_time) VALUES (4, '熊王', '我是熊',5 , null, null, 1, 1, 'Y', 'ura', '2020-1-1 00:00:00', now(), null, 'adimn', now(), 'test', now());
INSERT INTO Armi.about_blog (id, title, sub_title, sort, link, contents, tag_id, image_id, enable, publish_user, publish_date, on_time, off_time, created_user, created_time, updated_user, updated_time) VALUES (5, '我是人資', '人資人資', 5, null, null, 2, 1, 'Y', '假思米', '2020-1-1 00:00:00', now(), null, 'test', now(), 'test',now());


INSERT INTO Armi.about_tags (id, tag, tag_en, enable, link, image_id, sort, created_user, created_time, updated_user, updated_time) VALUES (1, '技術分享', 'Development', 'Y', 'https://www.google.com.tw/',  6, 1, 'test', now(), 'test', now());
INSERT INTO Armi.about_tags (id, tag, tag_en, enable, link, image_id, sort, created_user, created_time, updated_user, updated_time) VALUES (2, '品牌設計', 'Brand Design', 'Y', 'https://www.facebook.com/',  4, 2, 'test', now(), 'test', now());
INSERT INTO Armi.about_tags (id, tag, tag_en, enable, link, image_id, sort, created_user, created_time, updated_user, updated_time) VALUES (3, '奧米動態', 'ArmiTech Daily', 'Y', 'https://www.facebook.com/',  5 , 3, 'test', now(), 'test', now());
INSERT INTO Armi.about_tags (id, tag, tag_en, enable, link, image_id, sort, created_user, created_time, updated_user, updated_time) VALUES (4, '人資相關', 'Human resources', 'N', 'https://www.facebook.com/',  1, 4, 'test', now(), 'test', now());

INSERT INTO Armi.contact_us (id, unit, contact_person, mobile, email, company_web_link, query_contents, from_where, created_user, created_time, updated_user, updated_time) VALUES (1, '台灣', '123', '0911211466', '123@gmail.com', '', '', '', 'test', now(), 'test',  now());
INSERT INTO Armi.contact_us (id, unit, contact_person, mobile, email, company_web_link, query_contents, from_where, created_user, created_time, updated_user, updated_time) VALUES (3, '', '', '', '', '', '', null, 'test', now(), 'test', now());
INSERT INTO Armi.contact_us (id, unit, contact_person, mobile, email, company_web_link, query_contents, from_where, created_user, created_time, updated_user, updated_time) VALUES (4, '1', '1', null, null, null, null, null, 'test', now(), 'test', now());
INSERT INTO Armi.contact_us (id, unit, contact_person, mobile, email, company_web_link, query_contents, from_where, created_user, created_time, updated_user, updated_time) VALUES (5, '台灣', '123', '0911211466', '123@gmail.com', '', '', '', 'test', now(), 'test', now());
INSERT INTO Armi.contact_us (id, unit, contact_person, mobile, email, company_web_link, query_contents, from_where, created_user, created_time, updated_user, updated_time) VALUES (6, '4', '1', '21', '1', '', '111', null, 'test', now(), 'test', now());
INSERT INTO Armi.contact_us (id, unit, contact_person, mobile, email, company_web_link, query_contents, from_where, created_user, created_time, updated_user, updated_time) VALUES (7, '1', '1', '1', '1', '', '1', null, 'test', now(), 'test', now());
INSERT INTO Armi.contact_us (id, unit, contact_person, mobile, email, company_web_link, query_contents, from_where, created_user, created_time, updated_user, updated_time) VALUES (8, '1', '1', '1', '1', '', '1', null, 'test', now(), 'test', now());
INSERT INTO Armi.contact_us (id, unit, contact_person, mobile, email, company_web_link, query_contents, from_where, created_user, created_time, updated_user, updated_time) VALUES (9, 'aa', 'sasd', 'weaf', 'wafwa@gmail.com', 'dfgdsg', 'dsgf', null, 'test', now(), 'test', now());

INSERT INTO Armi.about_us (id, lang, title, company_name, sub_title1, sub_title2, email, tele, google_map, facebook, youtube, address,  image_big_id, image_small_id, logo_id, profile_id,  contents1, contents2, contents3, contents4, logo, copyright, created_user, created_time, updated_user, updated_time) VALUES (1, 'zh-CN', '關於奧米科技', '奧米科技有限公司', '公司名稱主要由兩個英文單字所組成，分別是Army 與 Mimicry，將Mimicry前兩個字與Army的最後結合，得到了新的單字Armi', '想表達的意義是我們是猶如＂軍隊＂的作戰能力、具有＂擬態＂中學習適應環境的特性所組合而成的專業團隊，能夠帶給客戶的是高專業、高品質、多樣化的服務。', 'sales@twarmitech.com', '(02)2771-6472', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3614.7868270992008!2d121.54805681537877!3d25.041307444151688!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442abc56bb0a95f%3A0xd8b1d312bac4593!2zMTA25Y-w5YyX5biC5aSn5a6J5Y2A5b-g5a2d5p2x6Lev5Zub5q61MTYy6Jmf!5e0!3m2!1szh-TW!2stw!4v1601348550537!5m2!1szh-TW!2stw', null, null, '106台北市大安區忠孝東路四段162號12樓',  3, 1, 1, 1,  '奧米科技秉持著以人為本的精神，致力於提供專業技術服務，服務項目包含軟體專案開發、專案人員駐廠維護、自動化測試導入、系統維護升級、軟體人才教育訓練等，希望給予客戶最專業且有效率的技術解決方案，協助提升營運效率，並與客戶建立信賴關係，成為客戶永續合作夥伴。', '公司成員擁有著年輕、創新、專業的風格，希望所有加入奧米科技的成員們都能夠感受到技術交流與團隊合作的成就感，一起建立屬於自己的工作環境。', '<p>"以謙卑的姿態開始"</p>', '', null, '© 2020 ArmiTech. All Rights Reserved. Design by ArmiTech Ltd.', 'test', now(),  'test', now());
INSERT INTO Armi.about_us (id, lang, title, company_name, sub_title1, sub_title2, email, tele, google_map, facebook, youtube, address,  image_big_id, image_small_id, logo_id, profile_id,  contents1, contents2, contents3, contents4, logo, copyright, created_user, created_time, updated_user, updated_time) VALUES (2, 'en-US', 'About Armi', 'ArmiTech Ltd.', 'Armitech is combine by two words-Army and Mimicry, to express our specialist not only own combat ability as "Army"', ' but also acquired adaptive ability in "Mimicry". In order to bring our clients professional, high quality and varied services. Looking forward to confront this rapidly evolving technology environment with our clients, and strike forward hand in hand.','sales@twarmitech.com', '+886 2771-6472', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3614.7868270992008!2d121.54805681537877!3d25.041307444151688!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442abc56bb0a95f%3A0xd8b1d312bac4593!2zMTA25Y-w5YyX5biC5aSn5a6J5Y2A5b-g5a2d5p2x6Lev5Zub5q61MTYy6Jmf!5e0!3m2!1szh-TW!2stw!4v1601348550537!5m2!1szh-TW!2stw', null, null, '12F., No. 162, Sec. 4, Zhongxiao E. Rd., Da’an Dist., Taipei City 106, Taiwan',  3, 1, 1, 1,  'Armitech believes that humanity is the cornerstone of the development of technologies and we devote ourselves to providing professional technical services. Our services include Software Project Development, On-site Maintenance, Automated Testing Adaptation, System Maintenance and Upgrade, Personnel Training in Software Skills, and more. Armitech not only present to you the most professional and efficient technical solutions, but also enhance the performance of company operation. We look forward to establishing a mutual trust relationship with you, become your sustainable collaboration partner, and strive forward hand in hand.', 'Our crew handles every project rigorously, yet bringing in creativity and innovation at the same time. We hope every member that joined Armitech could learn through technological exchanges and gain sense of achievement via teamwork, together we could create an ideal working atmosphere.', '<p>"2019 Our Humble Beginnings"</p>', '', null, '© 2020 ArmiTech. All Rights Reserved. Design by ArmiTech Ltd.', 'test', now(),  'test', now());

INSERT INTO Armi.our_service_item (id, title, title_en, contents, contents_en, icon_id, type, enable, sort, created_user, created_time, updated_user, updated_time) VALUES (1, '軟體專案開發', 'Software Project Development', '公司團隊長期致力於資訊技術領域，能夠為企業帶來新技術的導入，並可以節省客戶人力支出成本，使資訊人員能專心致力於專業領域之中，公司團隊長期致力合作，讓彼此能夠互助互利', 'We have devoted ourselves to the field of Information Technology for years. We introduce new technologies to companies while saving human resources so that technicians could focus on their specialties. Let us establish a mutually beneficial relationship and achieve common progress.', 1, 'A', 'Y', 1,'test', now(), 'test', now());
INSERT INTO Armi.our_service_item (id, title, title_en, contents, contents_en, icon_id, type, enable, sort, created_user, created_time, updated_user, updated_time) VALUES (2, '技術移轉教育訓練', 'Technology Transfer Training', '教育訓練的主要目的，是為了提升員工既有技術應用的精益求精，以及學習新技術的持之以恆，公司提供完善的教育訓練系統，讓每位資訊人員能持續成長，提升團隊整體競爭力。', 'The purpose of training is to enhance the skills which employees already acquired, together building up their perseverance in mastering new technologies. Armitech provides a well-constructed training system which impels every co-worker to continuously improve themselves and thus raising team competitiveness.', 1, 'A', 'Y', 2, 'test', now(), 'test', now());
INSERT INTO Armi.our_service_item (id, title, title_en, contents, contents_en, icon_id, type, enable, sort, created_user, created_time, updated_user, updated_time) VALUES (3, '不單純把事情做好', 'Not only just do things right.', '以客戶的角度出發為客戶評估專案風險，考慮各種因素後提出問題的最佳解，讓服務滿意度向上提升。', 'Not only complete what clients ask for, but think from the perspective of you. We analysis risks from your point of view, provide the best solution after assessing all factors, and thus improve service satisfaction.', 1, 'B', 'Y', 3, 'test', now(), 'test', now());
INSERT INTO Armi.our_service_item (id, title, title_en, contents, contents_en, icon_id, type, enable, sort, created_user, created_time, updated_user, updated_time) VALUES (4, '專業的服務體驗', 'Professional service experience', '為客戶量身打造專案軟體規劃、導入領先業界技術、協助解決技術問題，給予多元化的資訊服務。 ', 'The most professional service experience, including customizing project software programme, adapting the latest technique, assisting technical problem solving, and more diversified services.', 1, 'B', 'Y', 4, 'test', now(), 'test', now());
INSERT INTO Armi.our_service_item (id, title, title_en, contents, contents_en, icon_id, type, enable, sort, created_user, created_time, updated_user, updated_time) VALUES (5, '媒合人力', 'Job agency', '替員工尋找合適的工作岡位，輔助成員職崖發展，創造客戶，員工，與公司三贏的商業模式。', 'To make best use of human resources, Armitech place employees in positions that suit they the most, supporting their career development. Hence, creating a business model that the client, our crew, and Armitech all could benefit from.', null, 'B', 'Y', 5, 'test', now(),'test', now());
INSERT INTO Armi.our_service_item (id, title, title_en, contents, contents_en, icon_id, type, enable, sort, created_user, created_time, updated_user, updated_time) VALUES (6, '系統維護', 'System Maintenance', '快速確實的了解客戶需求，透過團隊在業界長期開發與維護系統經驗，給予相對建議，並擬定維護管理計畫，完成客戶之需求。', 'We aim to understand the needs of clients authentically. Through our profound experiences in developing and maintaining systems, we not only provide suggestions according to different circumstances but also deliver maintenance and management plan in order to accomplish various requirements.', 1, 'A', 'Y', 6, 'test', now(), 'test', now());
INSERT INTO Armi.our_service_item (id, title, title_en, contents, contents_en, icon_id, type, enable, sort, created_user, created_time, updated_user, updated_time) VALUES (7, '專案人員駐廠維護', 'On-site Maintenance', '協助建立各種技術團隊，並因應專案時辰，調整團隊人員使用時間，達到減少招募、人事、教育訓練等成本消耗，使企業內部資源達到最有效率之規劃。', 'Armitech assist team building of any kinds of IT technicians as well as adjusting the usage of resources base on project schedule. Hence, we achieve saving costs on recruiting, personnel, and training, allowing clients to make the best use of internal resources.', 1, 'A', 'Y', 7, 'test', now(), 'test', now());

INSERT INTO Armi.our_service_info (id, title, sub_contents, contents, lang, image_id,   image_left_id, created_user, created_time, updated_user, updated_time) VALUES (1, '服務內容', '系統開發 / 品牌規劃 / 網頁設計 / 駐點人力', '除了滿足企業的系統開發、UIUX設計外，奧米科技同時能為品牌設計新形象，盡收圖像與文案的範疇，而對於同為具備專業技術的工程人才，亦有駐點人力的媒合服務，為企業打造最有效率的規劃。
', 'zh-CN', 3,  50, 'test', now(), 'test', now());
INSERT INTO Armi.our_service_info (id, title, sub_contents, contents, lang, image_id,   image_left_id, created_user, created_time, updated_user, updated_time) VALUES (2, 'Service', 'System Maintenance/Technology Transfer Training/On-site Maintenance', 'Automated testing provides clients an innovative method to enhance system quality, reduce development cost, and in the meanwhile, taking “speed” into account. In an era that is rapidly evolving and constantly changing, Armitech supports clients to develop strategies that are always ahead of others.', 'en-US', 3,  50,  'test', now(), 'test', now());

INSERT INTO Armi.page_info (id, parent_id, name, name_en, type, link, link_id, sort, area, enable, created_user, created_time, updated_user, updated_time) VALUES (1, 0, '關於我們', 'About', null, 'lang-PageAbout', null, 0, 'A', 'Y', 'test', now(), 'test', now());
INSERT INTO Armi.page_info (id, parent_id, name, name_en, type, link, link_id, sort, area, enable, created_user, created_time, updated_user, updated_time) VALUES (2, 0, '服務內容', 'Service', null, 'lang-PageService', null, 1, 'A', 'Y', 'test', now(), 'test', now());
INSERT INTO Armi.page_info (id, parent_id, name, name_en, type, link, link_id, sort, area, enable, created_user, created_time, updated_user, updated_time) VALUES (3, 0, '最新消息', 'News', null, 'lang-PageBlog', null, 2, 'A', 'N', 'test', now(),  'test', now());
INSERT INTO Armi.page_info (id, parent_id, name, name_en, type, link, link_id, sort, area, enable, created_user, created_time, updated_user, updated_time) VALUES (4, 0, '技術分享', 'News', null, 'lang-blog-BlogBrand', 1, 2, 'F', 'N', 'test', now(),  'test', now());
INSERT INTO Armi.page_info (id, parent_id, name, name_en, type, link, link_id, sort, area, enable, created_user, created_time, updated_user, updated_time) VALUES (5, 0, '企業徵才', 'Career', null, 'lang-PageRecruit', null, 3, 'A', 'Y', 'test', now(),  'test', now());
INSERT INTO Armi.page_info (id, parent_id, name, name_en, type, link, link_id, sort, area, enable, created_user, created_time, updated_user, updated_time) VALUES (6, 0, '聯絡我們', 'Contact', null, 'lang-PageContact', null, 4, 'A', 'Y', 'test', now(),  'test', now());
INSERT INTO Armi.page_info (id, parent_id, name, name_en, type, link, link_id, sort, area, enable, created_user, created_time, updated_user, updated_time) VALUES (7, 0, '品牌觀察', 'Designer Blog', null, 'lang-blog-BlogBrand', 2, 2, 'F', 'N', 'test', now(),  'test', now());
INSERT INTO Armi.page_info (id, parent_id, name, name_en, type, link, link_id, sort, area, enable, created_user, created_time, updated_user, updated_time) VALUES (8, 0, '奧米動態', 'ArmiTech Daily', null, 'lang-blog-BlogBrand', 3, 3, 'F', 'N', 'test', now(),  'test', now());

INSERT INTO Armi.recruitment_item (id, title, contents, link, type, sort, enable, created_user, created_time, updated_user, updated_time) VALUES (1, 'Java', '<p>※熟悉Java網頁實務開發技術</p><p>※熟悉Spring MVC/Spring Framework</p><p>※熟悉JavaScript、JQuery、Ajax等前端應用技術</p><p>※熟悉OOP/OOD應用理念</p><p>※具SVN/Git 或其他版控軟體使用經驗</p><p>※對業界流通之資料庫使用熟悉</p><p>※須配合公司專案需求至客戶端服務（大台北地區）</p>', 'https://www.104.com.tw/job/6ndmr?jobsource=company_job', 'A', 0, 'Y', 'test', now(), 'test', now());
INSERT INTO Armi.recruitment_item (id, title, contents, link, type, sort, enable, created_user, created_time, updated_user, updated_time) VALUES (2, '.Net', '<p>※熟悉.Net網頁實務開發技術 （.NET Framework 4.0以上）</p><p>※熟悉ASP.Net MVC 技術</p><p>※具.Net Core開發經驗佳</p><p>※熟悉JavaScript、JQuery、Ajex等前端應用技術</p><p>※具SVN/Github 或其他版控軟體使用經驗</p><p>※資料庫使用熟悉（Oracle、MSSQL、PosgresSQL、MongoDB...等其中一種）</p><p>※須配合公司專案需求至客戶端服務（大台北地區）</p>', 'https://www.104.com.tw/job/6ndpl?jobsource=company_job','A', 1, 'Y', 'test', now(), 'test', now());
INSERT INTO Armi.recruitment_item (id, title, contents, link, type, sort, enable, created_user, created_time, updated_user, updated_time) VALUES (3, 'Front-End', '<p>※熟悉前端網頁實務開發技術(HTML、Javascript、CSS)</p><p>※熟悉主流前端JS框架(Angular.js、React.js、Vue.js 擇一即可)</p><p>※具備跨平台、跨瀏覽器問題解決能力，RWD 相關開發經驗</p><p>※具SVN/Github 或其他版控軟體使用經驗</p><p>※須配合公司專案需求至客戶端服務（大台北地區）</p>', 'https://www.104.com.tw/job/6nnkl?jobsource=company_job','A', 2, 'Y', 'test', now(), 'test', now());
INSERT INTO Armi.recruitment_item (id, title, contents, link, type, sort, enable, created_user, created_time, updated_user, updated_time) VALUES (4, '助理', '<p>※2年以上IOS手機軟體開發經驗</p><p>※熟悉Swift 或 Objective-C手機實務開發技術</p><p>※對MVVM、MVC架構有概念</p><p>※具OOP/OOD應用理念</p><p>※具SVN/Github 或其他版控軟體使用經驗</p><p>※具資料庫使用經驗佳</p>', '','B', 0, 'N', 'test', now(), 'test', now());


INSERT INTO Armi.page_img (id, page_id,  image_id, created_user, created_time, updated_user, updated_time) VALUES (1, 1, 1, 'test',  now(), 'adimn',  now());

INSERT INTO Armi.portfolio_info (id, title, contents, lang, created_user, created_time, updated_user, updated_time) VALUES (1, '合作廠商', '瞬息萬變的資訊環境而不被市場淘汰，達到共同成長之目標。', 'zh-CN', 'test',  now(), null,  now());
INSERT INTO Armi.portfolio_info (id, title, contents, lang, created_user, created_time, updated_user, updated_time) VALUES (2, 'specialization', 'Looking forward to confront this rapidly evolving technology environment with our clients, and strike forward hand in hand.', 'en-US', null, now(), null,  now());

INSERT INTO Armi.recruitment_info (id, title, sub_title, contents, skill_contents, lang,  image_id, created_user, created_time, updated_user, updated_time) VALUES (1, '企業徵才', '最新職缺', '協助建立各種技術團隊，並因應專案時辰，調整團隊人員使用時間，達到減少招募、人事、教育訓練等成本消耗，使企業內部資源達到最有效率之規劃。', '<p>如果您熟悉</p><br><p>VB.Net網頁實務開發技術</p><p> Swift 或 Objective-C手機實務開發技術</p><p>.NetJava or kotlin手機實務開發技術</p><br><p>以下職缺請您參考</p>', 'zh-CN',  37, 'test', now(), 'test', now());
INSERT INTO Armi.recruitment_info (id, title, sub_title, contents, skill_contents, lang,  image_id, created_user, created_time, updated_user, updated_time) VALUES (2, 'Enterprise recruitment', 'New Job', 'Armitech assist team building of any kinds of IT technicians as well as adjusting the usage of resources base on project schedule. Hence, we achieve saving costs on recruiting, personnel, and training, allowing clients to make the best use of internal resources.', '<p>if you can</p><br><p>.java</p><p>.Net</p><p>.PHP</p><br><p>以下職缺</p>', 'en-US',  37, 'test', now(), 'test', now());

INSERT INTO Armi.portfolio_item (title, title_en,  image_id, logo_id, enable, sort, created_user, created_time, updated_user, updated_time) VALUES ('富邦金控', 'Fubon Financial',  43, 68, 'Y', 1, 'test',  now(), 'test',  now());
INSERT INTO Armi.portfolio_item (title, title_en,  image_id, logo_id, enable, sort, created_user, created_time, updated_user, updated_time) VALUES ('元大人壽', 'Yuanta Life', 49 , 73, 'Y', 2, 'test',  now(), 'test',  now());
INSERT INTO Armi.portfolio_item (title, title_en,  image_id, logo_id, enable, sort, created_user, created_time, updated_user, updated_time) VALUES ('台灣之星', 'T STAR', 48 , 72, 'Y', 3, 'test',  now(), 'test',  now());
INSERT INTO Armi.portfolio_item (title, title_en,  image_id, logo_id, enable, sort, created_user, created_time, updated_user, updated_time) VALUES ('中國信託', 'CTCB', 42 , 67, 'Y', 4, 'test',  now(), 'test',  now());
INSERT INTO Armi.portfolio_item (title, title_en,  image_id, logo_id, enable, sort, created_user, created_time, updated_user, updated_time) VALUES ('中華郵政', 'Chunghwa Post ', 41 , 66, 'Y', 5, 'test',  now(), 'test',  now());
INSERT INTO Armi.portfolio_item (title, title_en,  image_id, logo_id, enable, sort, created_user, created_time, updated_user, updated_time) VALUES ('宏碁資訊服務', 'Acer', 38 , 65, 'Y', 6, 'test',  now(), 'test',  now());
INSERT INTO Armi.portfolio_item (title, title_en,  image_id, logo_id, enable, sort, created_user, created_time, updated_user, updated_time) VALUES ('南山人壽', 'Nan Shan Life',  45, 70, 'Y', 7, 'test',  now(), 'test',  now());
INSERT INTO Armi.portfolio_item (title, title_en,  image_id, logo_id, enable, sort, created_user, created_time, updated_user, updated_time) VALUES ('勞保局', 'MOL', 44 , 69, 'Y', 8, 'test',  now(), 'test',  now());
INSERT INTO Armi.portfolio_item (title, title_en,  image_id, logo_id, enable, sort, created_user, created_time, updated_user, updated_time) VALUES ('統一資訊', 'PIC', 46 , 71, 'Y', 9, 'test',  now(), 'test',  now());
INSERT INTO Armi.portfolio_item (title, title_en,  image_id, logo_id, enable, sort, created_user, created_time, updated_user, updated_time) VALUES ('精誠資訊', 'SYSTEX', 47 , 75, 'Y', 10, 'test',  now(), 'test',  now());
INSERT INTO Armi.portfolio_item (title, title_en,  image_id, logo_id, enable, sort, created_user, created_time, updated_user, updated_time) VALUES ('前進國際', 'AdvancedTEK',  39, 74, 'Y', 11, 'test',  now(), 'test',  now());


INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (51,'JPG','Style-01.jpg','/blog',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (52,'JPG','Style-02.jpg','/blog',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (53,'JPG','Style-03.jpg','/blog',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (54,'JPG','Style-04.jpg','/blog',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (55,'JPG','Style-05.jpg','/blog',null,'test','test');

INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (56,'JPG','Brand-marketing-01.jpg','/blog',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (57,'JPG','Brand-marketing-02.jpg','/blog',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (58,'JPG','Brand-marketing-03.jpg','/blog',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (59,'JPG','Brand-marketing-04.jpg','/blog',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (60,'JPG','Brand-marketing-05.jpg','/blog',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (61,'JPG','Brand-marketing-banner.jpg','/blog',null,'test','test');

INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (62,'JPG','Korea-roast-banner.jpg','/blog',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (63,'JPG','Korea-roast-01.jpg','/blog',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (64,'JPG','Style-banner.jpg','/blog',null,'test','test');


INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (65,'PNG','Logo-Acer.png','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (66,'PNG','Logo-ChunghwaPost.png','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (67,'PNG','Logo-CTCB.png','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (68,'PNG','Logo-FubonFinancial.png','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (69,'PNG','Logo-MOL.png','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (70,'PNG','Logo-NanShanLife.png','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (71,'PNG','Logo-PIC.png','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (72,'PNG','Logo-Tstar.png','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (73,'PNG','Logo-YuantaLife.png','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (74,'PNG','Logo-AdvancedTEK.png','/portfolioItem',null,'test','test');
INSERT INTO Armi.file_resource (id, type, name, path, category_id,  created_user,  updated_user) VALUES (75,'PNG','Logo-systex.png','/portfolioItem',null,'test','test');

INSERT INTO Armi.about_blog (id, title, sub_title, sort, link, contents, tag_id, image_id, enable, publish_user, publish_date, on_time, off_time, created_user, created_time, updated_user, updated_time) VALUES
(6, '松菸風格職人市集-蘵人style', '參觀城市裡不同的空氣', 1, null,
 '<p><span style="font-size:20px">認識各式藝術和設計，是奧米科技的日常之一，今天到松菸參觀城市裡不同的空氣 &mdash;&nbsp;<strong>蘵人style</strong></span></p>

<p><span style="font-size:20px">這個「&nbsp;<strong>蘵</strong>」字讓我們好奇，根據部首很容易猜到是小花或小草，深入了解是設計師必要的好習慣，讀音為「ㄓ」，是指一種花小而白、中心為黃色的草。我們針對策展者的心理猜想與模擬，大概是結合松菸廠的某段歷史和植物的相關性吧。</span></p>

<p>&nbsp;</p>

<p><span style="font-size:20px"><a href="https://www.songshanculturalpark.org/ExhibitionList.aspx?kind=0&amp;type=3"><img alt="" src="http://198.13.36.120:8080/api/resource/file/blog/Style-01.jpg" style="padding-bottom:32px; padding-top:32px; width:100%" title="圖片來自松菸" /></a></span></p>

<hr />
<p><span style="font-size:20px">詳讀介紹後，原來今年首度開放菸廠醫護室作為展區，並且讓22個以植物為題材的品牌參與，這個模式利用關聯性、同個主軸共襄盛舉，主視覺的藍晒圖風格、搭配著亮黃線條，讓主角的樣貌成為「植物科學」的感受，廠區工作人員也都穿上實驗白袍。</span></p>

<hr />
<p><span style="font-size:20px"><strong>讓我們公司的設計師示範photoshop製作藍晒圖：</strong></span></p>

<ul>
	<li><span style="font-size:20px">將圖片變成黑白</span></li>
	<li><span style="font-size:20px">利用曲線、亮度/對比，將黑與白調整更明顯</span></li>
	<li><span style="font-size:20px">以加深、加亮工具再次將畫面變為「純黑」、「純白」</span></li>
	<li><span style="font-size:20px">可用illustrator畫張以#004a84為藍色的格子圖，拉進photoshop</span></li>
	<li><span style="font-size:20px">將處理好的黑白景物圖片拉到藍色底圖之「上」，Ctrl+I負片，讓背景為黑色、主要建築成為白色</span></li>
	<li><span style="font-size:20px">建築物圖層的混和模式改「濾色」，完成</span></li>
</ul>

<p><span style="font-size:20px"><img alt="" src="http://198.13.36.120:8080/api/resource/file/blog/Style-02.jpg" style="padding-bottom:32px; padding-top:32px; width:100%" /></span></p>

<hr />
<p><span style="font-size:20px">見到一個空間有熟悉的風格作品，曾經在「迷誠品」看到一篇關於<a href="https://meet.eslite.com/tw/tc/article/201811300001" rel="noopener nofollow"><strong>「花狂・狂花」</strong></a>的報導，講述著創辦人Ally Wang不單單將「花」定位於花店，而是擬人似地重現新的舞動姿態。</span></p>

<p><span style="font-size:20px"><img alt="" src="http://198.13.36.120:8080/api/resource/file/blog/Style-03.jpg" style="padding-bottom:32px; padding-top:32px; width:100%" /></span></p>

<hr />
<p><span style="font-size:20px">文案人看它像首詩、設計師看來像一種與空間和諧、平衡的畫面、攝影師看來是芭蕾舞者，匯集多對眼睛的意見交流，我想我們因此總是給客戶不一樣的感受，讓他們也真實參與到設計流程中。</span></p>

<hr />
<p><span style="font-size:20px">視覺是前鋒，需要牽動其他的感官，我們後來到了一條微窄的空間遇到木質，每個格子裡的氣味熟悉地像漫遊在台灣各個旅遊景點，或是某一帖難忘的中藥味。</span></p>

<p><span style="font-size:20px"><img alt="" src="http://198.13.36.120:8080/api/resource/file/blog/Style-04.jpg" style="padding-bottom:32px; padding-top:32px; width:100%" /></span></p>

<hr />
<p><span style="font-size:20px">感受完大自然的景物、消化完帶來的靈感，放眼看「商業」吧，那是更上一層、另一個思維，就像這間參展的品牌，將植物完美、有限的生命化成作品，讓人們能夠擁有。小心翼翼將花草、古籍、手寫字搭配在一起。</span></p>

<p><span style="font-size:20px"><img alt="" src="http://198.13.36.120:8080/api/resource/file/blog/Style-05.jpg" style="padding-bottom:32px; padding-top:32px; width:100%" /></span></p>

<hr />
<p><span style="font-size:20px">我們樂於分享專業技術、經營生活片刻的文字，熱中於將各公司品牌的美好轉化為行銷的力量。</span></p>

<p>&nbsp;</p>

'
 , 1, 64, 'Y', '品牌設計師', '2020-10-21 10:11:47', now(), null, 'test', now(), 'test',now());


-- 文章範例
INSERT INTO Armi.about_blog (id, title, sub_title, sort, link, contents, tag_id, image_id, enable, publish_user, publish_date, on_time, off_time, created_user, created_time, updated_user, updated_time) VALUES
(7, '品牌行銷 速寫松菸', '集結周圍不同的專長，創造新的空間和創意、發展新的話題和主題', 1, null,
 '<p><span style="font-size:20px">品牌餐飲、美妝、服飾、配件等，集結周圍不同的專長，創造新的空間和創意、發展新的話題和主題，百花齊放成就一場活動、一個平台，或是一個產品，小倉庫裡匯集咖啡、甜點、剛好來到這裡的訪客，還有特別來參訪的奧米科技品牌行銷部。</span></p>

<p><span style="font-size:20px">來去參觀「<a href="https://www.songshanculturalpark.org/Exhibition.aspx?ID=16d45830-a6d9-4f14-bef3-449e2be6c96d" rel="noopener nofollow">隨類賦彩，速寫松菸</a>」!</span></p>

<p><span style="font-size:20px"><img alt="" src="http://198.13.36.120:8080/api/resource/file/blog/Brand-marketing-01.jpg" style="padding-bottom:32px; padding-top:32px; width:100%" /></span></p>

<p>&nbsp;</p>

<hr />
<p><span style="font-size:20px">一部分的人認為攝影是種藝術，而我們認為是紀錄；</span></p>

<p><span style="font-size:20px">一部分的人覺得插畫是複製實景的才藝，而我們覺得那是<strong>「重新詮釋」</strong>，也因此我們能夠想起，一些品牌在後來的發展中，多出一支不一樣的風格、但仍遵守品牌本身精神的插畫，給消費者新感受。</span></p>

<p><span style="font-size:20px"><img alt="" src="http://198.13.36.120:8080/api/resource/file/blog/Brand-marketing-02.jpg" style="padding-bottom:32px; padding-top:32px; width:100%" /></span></p>

<p><span style="font-size:20px">同一個實物在不同位插畫家的眼中，會有不同的色調、氣場，構成差異很大的風格。奧米科技旗下擁有多位合作插畫家，能夠滿足不同的客戶需求。品牌端當然是最了解自身產品的人，但我們可以提供專業的面相與客戶討論，行銷本身就是多方知識的總和，其中足夠的數據和分析以及案例，絕對能襄助客戶達成更上一層的期待。</span></p>

<hr />
<p>&nbsp;</p>

<p><span style="font-size:20px"><img alt="" src="http://198.13.36.120:8080/api/resource/file/blog/Brand-marketing-03.jpg" style="padding-bottom:32px; padding-top:32px; width:100%" /></span></p>

<hr />
<p><span style="font-size:20px">收集身邊的商業案例是設計師的習慣，例如這款義美的餅乾盒，是和瑞典陶藝家Lisa Larson的作品。89歲的她仍保持每天創作，溫暖童趣的的風格，我覺得特別適合「義美」這樣陪大家一起成長的食品，關鍵字是回憶、溫暖、陽光。</span></p>

<p>&nbsp;</p>

<p><span style="font-size:20px">展區雖然不大，但涵蓋商品、創意、歷史、人文，盡收眼底的氛圍營造就是當今文創的重點，也是行銷或廣告裡針對目標persona所刻意設計的，引導這些預設的客群「自動」、「默默」前來。</span></p>

<p>&nbsp;</p>

<p><span style="font-size:20px"><img alt="" src="http://198.13.36.120:8080/api/resource/file/blog/Brand-marketing-04.jpg" style="padding-bottom:32px; padding-top:32px; width:100%" /></span></p>

<p><span style="font-size:20px"><img alt="" src="http://198.13.36.120:8080/api/resource/file/blog/Brand-marketing-05.jpg" style="padding-bottom:32px; padding-top:32px; width:100%" /></span></p>

<p><span style="font-size:20px">離開松菸小賣所前，我們插畫家簽個名。</span></p>
'
 , 2, 61, 'Y', '品牌設計師', '2020-10-23 10:11:47', now(), null, 'test', now(), 'test',now());



INSERT INTO Armi.about_blog (id, title, sub_title, sort, link, contents, tag_id, image_id, enable, publish_user, publish_date, on_time, off_time, created_user, created_time, updated_user, updated_time) VALUES
(8, '啾哇嘿喲 韓國菜單', '讓作品有辦法抬起食品、用品本身的層級，實現「品牌」的意義', 2, null,
 '<p><span style="font-size:20px">韓式燒烤店林立北市，腦海裡的印象是黑色的鍋具、鮮橘色看來辣得食慾大開的泡菜、大片又豪邁的肉品和杯緣掛著水珠的韓國Cass啤酒。<br />
很幸運我們能夠幫「啾哇嘿喲」重新設計菜單，客戶希望能在既有、已有累積與成長、且有相當口碑的燒烤店中，擁有「新」的風格和調性。</span></p>

<p>&nbsp;</p>

<p><span style="font-size:20px">當同個品項給予人都有相似的印象時，品牌端想別於他人的訴求裡，我們力求回歸到產品本身的價值和大器大口地「暢快吃」。創造一個新的品牌固然需要龐大的心思和討論，而讓不同團隊「延伸」這個品牌就是另一項截然不同且具有挑戰的工作。</span></p>

<p>&nbsp;</p>

<hr />
<p>&nbsp;</p>

<p><span style="font-size:20px">我們看到原本的菜單，發現前一版的風格偏向於俏皮、整齊、顏色較多元、像極了清單。奧米科技公司的設計師會要求具備一些特質&mdash;&mdash;</span></p>

<ul>
	<li><span style="font-size:20px">為客戶整理資料的能力</span></li>
	<li><span style="font-size:20px">化繁為簡，視覺見到的字、圖片，必須「系出同門」</span></li>
	<li><span style="font-size:20px">了解產品本質對於TA的關鍵字</span></li>
	<li><span style="font-size:20px">任何的用色請考慮色彩心理</span></li>
	<li><span style="font-size:20px">強調品牌本身給予人們的印象</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-size:20px">噢，我們從不對他人使用嚴格的詞彙，而是團隊依循趨勢、共識，讓作品有辦法抬起食品、用品本身的層級，實現「品牌」的意義。</span></p>

<hr />
<p>&nbsp;</p>

<p><span style="font-size:20px">根據原本的設計，我們調整了以下幾點：</span></p>

<ul>
	<li><span style="font-size:20px">飽和度與對比恰到好處地調整，食物本身就是要「讓人很想吃」</span></li>
	<li><span style="font-size:20px">鏡頭聚焦，畫面必然有輕、重之分</span></li>
	<li><span style="font-size:20px">文字分出「主要資訊」與「修飾資訊」，順應人類接收資訊的先後，能更有條理地傳遞訊息</span></li>
	<li><span style="font-size:20px">配角永不搶主角，但在它的位置上十足發揮</span></li>
	<li><span style="font-size:20px">延伸品牌，而不「外力增加」多出來的顏色</span></li>
</ul>

<p>&nbsp;</p>

<hr />
<p>&nbsp;</p>

<p><span style="font-size:20px"><img alt="" src="http://198.13.36.120:8080/api/resource/file/blog/Korea-roast-01.jpg" style="padding-bottom:32px; padding-top:32px; width:100%" /></span></p>

<p><span style="font-size:20px">非常榮幸能參與這回啾哇嘿喲的菜單設計，我們希望給來店的客人「沒有壓力」的閱讀、清楚輕鬆地了解店家特色，並且感受到這家店給予的桌邊服務和特色餐點。</span></p>

<p><span style="font-size:20px">希望更多擁有設計夢想、或是想要有所改變的品牌，能多與我們交流!</span></p>
'
 , 2, 63, 'Y', '品牌設計師', '2020-10-19 10:11:47', now(), null, 'test', now(), 'test',now());



-- ===============================================
-- 後台功能

-- 檔案管理
Insert into file_resource_temp
SELECT id, type, name, path, category_id, created_time, created_user, updated_time, updated_user
FROM file_resource ;

-- 關於我們
Insert into about_us_temp
SELECT id, lang, title, sub_title1, sub_title2, company_name, email, tele, google_map, facebook, youtube, instagram, copyright, address, logo_id, profile_id, image_big_id, image_small_id, contents1, contents2, contents3, contents4, logo, created_user, created_time, updated_user, updated_time, 'D'
FROM about_us ;

-- 檔案 path 設定
update file_resource_temp set path = 'temp' where 1=1;
update file_resource set path = 'formal' where 1=1;





















