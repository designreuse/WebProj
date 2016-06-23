INSERT INTO `questforchef`.`Roles` (`roleName`) VALUES ('Admin');
INSERT INTO `questforchef`.`Roles` (`roleName`) VALUES ('Regular user');
INSERT INTO `questforchef`.`Roles` (`roleName`) VALUES ('Cook');
INSERT INTO `questforchef`.`Roles` (`roleName`) VALUES ('Barman');
INSERT INTO `questforchef`.`Roles` (`roleName`) VALUES ('Manager');
INSERT INTO `questforchef`.`Roles` (`roleName`) VALUES ('Bidder');
INSERT INTO `questforchef`.`Roles` (`roleName`) VALUES ('Waiter');
INSERT INTO `questforchef`.`Menu` (`id`) VALUES ('1');
INSERT INTO `questforchef`.`Vine_card` (`id`) VALUES ('1');
INSERT INTO `questforchef`.`Users` (`email`, `enabled`, `firstName`, `lastName`, `password`, `tokenExpired`, `role_id`) VALUES ('milosa942@gmail.com', 1, 'Milos', 'Andric', 'pass', 1, '2');
INSERT INTO `questforchef`.`Users` (`email`, `enabled`, `firstName`, `lastName`, `password`, `tokenExpired`, `role_id`) VALUES ('miloso@gmail.com', 1, 'Milos', 'Obradovic', 'pass', 1, '1');
INSERT INTO `questforchef`.`Users` (`email`, `enabled`, `firstName`, `lastName`, `password`, `tokenExpired`, `role_id`) VALUES ('micko@gmail.com', 1, 'Micko', 'Mickovic', 'pass', 1, '6');
INSERT INTO `questforchef`.`Users` (`email`, `enabled`, `firstName`, `lastName`, `password`, `tokenExpired`, `role_id`) VALUES ('waiter@gmail.com', 1, 'Iks', 'Ipsilonovic', 'pass', 1, '7');
INSERT INTO `questforchef`.`Users` (`email`, `enabled`, `firstName`, `lastName`, `password`, `tokenExpired`, `role_id`) VALUES ('mladen@gmail.com', 1, 'Mladen', 'Doslic', 'pass', 1, '5');
INSERT INTO `questforchef`.`Restaurants` (`address`, `desription`, `email`, `name`, `phone`, `open_hours`, `rate`,`city`,`reon_num`,`menu_id`,`vine_card_id`) VALUES ('Momcila Tapavice 18',     'Cl reduct malar/zygo fx', 'hgarrett3@ed.gov',   'Twitternation', '380-(257)526-4752', '09-21h','4','Novi Sad','4','1','1');
INSERT INTO `questforchef`.`Restaurants` (`address`, `desription`, `email`, `name`, `phone`, `open_hours`, `rate`,`city`,`reon_num`,`menu_id`,`vine_card_id`) VALUES ('Tihomira Ostojica 4',     'Local excis rectal les',  'mwoods4@mozilla.com','Brightbean',    '348-(881)503-7377', '08-20h', '5','Novi Sad','4','1','1');
INSERT INTO `questforchef`.`Restaurants` (`address`, `desription`, `email`, `name`, `phone`, `open_hours`, `rate`,`city`,`reon_num`,`menu_id`,`vine_card_id`) VALUES ('06427 Waxwing Place',     'Ovarian biopsy NEC',      'lday1@japanpost.jp', 'Meevee',        '355-(119)203-3363', '08-20h', '5','Novi Sad','4','1','1');
INSERT INTO `questforchef`.`Restaurants` (`address`, `desription`, `email`, `name`, `phone`, `open_hours`, `rate`,`city`,`reon_num`,`menu_id`,`vine_card_id`) VALUES ('99140 Doe Crossing Lane', 'resacral sympathectomy',  'wwells2@phpbb.com',  'Meembee',       '351-(108)619-6647', '08-20h', '4', 'Novi Sad','5','1','1');
INSERT INTO `questforchef`.`Restaurants` (`address`, `desription`, `email`, `name`, `phone`, `open_hours`, `rate`,`city`,`reon_num`,`menu_id`,`vine_card_id`) VALUES ('9025 Sutteridge Street',  'Cl reduct malar/zygo fx', 'hgarrett3@ed.gov',   'Twitternation', '380-(257)526-4752', '08-20h', '4', 'Novi Sad','5','1','1');
INSERT INTO `questforchef`.`Staff` (`birth_date`, `con_num`, `email`, `firstName`, `lastName`, `password`, `shoe_num`, `restaurant_id`, `role_id`, `picture_path`) VALUES ('1994-11-11', 'XL', 'mladen@gmail.com', 'Mladen', 'Doslic', 'pass', '42', '1', '5', 'a1.jpg');
INSERT INTO `questforchef`.`Staff` (`birth_date`,`email`, `firstName`, `lastName`, `password`, `shoe_num`, `restaurant_id`, `role_id`,`con_num`, `picture_path`) VALUES ('1994-11-11','pera@gmail.com', 'Pera', 'Peric', 'pass', '34', '2', '5','L', 'a2.jpg');
INSERT INTO `questforchef`.`Staff` (`birth_date`,`email`, `firstName`, `lastName`, `password`, `shoe_num`, `restaurant_id`, `role_id`,`con_num`, `picture_path`) VALUES ('1994-09-22','ivan@gmail.com', 'Ivana', 'Ivanovic', 'pass', '34', '1', '7','L', 'a3.jpg');
INSERT INTO `questforchef`.`Staff` (`birth_date`,`email`, `firstName`, `lastName`, `password`, `shoe_num`, `restaurant_id`, `role_id`,`con_num`, `picture_path`) VALUES ('1993-09-22','mika@gmail.com', 'Miki', 'Mikic', 'pass', '42', '1', '4','XL', 'a4.jpg');
INSERT INTO `questforchef`.`Staff` (`birth_date`,`email`, `firstName`, `lastName`, `password`, `shoe_num`, `restaurant_id`, `role_id`,`con_num`, `picture_path`) VALUES ('1994-09-22','jova@gmail.com', 'Jovana', 'Jovic', 'pass', '34', '1', '7','L', 'a5.jpg');
INSERT INTO `questforchef`.`Staff` (`birth_date`,`email`, `firstName`, `lastName`, `password`, `shoe_num`, `restaurant_id`, `role_id`,`con_num`, `picture_path`) VALUES ('1994-09-22','tomica@gmail.com', 'Toma', 'Tomic', 'pass', '42', '2', '4','XL', 'a6.jpg');
UPDATE `questforchef`.`Staff` SET `con_num`='cc' WHERE `id`='2';
INSERT INTO `questforchef`.`Friends` (`terminal_friend`, `starter_friend`) VALUES ('3', '1');
INSERT INTO `questforchef`.`Friends` (`terminal_friend`, `starter_friend`) VALUES ('1', '3');

INSERT INTO `questforchef`.`Shift` (`shift_entry`, `start_shift`, `end_shift`, `restaurant_id`) VALUES ('First', '07:00:00', '14:00:00', '1');
INSERT INTO `questforchef`.`Shift` (`shift_entry`, `start_shift`, `end_shift`, `restaurant_id`) VALUES ('Second', '14:00:00', '22:00:00', '1');
INSERT INTO `questforchef`.`Shift` (`shift_entry`, `start_shift`, `end_shift`, `restaurant_id`) VALUES ('First', '08:00:00', '15:00:00', '2');
INSERT INTO `questforchef`.`Shift` (`shift_entry`, `start_shift`, `end_shift`, `restaurant_id`) VALUES ('Second', '15:00:00', '23:00:00', '2');
INSERT INTO `questforchef`.`Shift` (`shift_entry`, `start_shift`, `end_shift`, `restaurant_id`) VALUES ('Third', '23:00:00', '08:00:00', '2');
INSERT INTO `questforchef`.`Shift_schedule` (`shift_date`, `shift_entry`) VALUES ('2016-05-20', 'First');
INSERT INTO `questforchef`.`Shift_schedule` (`shift_date`, `shift_entry`) VALUES ('2016-05-21', 'Second');
INSERT INTO `questforchef`.`Shift_schedule` (`shift_date`, `shift_entry`) VALUES ('2016-05-22', 'First');
INSERT INTO `questforchef`.`Shift_schedule` (`shift_date`, `shift_entry`) VALUES ('2016-05-23', 'Second');
INSERT INTO `questforchef`.`Shift_schedule` (`shift_date`, `shift_entry`) VALUES ('2016-05-24', 'First');
INSERT INTO `questforchef`.`Shift_schedule` (`shift_date`, `shift_entry`) VALUES ('2016-05-25', 'Second');
INSERT INTO `questforchef`.`Shift_schedule` (`shift_date`, `shift_entry`) VALUES ('2016-05-26', 'First');
INSERT INTO `questforchef`.`Shift_schedule_staff` (`staff_id`, `shift_schedule_id`) VALUES ('3', '5');
INSERT INTO `questforchef`.`Shift_schedule_staff` (`staff_id`, `shift_schedule_id`) VALUES ('5', '1');
INSERT INTO `questforchef`.`Shift_schedule_staff` (`staff_id`, `shift_schedule_id`) VALUES ('3', '4');
INSERT INTO `questforchef`.`Shift_schedule_staff` (`staff_id`, `shift_schedule_id`) VALUES ('5', '3');
INSERT INTO `questforchef`.`Shift_schedule_staff` (`staff_id`, `shift_schedule_id`) VALUES ('4', '4');
INSERT INTO `questforchef`.`Shift_schedule_staff` (`staff_id`, `shift_schedule_id`) VALUES ('5', '6');
INSERT INTO `questforchef`.`Reon` (`reon_num`, `restaurant_id`) VALUES ('1', '1');
INSERT INTO `questforchef`.`Reon` (`reon_num`, `restaurant_id`) VALUES ('2', '1');
INSERT INTO `questforchef`.`Reon` (`reon_num`, `restaurant_id`) VALUES ('3', '1');
INSERT INTO `questforchef`.`Reon` (`reon_num`, `restaurant_id`) VALUES ('4', '1');
INSERT INTO `questforchef`.`Reon` (`reon_num`, `restaurant_id`) VALUES ('1', '2');
INSERT INTO `questforchef`.`Reon` (`reon_num`, `restaurant_id`) VALUES ('2', '2');
INSERT INTO `questforchef`.`Reon` (`reon_num`, `restaurant_id`) VALUES ('3', '2');
INSERT INTO `questforchef`.`Reon` (`reon_num`, `restaurant_id`) VALUES ('4', '2');


INSERT INTO `questforchef`.`tableposition` (`col`, `row`, `size_x`, `size_y`) VALUES ('1', '1', '1', '1');
INSERT INTO `questforchef`.`tableposition` (`col`, `row`, `size_x`, `size_y`) VALUES ('2', '1', '1', '1');
INSERT INTO `questforchef`.`tableposition` (`col`, `row`, `size_x`, `size_y`) VALUES ('1', '2', '1', '1');
INSERT INTO `questforchef`.`tableposition` (`col`, `row`, `size_x`, `size_y`) VALUES ('2', '2', '1', '1');

INSERT INTO `questforchef`.`TableOne` (`guest_num`, `reserved`, `reon_id`,`tableposition_id`) VALUES ('3', '0', '1','1');
INSERT INTO `questforchef`.`TableOne` (`guest_num`, `reserved`, `reon_id`,`tableposition_id`) VALUES ('5', '0', '1','2');
INSERT INTO `questforchef`.`TableOne` (`guest_num`, `reserved`, `reon_id`,`tableposition_id`) VALUES ('2', '0', '1','3');
INSERT INTO `questforchef`.`TableOne` (`guest_num`, `reserved`, `reon_id`,`tableposition_id`) VALUES ('4', '0', '2','4');

INSERT INTO `questforchef`.`Table_schedule` (`date`, `reserved_from`, `reserved_to`, `table_id`) VALUES ('1993-09-22 00:00:00', '12:00:00', '14:00:00', '3');
INSERT INTO `questforchef`.`Table_schedule` (`date`, `reserved_from`, `reserved_to`, `table_id`) VALUES ('1993-09-22 00:00:00', '15:00:00', '18:00:00', '2');
INSERT INTO `questforchef`.`Table_schedule` (`date`, `reserved_from`, `reserved_to`, `table_id`) VALUES ('1993-09-22 00:00:00', '6:00:00', '8:00:00', '1');

INSERT INTO `questforchef`.`Main_course` (`name`, `picture_path`, `price`) VALUES ('Slanina', 'img14.jpg', '500');
INSERT INTO `questforchef`.`Main_course` (`name`, `picture_path`, `price`) VALUES ('Snicla', 'img15.jpg', '600');
INSERT INTO `questforchef`.`Main_course` (`name`, `picture_path`, `price`) VALUES ('Pasta', 'img11.jpg', '500');
INSERT INTO `questforchef`.`Desert` (`name`, `picture_path`, `price`) VALUES ('dezert1', 'img11.jpg', '50');
INSERT INTO `questforchef`.`Desert` (`name`, `picture_path`, `price`) VALUES ('dezert2', 'img12.jpg', '70');
INSERT INTO `questforchef`.`Appetizer` (`name`, `picture_path`, `price`) VALUES ('app1', 'img14.jpg', '100');
INSERT INTO `questforchef`.`Appetizer` (`name`, `picture_path`, `price`) VALUES ('app2', 'img15.jpg', '110');
INSERT INTO `questforchef`.`Alcoholic_drink` (`name`, `picture_path`, `price`, `quantity`) VALUES ('Smirnoff', 'imgD12.jpg', '100', '1l');
INSERT INTO `questforchef`.`NonAlcoholic_drink` (`name`, `picture_path`, `price`, `quantity`) VALUES ('Coffe', 'imgD1.jpg', '50', '50ml');

INSERT INTO `questforchef`.`Maincourse_menu` (`menu_id`, `maincourse_id`) VALUES ('1', '3');
INSERT INTO `questforchef`.`Maincourse_menu` (`menu_id`, `maincourse_id`) VALUES ('1', '1');
INSERT INTO `questforchef`.`Maincourse_menu` (`menu_id`, `maincourse_id`) VALUES ('1', '2');
INSERT INTO `questforchef`.`Desert_menu` (`menu_id`, `desert_id`) VALUES ('1', '1');
INSERT INTO `questforchef`.`Desert_menu` (`menu_id`, `desert_id`) VALUES ('1', '2');
INSERT INTO `questforchef`.`Appetizer_menu` (`menu_id`, `appetizer_id`) VALUES ('1', '1');
INSERT INTO `questforchef`.`Appetizer_menu` (`menu_id`, `appetizer_id`) VALUES ('1', '2');

INSERT INTO `questforchef`.`Vine_card_nonAlcoholic` (`vine_card_id`, `nonalcoholic_id`) VALUES ('1', '1');
INSERT INTO `questforchef`.`Vine_card_alcoholic` (`vine_card_id`, `alcoholic_id`) VALUES ('1', '1');

INSERT INTO `questforchef`.`fooditem` (`name`, `type`) VALUES ('Batak', 'kg');
INSERT INTO `questforchef`.`fooditem` (`name`, `type`) VALUES ('Pavlaka', 'g');
INSERT INTO `questforchef`.`fooditem` (`name`, `type`) VALUES ('So', 'g');
INSERT INTO `questforchef`.`fooditem` (`name`, `type`) VALUES ('Vino', 'l');
INSERT INTO `questforchef`.`fooditem` (`name`, `type`) VALUES ('Sir', 'kg');
INSERT INTO `questforchef`.`fooditem` (`name`, `type`) VALUES ('Krompir', 'kg');
INSERT INTO `questforchef`.`fooditem` (`name`, `type`) VALUES ('Ulje', 'l');

INSERT INTO `questforchef`.`grocary_list` (`GLfrom`, `GLto`, `restaurant_id`) VALUES ('2016-06-12', '2016-06-24', '1');
INSERT INTO `questforchef`.`grocary_list` (`GLfrom`, `GLto`, `restaurant_id`) VALUES ('2016-05-12', '2016-06-02', '1');

INSERT INTO `questforchef`.`food_list_item` (`quantity`, `fooditem_id`, `grocaryList_id`) VALUES ('2', '1', '1');
INSERT INTO `questforchef`.`food_list_item` (`quantity`, `fooditem_id`, `grocaryList_id`) VALUES ('3', '2', '1');
INSERT INTO `questforchef`.`food_list_item` (`quantity`, `fooditem_id`, `grocaryList_id`) VALUES ('1', '3', '1');
INSERT INTO `questforchef`.`food_list_item` (`quantity`, `fooditem_id`, `grocaryList_id`) VALUES ('4', '4', '1');
INSERT INTO `questforchef`.`food_list_item` (`quantity`, `fooditem_id`, `grocaryList_id`) VALUES ('3', '5', '1');
INSERT INTO `questforchef`.`food_list_item` (`quantity`, `fooditem_id`, `grocaryList_id`) VALUES ('5', '6', '1');

INSERT INTO `questforchef`.`Users` (`email`, `enabled`, `firstName`, `lastName`, `password`, `tokenExpired`, `role_id`) VALUES ('zika@gmail.com', 1, 'Zika', 'Zikic', 'pass', 1, '6');
INSERT INTO `questforchef`.`offer` (`accepted`, `deadline`, `price`, `warranty`, `grocaryList_id`, `user_id`) VALUES ('1', '2016-06-25', '400', '90', '1', '3');
INSERT INTO `questforchef`.`offer` (`accepted`, `deadline`, `price`, `warranty`, `grocaryList_id`, `user_id`) VALUES ('2', '2016-06-25', '600', '90', '2', '3');
INSERT INTO `questforchef`.`offer` (`accepted`, `deadline`, `price`, `warranty`, `grocaryList_id`, `user_id`) VALUES ('0', '2016-06-25', '1400', '90', '1', '6');
INSERT INTO `questforchef`.`offer` (`accepted`, `deadline`, `price`, `warranty`, `grocaryList_id`, `user_id`) VALUES ('2', '2016-06-25', '1400', '90', '2', '6');
INSERT INTO `questforchef`.`Staff` (`birth_date`,`email`, `firstName`, `lastName`, `password`, `shoe_num`, `restaurant_id`, `role_id`,`con_num`, `picture_path`) VALUES ('1994-09-22','kiki@gmail.com', 'Kiki', 'Kikic', 'pass', '42', '1', '7','XL', 'a6.jpg');

INSERT INTO `questforchef`.`reontypes` (`name`) VALUES ('Basta');
INSERT INTO `questforchef`.`reontypes` (`name`) VALUES ('Pusacki');
INSERT INTO `questforchef`.`reontypes` (`name`) VALUES ('Ne pusacki');
INSERT INTO `questforchef`.`reontypes` (`name`) VALUES ('Vip');

INSERT INTO `questforchef`.`reontypes_reon` (`reonType_id`, `reon_id`) VALUES ('1', '1');
INSERT INTO `questforchef`.`reontypes_reon` (`reonType_id`, `reon_id`) VALUES ('2', '2');
INSERT INTO `questforchef`.`reontypes_reon` (`reonType_id`, `reon_id`) VALUES ('3', '3');
INSERT INTO `questforchef`.`reontypes_reon` (`reonType_id`, `reon_id`) VALUES ('4', '4');
INSERT INTO `questforchef`.`reontypes_reon` (`reonType_id`, `reon_id`) VALUES ('1', '5');
INSERT INTO `questforchef`.`reontypes_reon` (`reonType_id`, `reon_id`) VALUES ('2', '6');
INSERT INTO `questforchef`.`reontypes_reon` (`reonType_id`, `reon_id`) VALUES ('3', '7');
INSERT INTO `questforchef`.`reontypes_reon` (`reonType_id`, `reon_id`) VALUES ('4', '8');
