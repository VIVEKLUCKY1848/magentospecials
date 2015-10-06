-- Delete All Products and reset their relations
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE `catalog_product_bundle_option`;
TRUNCATE TABLE `catalog_product_bundle_option_value`;
TRUNCATE TABLE `catalog_product_bundle_selection`;
TRUNCATE TABLE `catalog_product_entity_datetime`;
TRUNCATE TABLE `catalog_product_entity_decimal`;
TRUNCATE TABLE `catalog_product_entity_gallery`;
TRUNCATE TABLE `catalog_product_entity_int`;
TRUNCATE TABLE `catalog_product_entity_media_gallery`;
TRUNCATE TABLE `catalog_product_entity_media_gallery_value`;
TRUNCATE TABLE `catalog_product_entity_text`;
TRUNCATE TABLE `catalog_product_entity_tier_price`;
TRUNCATE TABLE `catalog_product_entity_varchar`;
TRUNCATE TABLE `catalog_product_link`;
TRUNCATE TABLE `catalog_product_link_attribute`;
TRUNCATE TABLE `catalog_product_link_attribute_decimal`;
TRUNCATE TABLE `catalog_product_link_attribute_int`;
TRUNCATE TABLE `catalog_product_link_attribute_varchar`;
TRUNCATE TABLE `catalog_product_link_type`;
TRUNCATE TABLE `catalog_product_option`;
TRUNCATE TABLE `catalog_product_option_price`;
TRUNCATE TABLE `catalog_product_option_title`;
TRUNCATE TABLE `catalog_product_option_type_price`;
TRUNCATE TABLE `catalog_product_option_type_title`;
TRUNCATE TABLE `catalog_product_option_type_value`;
TRUNCATE TABLE `catalog_product_super_attribute`;
TRUNCATE TABLE `catalog_product_super_attribute_label`;
TRUNCATE TABLE `catalog_product_super_attribute_pricing`;
TRUNCATE TABLE `catalog_product_super_link`;
TRUNCATE TABLE `catalog_product_enabled_index`;
TRUNCATE TABLE `catalog_product_website`;
TRUNCATE TABLE `catalog_product_entity`;
TRUNCATE TABLE `cataloginventory_stock`;
TRUNCATE TABLE `cataloginventory_stock_item`;
TRUNCATE TABLE `cataloginventory_stock_status`;
TRUNCATE TABLE `catalog_category_product`;
TRUNCATE TABLE `catalog_category_product_index`;
TRUNCATE TABLE `catalog_product_relation`;
INSERT INTO `catalog_product_link_type` VALUES(1, 'relation');
INSERT INTO `catalog_product_link_type` VALUES(3, 'super');
INSERT INTO `catalog_product_link_type` VALUES(4, 'up_sell');
INSERT INTO `catalog_product_link_type` VALUES(5, 'cross_sell');
INSERT INTO `catalog_product_link_attribute` VALUES(1, 1, 'position', 'int');
INSERT INTO `catalog_product_link_attribute` VALUES(2, 3, 'position', 'int');
INSERT INTO `catalog_product_link_attribute` VALUES(3, 3, 'qty', 'decimal');
INSERT INTO `catalog_product_link_attribute` VALUES(4, 4, 'position', 'int');
INSERT INTO `catalog_product_link_attribute` VALUES(5, 5, 'position', 'int');
INSERT INTO `cataloginventory_stock` VALUES(1, 'Default');
SET FOREIGN_KEY_CHECKS = 1;

-- Delete all categories and set Root Category default values
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE `catalog_category_entity`;
TRUNCATE TABLE `catalog_category_entity_datetime`;
TRUNCATE TABLE `catalog_category_entity_decimal`;
TRUNCATE TABLE `catalog_category_entity_int`;
TRUNCATE TABLE `catalog_category_entity_text`;
TRUNCATE TABLE `catalog_category_entity_varchar`;
TRUNCATE TABLE `catalog_category_product`;
TRUNCATE TABLE `catalog_category_product_index`;
  
INSERT INTO `catalog_category_entity`
  (`entity_id`,`entity_type_id`,`attribute_set_id`,`parent_id`,`created_at`,`updated_at`,`path`,`POSITION`,`level`,`children_count`) 
VALUES 
  (1,3,0,0,'0000-00-00 00:00:00','2009-02-20 00:25:34','1',1,0,1),
  (2,3,3,0,'2009-02-20 00:25:34','2009-02-20 00:25:34','1/2',1,1,0);
 
INSERT INTO `catalog_category_entity_int`
  (`value_id`,`entity_type_id`,`attribute_id`,`store_id`,`entity_id`,`value`) 
VALUES 
  (1,3,32,0,2,1),
  (2,3,32,1,2,1);
 
INSERT INTO `catalog_category_entity_varchar`
  (`value_id`,`entity_type_id`,`attribute_id`,`store_id`,`entity_id`,`value`) 
VALUES 
  (1,3,31,0,1,'Root Catalog'),
  (2,3,33,0,1,'root-catalog'),
  (3,3,31,0,2,'Default Category'),
  (4,3,39,0,2,'PRODUCTS'),
  (5,3,33,0,2,'default-category');
SET FOREIGN_KEY_CHECKS = 1;
