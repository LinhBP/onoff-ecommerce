/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : PostgreSQL
 Source Server Version : 140008
 Source Host           : localhost:5432
 Source Catalog        : bpl_jf
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140008
 File Encoding         : 65001

 Date: 15/09/2023 09:59:43
*/


-- ----------------------------
-- Sequence structure for bill_billid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bill_billid_seq";
CREATE SEQUENCE "public"."bill_billid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for billdetail_billdetailid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."billdetail_billdetailid_seq";
CREATE SEQUENCE "public"."billdetail_billdetailid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for customer_customerid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."customer_customerid_seq";
CREATE SEQUENCE "public"."customer_customerid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for related_image_shoes_related_image_shoesid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."related_image_shoes_related_image_shoesid_seq";
CREATE SEQUENCE "public"."related_image_shoes_related_image_shoesid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for shoes_shoesid_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."shoes_shoesid_seq";
CREATE SEQUENCE "public"."shoes_shoesid_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS "public"."bill";
CREATE TABLE "public"."bill" (
  "billid" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "customerid" int4,
  "date" date,
  "totalprice" numeric(10,2)
)
;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO "public"."bill" OVERRIDING SYSTEM VALUE VALUES (1, 1, '2023-09-14', 129.94);
INSERT INTO "public"."bill" OVERRIDING SYSTEM VALUE VALUES (2, 1, '2023-09-14', 129.94);
INSERT INTO "public"."bill" OVERRIDING SYSTEM VALUE VALUES (3, 1, '2023-09-14', 359.94);
INSERT INTO "public"."bill" OVERRIDING SYSTEM VALUE VALUES (4, 1, '2023-09-14', 140.00);
INSERT INTO "public"."bill" OVERRIDING SYSTEM VALUE VALUES (5, 1, '2023-09-14', 140.00);
INSERT INTO "public"."bill" OVERRIDING SYSTEM VALUE VALUES (6, 1, '2023-09-14', 140.00);
INSERT INTO "public"."bill" OVERRIDING SYSTEM VALUE VALUES (7, 1, '2023-09-14', 180.00);
INSERT INTO "public"."bill" OVERRIDING SYSTEM VALUE VALUES (8, 1, '2023-09-14', 180.00);
INSERT INTO "public"."bill" OVERRIDING SYSTEM VALUE VALUES (9, 1, '2023-09-14', 180.00);
INSERT INTO "public"."bill" OVERRIDING SYSTEM VALUE VALUES (10, 1, '2023-09-14', 180.00);
INSERT INTO "public"."bill" OVERRIDING SYSTEM VALUE VALUES (11, 1, '2023-09-14', 110.00);
INSERT INTO "public"."bill" OVERRIDING SYSTEM VALUE VALUES (12, 1, '2023-09-14', 280.00);
INSERT INTO "public"."bill" OVERRIDING SYSTEM VALUE VALUES (13, 1, '2023-09-14', 230.00);

-- ----------------------------
-- Table structure for billdetail
-- ----------------------------
DROP TABLE IF EXISTS "public"."billdetail";
CREATE TABLE "public"."billdetail" (
  "billdetailid" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "billid" int4 NOT NULL,
  "shoesid" int4 NOT NULL,
  "price" numeric(10,2),
  "quantity" int4
)
;

-- ----------------------------
-- Records of billdetail
-- ----------------------------

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS "public"."customer";
CREATE TABLE "public"."customer" (
  "customerid" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "name" varchar(40) COLLATE "pg_catalog"."default",
  "age" int4,
  "gender" varchar(10) COLLATE "pg_catalog"."default",
  "tel" varchar(15) COLLATE "pg_catalog"."default",
  "email" varchar(40) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO "public"."customer" OVERRIDING SYSTEM VALUE VALUES (1, 'bpl', 20, 'female', '03332232', 'linh.bpl@gmail.com');

-- ----------------------------
-- Table structure for related_image_shoes
-- ----------------------------
DROP TABLE IF EXISTS "public"."related_image_shoes";
CREATE TABLE "public"."related_image_shoes" (
  "related_image_shoesid" int4 NOT NULL DEFAULT nextval('related_image_shoes_related_image_shoesid_seq'::regclass),
  "shoesid" int4 NOT NULL,
  "image" varchar(300) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of related_image_shoes
-- ----------------------------
INSERT INTO "public"."related_image_shoes" VALUES (341, 69, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/bdbed338-76cb-413e-8453-5a222a33dd7e/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (342, 69, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f7741640-0220-4e86-b578-6cde8c650883/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (343, 69, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ac871484-8738-44cf-abbd-4d347ad536e9/revolution-6-flyease-easy-on-off-road-running-shoes-XvR99K.png');
INSERT INTO "public"."related_image_shoes" VALUES (344, 69, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/a7812f46-f0e1-4df0-b0f3-ceb5dc0a41cc/nikecourt-zoom-lite-3-hard-court-tennis-shoes-rzcXmR.png');
INSERT INTO "public"."related_image_shoes" VALUES (345, 69, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2013f0ed-4157-43b5-8fc0-3517e41b4fdc/venture-runner-shoe-mT8r8R.png');
INSERT INTO "public"."related_image_shoes" VALUES (346, 69, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/3ca0e8ff-9564-46b0-a808-072cc0e8053a/sb-force-58-skate-shoe-HNFTvl.png');
INSERT INTO "public"."related_image_shoes" VALUES (347, 69, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/9f9655ed-92ba-4f35-9e92-3c27c47181bf/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (348, 69, 'https://static.nike.com/a/images/t_default/26dd42ea-4c98-455e-ab53-e74db2fb1de2/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (349, 69, 'https://static.nike.com/a/images/t_default/26dd42ea-4c98-455e-ab53-e74db2fb1de2/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (350, 70, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ac52595a-4691-4479-b526-93c184ecdd05/air-jordan-1-mid-se-shoes-CF3K5m.png');
INSERT INTO "public"."related_image_shoes" VALUES (351, 70, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/a536c5d1-0913-4244-adc7-308c5a4acdac/air-jordan-1-mid-se-shoes-CF3K5m.png');
INSERT INTO "public"."related_image_shoes" VALUES (352, 70, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/a8df5ceb-e2e1-47be-a39f-5ef7f0fff8e2/air-jordan-1-mid-se-shoes-CF3K5m.png');
INSERT INTO "public"."related_image_shoes" VALUES (353, 70, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/86e6a11d-b2bb-4109-bc53-b48d2fe4fdf1/air-jordan-1-mid-se-shoes-CF3K5m.png');
INSERT INTO "public"."related_image_shoes" VALUES (354, 70, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/72bbdfa1-bd6c-4bea-8f91-8389cec81ed6/air-jordan-1-mid-se-shoes-CF3K5m.png');
INSERT INTO "public"."related_image_shoes" VALUES (355, 70, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/6b3e1f5d-7050-4b94-a09e-de327104face/air-jordan-1-mid-se-shoes-CF3K5m.png');
INSERT INTO "public"."related_image_shoes" VALUES (356, 70, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e67a5524-3307-4624-8529-3f2e77facca5/air-jordan-1-mid-se-shoes-CF3K5m.png');
INSERT INTO "public"."related_image_shoes" VALUES (357, 70, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/03bb2d97-d50d-4f18-bdd0-24a40ae545e9/air-jordan-1-mid-se-shoes-CF3K5m.png');
INSERT INTO "public"."related_image_shoes" VALUES (358, 70, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ed71f213-14a5-4d5e-a0d8-1416208566b8/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (359, 70, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/cef1c1e1-8e83-4a1c-9202-8c60bd221a76/air-jordan-1-mid-se-craft-shoes-RmP7J6.png');
INSERT INTO "public"."related_image_shoes" VALUES (360, 70, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d9248042-a711-4441-80bb-d566b0835c40/air-jordan-1-mid-se-shoes-tKS2kt.png');
INSERT INTO "public"."related_image_shoes" VALUES (361, 70, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b7fd9018-e0ce-4adc-9320-a05b67eef078/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (362, 70, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e20f7d6b-77f8-4a99-99e2-b2a2cb69de46/air-jordan-1-mid-se-craft-shoes-RmP7J6.png');
INSERT INTO "public"."related_image_shoes" VALUES (363, 70, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ac62e931-9110-46ff-87fb-3824bbee4f25/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (364, 70, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/8ba3216b-1961-453e-9407-685cd6b3360d/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (365, 70, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0e761e04-0e37-4190-9c20-881ba03dbe71/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (366, 70, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/3bf68179-df2c-41b2-98e4-d969f831e26f/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (367, 70, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/f8f7c9f1-36f7-4138-aae3-94aba28321fa/jumpman-mvp-shoes-JV1HCs.png');
INSERT INTO "public"."related_image_shoes" VALUES (368, 70, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (369, 70, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7ecf3545-54b9-494d-9a93-d51e406b1053/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (505, 76, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/729671f7-d6a2-4940-a7ad-7a2f304785e9/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (271, 67, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/24a6df82-48b0-4707-9df8-394ec8b36bf9/infinityrn-4-se-road-running-shoes-STv3Zz.png');
INSERT INTO "public"."related_image_shoes" VALUES (272, 67, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/dddbcd1c-783c-45f5-8f11-6bb999be90e8/infinityrn-4-se-road-running-shoes-STv3Zz.png');
INSERT INTO "public"."related_image_shoes" VALUES (273, 67, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/1dc41cdc-3280-487a-a04f-67e7fdb70ba8/infinityrn-4-se-road-running-shoes-STv3Zz.png');
INSERT INTO "public"."related_image_shoes" VALUES (274, 67, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/6a73d9b6-ff96-415a-898e-2c95584c5c96/infinityrn-4-se-road-running-shoes-STv3Zz.png');
INSERT INTO "public"."related_image_shoes" VALUES (275, 67, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/8cce6a70-b74d-4157-8c3d-f9f73305fb72/infinityrn-4-se-road-running-shoes-STv3Zz.png');
INSERT INTO "public"."related_image_shoes" VALUES (276, 67, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/02ed0f14-4575-4697-8cd7-bf9f3cc796da/infinityrn-4-se-road-running-shoes-STv3Zz.png');
INSERT INTO "public"."related_image_shoes" VALUES (277, 67, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/52189364-ae75-450e-833e-de07a4bb241b/infinityrn-4-se-road-running-shoes-STv3Zz.png');
INSERT INTO "public"."related_image_shoes" VALUES (278, 67, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/815b1627-8c98-43ca-8147-ddd21bf01e68/infinityrn-4-se-road-running-shoes-STv3Zz.png');
INSERT INTO "public"."related_image_shoes" VALUES (279, 67, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_8/9bc1f029-41cf-4c84-8f47-583b232482cf/infinityrn-4-se-road-running-shoes-STv3Zz.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (280, 67, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/133d8e36-a9d2-4171-8fd3-6eabf13c483b/infinityrn-4-se-road-running-shoes-STv3Zz.png');
INSERT INTO "public"."related_image_shoes" VALUES (281, 67, 'https://static.nike.com/nike-prod-cld/images/t_PDP_144_v1/f_auto/static/en_gb-DYO/DYO.png');
INSERT INTO "public"."related_image_shoes" VALUES (282, 67, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ed45ceac-1a49-450c-a71d-3ffedbb376d0/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (283, 67, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/fb5ad585-ec9c-4ab6-ab6f-b0b6b50235a4/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (284, 67, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/fe9c5dfd-36b2-4039-9bea-c53ab9bfe5b8/react-infinity-3-road-running-shoes-mMGgGZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (285, 67, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/4e04c39c-70ee-40ef-a3eb-651d59bf7fe6/infinityrn-4-road-running-shoes-9fcndR.png');
INSERT INTO "public"."related_image_shoes" VALUES (286, 67, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/1daa9309-9233-4c1d-b177-8fde9cf81f63/invincible-3-road-running-shoes-Wwmmlp.png');
INSERT INTO "public"."related_image_shoes" VALUES (287, 67, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/d231b9bd-2fef-4503-b743-f3c8a6fe2cf3/react-infinity-3-road-running-shoes-919kdc.png');
INSERT INTO "public"."related_image_shoes" VALUES (288, 67, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/b2930d94-38ed-4033-9176-f6a9c11dc281/invincible-3-se-road-running-shoes-bZFrzG.png');
INSERT INTO "public"."related_image_shoes" VALUES (289, 67, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/5ad342e8-cc72-46c4-8ea6-9df1e76eaeb2/invincible-3-road-running-shoes-Wwmmlp.png');
INSERT INTO "public"."related_image_shoes" VALUES (290, 67, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/332f7c6e-daf5-4a8c-94fa-49db6399d133/streakfly-road-racing-shoes-V17qZm.png');
INSERT INTO "public"."related_image_shoes" VALUES (291, 67, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6a0ec91e-e95c-46bd-967d-8fc92cda9e7b/ultrafly-trail-running-shoes-4DRfrN.png');
INSERT INTO "public"."related_image_shoes" VALUES (292, 67, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/255fea9c-ca01-4291-b0dc-3952b3a009d3/infinityrn-4-road-running-shoes-9fcndR.png');
INSERT INTO "public"."related_image_shoes" VALUES (293, 67, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/04c3a599-cfc7-40de-9ad2-b5a9242d2ddd/zoom-fly-5-road-running-shoes-lkx7Zp.png');
INSERT INTO "public"."related_image_shoes" VALUES (294, 67, 'https://static.nike.com/a/images/t_default/133d8e36-a9d2-4171-8fd3-6eabf13c483b/infinityrn-4-se-road-running-shoes-STv3Zz.png');
INSERT INTO "public"."related_image_shoes" VALUES (295, 67, 'https://static.nike.com/a/images/t_default/133d8e36-a9d2-4171-8fd3-6eabf13c483b/infinityrn-4-se-road-running-shoes-STv3Zz.png');
INSERT INTO "public"."related_image_shoes" VALUES (296, 68, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/bd294664-d21a-4b39-86a9-0ee269e51513/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (297, 68, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/069b8be6-0228-4807-8ef8-9e2f6fc38e74/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (298, 68, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7165d149-66e9-49cb-a8a4-1dca02fd8d01/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (299, 68, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/a48c0256-aca5-4b73-863c-c54de23f55a3/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (300, 68, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/a4a14f46-9bda-4a69-9a17-08193b011ff5/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (301, 68, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/03e85400-7520-43f9-b799-a4376000e26c/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (302, 68, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/f1855a0d-74b4-4412-933b-242df509b66b/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (303, 68, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/887fde59-5a7a-4080-993c-a62295c3e0cd/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (304, 68, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0e761e04-0e37-4190-9c20-881ba03dbe71/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (305, 68, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7ecf3545-54b9-494d-9a93-d51e406b1053/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (306, 68, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/07e9374b-eaae-488d-a014-be7116476e96/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (307, 68, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/10eb998b-33ba-4f4d-9613-006e7bbdf1f7/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (308, 68, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7ecf3545-54b9-494d-9a93-d51e406b1053/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (624, 81, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/922139e1-3221-4e96-a9f9-3fbb67926e17/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (309, 68, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/8ba3216b-1961-453e-9407-685cd6b3360d/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (310, 68, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/030bc0e1-869b-4751-b2fe-a85c78393831/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (311, 68, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/3bf68179-df2c-41b2-98e4-d969f831e26f/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (312, 68, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/xumpf96hthdwq5b5siyl/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (313, 68, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7cdde65a-3f30-45a1-92bd-05b2e7b41677/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (314, 68, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/619223ad-3916-4143-9568-d5ba663a5fe0/air-jordan-1-mid-se-shoes-CF3K5m.png');
INSERT INTO "public"."related_image_shoes" VALUES (315, 68, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/f8f7c9f1-36f7-4138-aae3-94aba28321fa/jumpman-mvp-shoes-JV1HCs.png');
INSERT INTO "public"."related_image_shoes" VALUES (316, 68, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (317, 68, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/d91889a4-7369-47bd-b012-b1042aefbc9a/air-max-pulse-shoes-QShhG8.png');
INSERT INTO "public"."related_image_shoes" VALUES (318, 68, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/0ee119e9-fdf8-491f-97d1-9f4fc9151b84/air-max-90-shoes-kRsBnD.png');
INSERT INTO "public"."related_image_shoes" VALUES (319, 68, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ac62e931-9110-46ff-87fb-3824bbee4f25/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (320, 68, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0e761e04-0e37-4190-9c20-881ba03dbe71/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (321, 68, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0e761e04-0e37-4190-9c20-881ba03dbe71/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (322, 69, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/53716222-2341-477c-b508-80909e3b0d67/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (323, 69, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/c8a59f92-93ed-4585-991e-2bb07fb10ef2/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (324, 69, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/3cfea17f-b63f-42c8-a3c5-d1d84afb9527/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (325, 69, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e8183a05-3422-41d7-b246-ee97230a286a/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (326, 69, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/1b2c34a3-67c2-46ae-8bc6-64e12ee702eb/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (327, 69, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/853da6b1-f584-4e77-8353-bc55873839bf/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (328, 69, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/cdaa1e62-ba76-4b51-900f-ff5f2616786a/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (329, 69, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/ed67b312-2ac6-43b3-bfad-807fc70f3a4d/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (330, 69, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/a5fff660-8465-49a8-ab6b-2cbb68762a56/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (331, 69, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f2406a30-8bd3-4526-9872-85e920d4021c/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (625, 81, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/aaac8e7b-b62e-4023-9844-7ac4a0577f0a/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (166, 61, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/b7d9211c-26e7-431a-ac24-b0540fb3c00f/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (167, 61, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/00375837-849f-4f17-ba24-d201d27be49b/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (168, 61, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/3cc96f43-47b6-43cb-951d-d8f73bb2f912/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (169, 61, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/33533fe2-1157-4001-896e-1803b30659c8/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (170, 61, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/a0a300da-2e16-4483-ba64-9815cf0598ac/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (171, 61, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/82aa97ed-98bf-4b6f-9d0b-31a9f907077b/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (172, 61, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/120a31b0-efa7-41c7-9a84-87b1e56ab9c3/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (173, 61, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/1c1e5f55-99c2-4522-b398-2352e01ba566/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (174, 61, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_2.25/d58e9afa-e042-497c-917d-d625c432b72b/air-force-1-07-shoes-WrLlWX.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (175, 61, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (176, 61, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/21d38052-598b-44f6-a857-123c9f72b015/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (177, 61, 'https://static.nike.com/nike-prod-cld/images/t_PDP_144_v1/f_auto/static/en_gb-DYO/DYO.png');
INSERT INTO "public"."related_image_shoes" VALUES (178, 61, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/21d38052-598b-44f6-a857-123c9f72b015/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (179, 61, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e777c881-5b62-4250-92a6-362967f54cca/air-force-1-07-shoe-NMmm1B.png');
INSERT INTO "public"."related_image_shoes" VALUES (180, 61, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/a42a5d53-2f99-4e78-a081-9d07a2d0774a/air-force-1-07-shoe-HWWX9W.png');
INSERT INTO "public"."related_image_shoes" VALUES (181, 61, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/d9f1d9ee-a848-4a36-aab9-48b241078ebb/air-force-1-le-older-shoe-TDGHCN.png');
INSERT INTO "public"."related_image_shoes" VALUES (182, 61, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/c6d9d042-f0b9-46a3-bd1f-04e16541a1d9/air-force-1-07-next-nature-shoes-cg65FM.png');
INSERT INTO "public"."related_image_shoes" VALUES (183, 61, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/l3w4varugbogihcpj40e/air-force-1-shadow-shoes-mN8Glx.png');
INSERT INTO "public"."related_image_shoes" VALUES (184, 61, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ba26a81a-9557-442e-927c-82675cc79f50/force-1-le-younger-shoe-rg3gD7.png');
INSERT INTO "public"."related_image_shoes" VALUES (185, 61, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/389b709e-5102-4e55-aa5d-07099b500831/blazer-mid-77-vintage-shoes-dNWPTj.png');
INSERT INTO "public"."related_image_shoes" VALUES (186, 61, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/91f481e7-5887-454a-8d04-c485c70052fe/air-force-1-pltaform-shoes-pwWPHX.png');
INSERT INTO "public"."related_image_shoes" VALUES (187, 61, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/5fe30fc4-2645-4d1e-b3f8-70da145e0f74/air-max-97-shoes-EBZrb8.png');
INSERT INTO "public"."related_image_shoes" VALUES (188, 61, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/bhwrvokud9flh34cchb8/air-max-90-shoes-mnCmVT.png');
INSERT INTO "public"."related_image_shoes" VALUES (189, 61, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/235ac5d0-14fa-4372-a821-a4c0d95e5426/court-vision-low-next-nature-shoes-p3CnbT.png');
INSERT INTO "public"."related_image_shoes" VALUES (190, 61, 'https://static.nike.com/a/images/t_default/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (191, 61, 'https://static.nike.com/a/images/t_default/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (192, 62, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e01eb9e0-ddc1-48bf-a516-bcbd40c78e39/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (193, 62, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/0d7d542a-b96f-4cec-8c83-879aac197b5f/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (194, 62, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/14959e3c-421c-4d3c-a5ac-52464858803a/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (195, 62, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/bd0c40da-c010-4ff3-b0b5-1e2e33eadf42/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (196, 62, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f3c28b3b-665e-45c2-86e9-2d86cd7120e2/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (197, 62, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/96926c59-2cf9-4312-a6f0-96a68c884907/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (198, 62, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/3e24ae39-39d4-4c8c-9f52-f1b5f702f4a5/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (199, 62, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f81fdd0a-06cb-47f0-9c46-ed66a73005cf/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (200, 62, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_3.3/6b43a1a2-63c8-445c-b453-1f4ae1f00d81/infinityrn-4-road-running-shoes-mLRjcz.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (201, 62, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/ed45ceac-1a49-450c-a71d-3ffedbb376d0/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (202, 62, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/71a3d324-05c0-4b8d-9d78-0bd937520798/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (203, 62, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/c8ef1729-4fb5-466f-a378-51ede49aa5f3/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (204, 62, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/fb5ad585-ec9c-4ab6-ab6f-b0b6b50235a4/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (205, 62, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/083db8cd-ef0f-4fbb-9fbf-9da0be98f802/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (206, 62, 'https://static.nike.com/nike-prod-cld/images/t_PDP_144_v1/f_auto/static/en_gb-DYO/DYO.png');
INSERT INTO "public"."related_image_shoes" VALUES (207, 62, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/fb5ad585-ec9c-4ab6-ab6f-b0b6b50235a4/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (208, 62, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/c8ef1729-4fb5-466f-a378-51ede49aa5f3/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (209, 62, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/133d8e36-a9d2-4171-8fd3-6eabf13c483b/infinityrn-4-se-road-running-shoes-STv3Zz.png');
INSERT INTO "public"."related_image_shoes" VALUES (210, 62, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/4e04c39c-70ee-40ef-a3eb-651d59bf7fe6/infinityrn-4-road-running-shoes-9fcndR.png');
INSERT INTO "public"."related_image_shoes" VALUES (211, 62, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/1daa9309-9233-4c1d-b177-8fde9cf81f63/invincible-3-road-running-shoes-Wwmmlp.png');
INSERT INTO "public"."related_image_shoes" VALUES (212, 62, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/fe9c5dfd-36b2-4039-9bea-c53ab9bfe5b8/react-infinity-3-road-running-shoes-mMGgGZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (213, 62, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/04c3a599-cfc7-40de-9ad2-b5a9242d2ddd/zoom-fly-5-road-running-shoes-lkx7Zp.png');
INSERT INTO "public"."related_image_shoes" VALUES (214, 62, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/d231b9bd-2fef-4503-b743-f3c8a6fe2cf3/react-infinity-3-road-running-shoes-919kdc.png');
INSERT INTO "public"."related_image_shoes" VALUES (215, 62, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/388d1fa1-5921-4181-9bf2-f37defd99521/free-rn-nn-road-running-shoes-D64TzS.png');
INSERT INTO "public"."related_image_shoes" VALUES (216, 62, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6a0ec91e-e95c-46bd-967d-8fc92cda9e7b/ultrafly-trail-running-shoes-4DRfrN.png');
INSERT INTO "public"."related_image_shoes" VALUES (217, 62, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/b2930d94-38ed-4033-9176-f6a9c11dc281/invincible-3-se-road-running-shoes-bZFrzG.png');
INSERT INTO "public"."related_image_shoes" VALUES (218, 62, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f07c8068-3696-4127-ad95-f7d9f71b21e4/zoom-fly-5-road-running-shoes-lkx7Zp.png');
INSERT INTO "public"."related_image_shoes" VALUES (219, 62, 'https://static.nike.com/a/images/t_default/ed45ceac-1a49-450c-a71d-3ffedbb376d0/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (220, 62, 'https://static.nike.com/a/images/t_default/ed45ceac-1a49-450c-a71d-3ffedbb376d0/infinityrn-4-road-running-shoes-mLRjcz.png');
INSERT INTO "public"."related_image_shoes" VALUES (332, 69, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_0/83361eb5-2eea-475f-818c-9d183a4e2890/waffle-debut-shoes-JRWJk7.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (333, 69, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/bb540ff0-2bd2-4a86-a162-96092cebcac9/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (334, 69, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/26dd42ea-4c98-455e-ab53-e74db2fb1de2/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (335, 69, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/8e5f7c67-2f7a-436c-9743-2dc481a41f1a/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (336, 69, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/bb540ff0-2bd2-4a86-a162-96092cebcac9/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (337, 69, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/i1-2e7cf08f-9eba-4420-9402-e472c3d6782d/venture-runner-shoe-mT8r8R.png');
INSERT INTO "public"."related_image_shoes" VALUES (338, 69, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/090fd678-b38d-4f5b-b3d6-b6900116865b/waffle-debut-shoes-hbBJtw.png');
INSERT INTO "public"."related_image_shoes" VALUES (339, 69, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/c4b5a2cb-5fbf-4ad6-bfc9-348eb9b9b15d/waffle-debut-shoes-hbBJtw.png');
INSERT INTO "public"."related_image_shoes" VALUES (340, 69, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (370, 70, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/619223ad-3916-4143-9568-d5ba663a5fe0/air-jordan-1-mid-se-shoes-CF3K5m.png');
INSERT INTO "public"."related_image_shoes" VALUES (371, 70, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/619223ad-3916-4143-9568-d5ba663a5fe0/air-jordan-1-mid-se-shoes-CF3K5m.png');
INSERT INTO "public"."related_image_shoes" VALUES (372, 71, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/f2ff3b94-82fa-4fd2-97a7-72851b73ebfe/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (373, 71, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/6c219c83-c443-4328-9c86-21078736a95f/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (374, 71, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/5727b57b-ff61-4975-957a-2f1533baf4ad/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (375, 71, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d6f93d27-dfb6-4436-be16-fd15e3ffe5f0/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (376, 71, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/35457464-9d84-4769-9560-02c61cbbfa9e/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (377, 71, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d4451dc8-5075-4ff7-9e23-19339ebeff42/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (378, 71, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/6675bc4a-c71b-4267-941a-60a19fe773e4/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (379, 71, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/9485ddff-ed8e-4d5a-a909-72d0d6749ac2/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (380, 71, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/4e9138d9-278f-48b1-851c-f4e51dbb4ee9/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (381, 71, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ed71f213-14a5-4d5e-a0d8-1416208566b8/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (382, 71, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0068f7a7-6789-4750-b05a-350f80e0684c/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (383, 71, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/2fd7f3e8-b092-421b-9ca1-fbe92a586aa5/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (384, 71, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/c3dead19-8a8f-42b7-8de7-d56cc9d8550f/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (385, 71, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/95c756c8-638d-4dc7-a8ed-1bf11654c71c/alphafly-2-eliud-kipchoge-road-racing-shoes-3LZ8Nj.png');
INSERT INTO "public"."related_image_shoes" VALUES (386, 71, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6925b9cc-7fa2-411c-b291-153490f4cbed/paris-saint-germain-club-football-unstructured-cap-D1kNVf.png');
INSERT INTO "public"."related_image_shoes" VALUES (387, 71, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d9248042-a711-4441-80bb-d566b0835c40/air-jordan-1-mid-se-shoes-tKS2kt.png');
INSERT INTO "public"."related_image_shoes" VALUES (388, 71, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f605198b-2631-4c3f-a91c-9f0be74444ba/apex-acg-bucket-hat-SzBh47.png');
INSERT INTO "public"."related_image_shoes" VALUES (389, 71, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e3d0c449-a732-4b11-9430-c80fd3cbf2fd/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (390, 71, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/01be12c8-801c-4c09-abb8-8d2920aa1f6f/windrunner-repel-running-jacket-fw4NBt.png');
INSERT INTO "public"."related_image_shoes" VALUES (391, 71, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2ab0377c-f43a-43a3-8fea-28ff5b0614f6/tiger-woods-structured-dri-fit-adv-club-cap-kfnNt4.png');
INSERT INTO "public"."related_image_shoes" VALUES (392, 71, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ded44f24-aed4-47e2-89ac-2a7e64e52f54/dri-fit-adv-club-unstructured-swoosh-cap-gtlmqK.png');
INSERT INTO "public"."related_image_shoes" VALUES (393, 71, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f153b4e4-9069-44ae-bf86-f70ae8ecbaa1/air-force-1-07-easyon-shoes-lpjTWM.png');
INSERT INTO "public"."related_image_shoes" VALUES (394, 71, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/10089a82-5e61-4e32-b8a9-930d9c8ea321/flex-plus-2-younger-shoes-JrXgvn.png');
INSERT INTO "public"."related_image_shoes" VALUES (395, 71, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2479387b-9021-430a-a4f4-8049b088c2dd/dri-fit-totality-18cm-unlined-shorts-MDJlhD.png');
INSERT INTO "public"."related_image_shoes" VALUES (396, 71, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/825262b4-872c-457b-8727-9af68530c9a4/unlimited-dri-fit-straight-leg-versatile-trousers-jh9jwP.png');
INSERT INTO "public"."related_image_shoes" VALUES (397, 71, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/4e9138d9-278f-48b1-851c-f4e51dbb4ee9/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (398, 71, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/4e9138d9-278f-48b1-851c-f4e51dbb4ee9/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (399, 72, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/1413d1f8-8f4d-43c3-92a4-bb3fe9e3c07d/air-jordan-xxxviii-fiba-pf-basketball-shoes-XnhFhP.png');
INSERT INTO "public"."related_image_shoes" VALUES (400, 72, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/39a47a1c-945f-4ebc-9334-706f326d0f1a/air-jordan-xxxviii-fiba-pf-basketball-shoes-XnhFhP.png');
INSERT INTO "public"."related_image_shoes" VALUES (401, 72, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/fbf5606f-59ac-4a63-a4bb-e931f7aa6ad4/air-jordan-xxxviii-fiba-pf-basketball-shoes-XnhFhP.png');
INSERT INTO "public"."related_image_shoes" VALUES (402, 72, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/248860b6-d7f3-4a1a-98c9-a04a1d09e4c1/air-jordan-xxxviii-fiba-pf-basketball-shoes-XnhFhP.png');
INSERT INTO "public"."related_image_shoes" VALUES (403, 72, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/6ee538a7-b8f0-43fe-a466-1d295448b999/air-jordan-xxxviii-fiba-pf-basketball-shoes-XnhFhP.png');
INSERT INTO "public"."related_image_shoes" VALUES (404, 72, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7d594915-cf4f-4d19-8eed-c346d1855e99/air-jordan-xxxviii-fiba-pf-basketball-shoes-XnhFhP.png');
INSERT INTO "public"."related_image_shoes" VALUES (405, 72, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/2fc590f2-c859-4f20-9d8f-27e9ba55ec76/air-jordan-xxxviii-fiba-pf-basketball-shoes-XnhFhP.png');
INSERT INTO "public"."related_image_shoes" VALUES (406, 72, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/99f5c6c1-43d1-4ff2-b53d-d603cf3ad68c/air-jordan-xxxviii-fiba-pf-basketball-shoes-XnhFhP.png');
INSERT INTO "public"."related_image_shoes" VALUES (407, 72, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/95c756c8-638d-4dc7-a8ed-1bf11654c71c/alphafly-2-eliud-kipchoge-road-racing-shoes-3LZ8Nj.png');
INSERT INTO "public"."related_image_shoes" VALUES (408, 72, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6925b9cc-7fa2-411c-b291-153490f4cbed/paris-saint-germain-club-football-unstructured-cap-D1kNVf.png');
INSERT INTO "public"."related_image_shoes" VALUES (409, 72, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d9248042-a711-4441-80bb-d566b0835c40/air-jordan-1-mid-se-shoes-tKS2kt.png');
INSERT INTO "public"."related_image_shoes" VALUES (410, 72, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f605198b-2631-4c3f-a91c-9f0be74444ba/apex-acg-bucket-hat-SzBh47.png');
INSERT INTO "public"."related_image_shoes" VALUES (411, 72, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e3d0c449-a732-4b11-9430-c80fd3cbf2fd/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (412, 72, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/01be12c8-801c-4c09-abb8-8d2920aa1f6f/windrunner-repel-running-jacket-fw4NBt.png');
INSERT INTO "public"."related_image_shoes" VALUES (413, 72, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2ab0377c-f43a-43a3-8fea-28ff5b0614f6/tiger-woods-structured-dri-fit-adv-club-cap-kfnNt4.png');
INSERT INTO "public"."related_image_shoes" VALUES (414, 72, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ded44f24-aed4-47e2-89ac-2a7e64e52f54/dri-fit-adv-club-unstructured-swoosh-cap-gtlmqK.png');
INSERT INTO "public"."related_image_shoes" VALUES (415, 72, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f153b4e4-9069-44ae-bf86-f70ae8ecbaa1/air-force-1-07-easyon-shoes-lpjTWM.png');
INSERT INTO "public"."related_image_shoes" VALUES (416, 72, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/10089a82-5e61-4e32-b8a9-930d9c8ea321/flex-plus-2-younger-shoes-JrXgvn.png');
INSERT INTO "public"."related_image_shoes" VALUES (417, 72, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2479387b-9021-430a-a4f4-8049b088c2dd/dri-fit-totality-18cm-unlined-shorts-MDJlhD.png');
INSERT INTO "public"."related_image_shoes" VALUES (418, 72, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/825262b4-872c-457b-8727-9af68530c9a4/unlimited-dri-fit-straight-leg-versatile-trousers-jh9jwP.png');
INSERT INTO "public"."related_image_shoes" VALUES (419, 72, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b207c97d-1d63-4e43-9339-375b26222ae2/air-jordan-xxxviii-fiba-pf-basketball-shoes-XnhFhP.png');
INSERT INTO "public"."related_image_shoes" VALUES (420, 72, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b207c97d-1d63-4e43-9339-375b26222ae2/air-jordan-xxxviii-fiba-pf-basketball-shoes-XnhFhP.png');
INSERT INTO "public"."related_image_shoes" VALUES (421, 73, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/28f90b46-2cdd-4738-9080-cd64314f3cd7/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (422, 73, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/accf31f4-ec73-4aaa-8a04-943335a57b2a/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (423, 73, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/79b557f2-58b8-4a72-8568-2728bc371c96/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (424, 73, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/c3aaf8dd-d164-4cdc-8673-bb944f99cb80/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (425, 73, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e426a131-c628-41ab-a31d-8082bb216a46/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (426, 73, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b8b0b006-9f1c-4bad-8b17-6b2bedf0ad7e/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (427, 73, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/8cc5ca9a-6a00-48a5-94bc-a10803de0415/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (428, 73, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/8cff7174-9cec-43dd-9880-69813c8215d1/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (429, 73, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b09b8ba9-9eaa-48fc-8970-625616aa6a20/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (430, 73, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_9.98/0d91ab7f-faa8-490f-9c6b-3156029a7557/air-jordan-legacy-312-low-shoes-6Vd4Xl.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (431, 73, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/xumpf96hthdwq5b5siyl/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (432, 73, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/3bf68179-df2c-41b2-98e4-d969f831e26f/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (433, 73, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/5a2e1902-2da3-4fe7-9412-a7ebdfef25c1/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (434, 73, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/310d04b6-1689-4dbf-92b7-03c6dc85374f/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (435, 73, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/9bfad942-8485-4cf7-8953-e7fe1272bc91/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (436, 73, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/xumpf96hthdwq5b5siyl/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (437, 73, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/310d04b6-1689-4dbf-92b7-03c6dc85374f/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (438, 73, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/030bc0e1-869b-4751-b2fe-a85c78393831/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (439, 73, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/fabe3ef1-263d-42ee-b24b-09a9a47a61ee/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (440, 73, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7cdde65a-3f30-45a1-92bd-05b2e7b41677/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (441, 73, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/cef1c1e1-8e83-4a1c-9202-8c60bd221a76/air-jordan-1-mid-se-craft-shoes-RmP7J6.png');
INSERT INTO "public"."related_image_shoes" VALUES (442, 73, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/55acea44-9795-4450-bc5b-e02a83e6e2c6/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (443, 73, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/6346ca2b-570f-41ab-9add-208eac3de60d/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (444, 73, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/0e71e52d-be87-4397-aeb7-1d528a8f6513/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (445, 73, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/c3dead19-8a8f-42b7-8de7-d56cc9d8550f/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (446, 73, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (447, 73, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/57bc5ca1-76a7-4da7-a1e8-dae139ec10a7/jumpman-two-trey-shoes-rhmBzG.png');
INSERT INTO "public"."related_image_shoes" VALUES (448, 73, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/3bf68179-df2c-41b2-98e4-d969f831e26f/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (449, 73, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/3bf68179-df2c-41b2-98e4-d969f831e26f/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (450, 74, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/150aed98-5514-4943-a51d-ce8f86113731/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (451, 74, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/a216cd68-16fe-439f-95a6-40511d9392df/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (452, 74, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7a2de71e-c8a5-485c-8b12-92087e48dda9/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (453, 74, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/cd113b8d-08d7-46ac-81d5-3683ca62f04c/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (454, 74, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/65a5852e-2b51-4278-8e8a-8a1428e68491/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (455, 74, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/cdeb1697-edf0-4232-b8c3-1ab81a4de12f/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (456, 74, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/9be1ebca-2cdc-4542-b791-460e20d91086/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (457, 74, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/2de0208d-7fc1-4130-ad56-6a72df4fa95e/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (458, 74, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/8ba3216b-1961-453e-9407-685cd6b3360d/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (459, 74, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/6346ca2b-570f-41ab-9add-208eac3de60d/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (460, 74, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/36ca72c6-e3f3-449a-afe5-c870da55a946/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (461, 74, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ff577974-03ff-4f47-ac97-e1d4e7b8414a/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (462, 74, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/81f9df54-d1c9-4afb-884e-9d5cce6bb34c/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (463, 74, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/55acea44-9795-4450-bc5b-e02a83e6e2c6/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (464, 74, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/4c92e877-8edf-4eac-9a9b-4ab5d613c4ce/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (465, 74, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/20857838-4e00-4e0d-993e-7a6145d20e7f/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (466, 74, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/6346ca2b-570f-41ab-9add-208eac3de60d/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (504, 76, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/c82627ea-5151-4ef1-904b-9c11f802ffc1/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (467, 74, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/55acea44-9795-4450-bc5b-e02a83e6e2c6/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (468, 74, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/030bc0e1-869b-4751-b2fe-a85c78393831/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (469, 74, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0e761e04-0e37-4190-9c20-881ba03dbe71/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (470, 74, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7ecf3545-54b9-494d-9a93-d51e406b1053/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (471, 74, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/3bf68179-df2c-41b2-98e4-d969f831e26f/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (472, 74, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/f8f7c9f1-36f7-4138-aae3-94aba28321fa/jumpman-mvp-shoes-JV1HCs.png');
INSERT INTO "public"."related_image_shoes" VALUES (473, 74, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/dcbfd471-3bd8-447b-b7bc-461758e0f0e2/jumpman-two-trey-shoes-rhmBzG.png');
INSERT INTO "public"."related_image_shoes" VALUES (474, 74, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/xumpf96hthdwq5b5siyl/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (475, 74, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7cdde65a-3f30-45a1-92bd-05b2e7b41677/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (476, 74, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/5ba3b10c-b59c-4c7b-af60-71276ffe1f03/elevate-3-basketball-shoes-QT43Gj.png');
INSERT INTO "public"."related_image_shoes" VALUES (477, 74, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/19f12f1d-d4a7-4a7f-bd61-8b53cfeaed8f/jumpman-two-trey-shoes-rhmBzG.png');
INSERT INTO "public"."related_image_shoes" VALUES (478, 74, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/8ba3216b-1961-453e-9407-685cd6b3360d/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (479, 74, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/8ba3216b-1961-453e-9407-685cd6b3360d/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (480, 75, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/2da7d754-4a8b-4fc3-bce1-cf80c2cbd2d9/air-force-1-07-mid-fresh-shoes-SJJm6G.png');
INSERT INTO "public"."related_image_shoes" VALUES (481, 75, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/902425b5-8931-4ac2-b9a1-d34e105d11cb/air-force-1-07-mid-fresh-shoes-SJJm6G.png');
INSERT INTO "public"."related_image_shoes" VALUES (482, 75, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/bbcd0ba3-365e-4ade-9e80-bab19538b340/air-force-1-07-mid-fresh-shoes-SJJm6G.png');
INSERT INTO "public"."related_image_shoes" VALUES (483, 75, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/072bbb4f-22ed-4cf4-bca5-7b22ed705430/air-force-1-07-mid-fresh-shoes-SJJm6G.png');
INSERT INTO "public"."related_image_shoes" VALUES (484, 75, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/fe1ee837-4660-4cee-9eeb-eef86bdc5e52/air-force-1-07-mid-fresh-shoes-SJJm6G.png');
INSERT INTO "public"."related_image_shoes" VALUES (485, 75, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/35980ab4-8015-4c3c-86eb-3f6b8b822604/air-force-1-07-mid-fresh-shoes-SJJm6G.png');
INSERT INTO "public"."related_image_shoes" VALUES (486, 75, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/086e42a3-b451-455e-a904-5ec7bd8dd927/air-force-1-07-mid-fresh-shoes-SJJm6G.png');
INSERT INTO "public"."related_image_shoes" VALUES (487, 75, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/62628dd7-528c-485b-9a55-2af455a3c08d/air-force-1-07-mid-fresh-shoes-SJJm6G.png');
INSERT INTO "public"."related_image_shoes" VALUES (488, 75, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/2a514eeb-19cf-42ca-bef1-17090563a2a3/air-force-1-07-mid-fresh-shoes-SJJm6G.png');
INSERT INTO "public"."related_image_shoes" VALUES (489, 75, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/6cda8384-02e2-4a75-ba8c-910945ec94a9/air-force-1-07-mid-fresh-shoes-SJJm6G.png');
INSERT INTO "public"."related_image_shoes" VALUES (490, 75, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/0447d3b3-28d3-4ba3-a6d6-deb0b21558af/air-force-1-mid-07-shoe-9S2mB4.png');
INSERT INTO "public"."related_image_shoes" VALUES (491, 75, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (492, 75, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/a42a5d53-2f99-4e78-a081-9d07a2d0774a/air-force-1-07-shoe-HWWX9W.png');
INSERT INTO "public"."related_image_shoes" VALUES (493, 75, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/146ac543-f69c-441a-a4dd-2e1add33b6ea/air-force-1-07-shoes-VWCc04.png');
INSERT INTO "public"."related_image_shoes" VALUES (494, 75, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e777c881-5b62-4250-92a6-362967f54cca/air-force-1-07-shoe-NMmm1B.png');
INSERT INTO "public"."related_image_shoes" VALUES (495, 75, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ed71f213-14a5-4d5e-a0d8-1416208566b8/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (496, 75, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b7fd9018-e0ce-4adc-9320-a05b67eef078/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (497, 75, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/8ba3216b-1961-453e-9407-685cd6b3360d/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (498, 75, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/a4b9a6fb-fbc5-485b-ae0b-f1263d3df85a/court-vision-mid-next-nature-shoes-VKCWFj.png');
INSERT INTO "public"."related_image_shoes" VALUES (499, 75, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/619223ad-3916-4143-9568-d5ba663a5fe0/air-jordan-1-mid-se-shoes-CF3K5m.png');
INSERT INTO "public"."related_image_shoes" VALUES (500, 75, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e20f7d6b-77f8-4a99-99e2-b2a2cb69de46/air-jordan-1-mid-se-craft-shoes-RmP7J6.png');
INSERT INTO "public"."related_image_shoes" VALUES (501, 75, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f153b4e4-9069-44ae-bf86-f70ae8ecbaa1/air-force-1-07-easyon-shoes-lpjTWM.png');
INSERT INTO "public"."related_image_shoes" VALUES (502, 75, 'https://static.nike.com/a/images/t_default/a1857f8b-397d-4744-8b46-76db6fa5db25/air-force-1-07-mid-fresh-shoes-SJJm6G.png');
INSERT INTO "public"."related_image_shoes" VALUES (503, 75, 'https://static.nike.com/a/images/t_default/a1857f8b-397d-4744-8b46-76db6fa5db25/air-force-1-07-mid-fresh-shoes-SJJm6G.png');
INSERT INTO "public"."related_image_shoes" VALUES (506, 76, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/cb4deff8-2c62-43e4-8008-3d8b4a8895ca/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (507, 76, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/d71cab64-d1ec-4b8c-b93e-751c86de1165/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (508, 76, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/baeebaa4-4f7a-41bc-9b41-1ec5e9cf8f12/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (509, 76, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/0fd2a5b0-20d2-4cb4-a619-acbff16ae34f/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (510, 76, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/84dda048-d92f-49dc-8898-8c7047584c92/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (511, 76, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e840d582-6271-450f-b159-167cb2082770/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (512, 76, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/2f7c0396-bdfd-4e59-949c-63949985028e/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (513, 76, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e44424bb-b82c-415f-b0f6-6f246347136e/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (514, 76, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_1.36/7fc08c8a-8d4a-4c7e-9755-70d81b860cd9/air-vapormax-2023-flyknit-shoes-xjVzw5.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (515, 76, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/59fc1612-f031-4335-ae4d-88c228a908fe/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (516, 76, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/52332e7e-fcac-427e-b0cf-cd603a29d90a/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (517, 76, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/6ff6e596-2f93-47f8-98a4-611de407bffb/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (518, 76, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/bc65cd4b-ce49-4ab9-88a4-0dbcf20ebcbf/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (519, 76, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/3d2786a4-7b5f-470a-8a6e-ba844b637abd/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (520, 76, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/c44dc5a9-e033-44df-80c6-9af45f3e6972/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (521, 76, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/ea9e14ef-1953-41b5-9cda-c53b9079d3d6/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (522, 76, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ea9e14ef-1953-41b5-9cda-c53b9079d3d6/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (523, 76, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/c44dc5a9-e033-44df-80c6-9af45f3e6972/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (524, 76, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/7405a73c-8e3e-41be-beec-a4dfeea0c194/air-vapormax-2023-flyknit-shoes-4LVgjW.png');
INSERT INTO "public"."related_image_shoes" VALUES (525, 76, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/disuwww5uxkqulu2aivh/air-max-plus-iii-shoes-Qw64gh.png');
INSERT INTO "public"."related_image_shoes" VALUES (526, 76, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/yzytjyjnar2wzjiriibk/air-max-97-shoes-EBZrb8.png');
INSERT INTO "public"."related_image_shoes" VALUES (527, 76, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ad9a51ad-dfc6-4d34-a8e7-11f2a6b6d6b2/air-max-flyknit-racer-next-nature-shoes-CCWCCw.png');
INSERT INTO "public"."related_image_shoes" VALUES (528, 76, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/erzfadfpnzgkxt0gn2ya/air-max-plus-shoes-Z0D37G.png');
INSERT INTO "public"."related_image_shoes" VALUES (529, 76, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/31c53347-5ba0-4683-898d-7cca02ae38bb/air-max-95-essential-shoe-6n9HLv.png');
INSERT INTO "public"."related_image_shoes" VALUES (530, 76, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/5fe30fc4-2645-4d1e-b3f8-70da145e0f74/air-max-97-shoes-EBZrb8.png');
INSERT INTO "public"."related_image_shoes" VALUES (531, 76, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/247616b5-1d3b-4777-abbb-d5e08a924b78/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (532, 76, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/357cf26a-26a1-4ff0-8cde-d46249051eff/pegasus-trail-4-gore-tex-waterproof-trail-running-shoes-pQ2Pzs.png');
INSERT INTO "public"."related_image_shoes" VALUES (533, 76, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/dcdfd669-e8c5-41fd-a072-ef9e3b8cb9ed/air-max-flyknit-racer-shoes-Q9lN71.png');
INSERT INTO "public"."related_image_shoes" VALUES (534, 76, 'https://static.nike.com/a/images/t_default/6ff6e596-2f93-47f8-98a4-611de407bffb/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (535, 76, 'https://static.nike.com/a/images/t_default/6ff6e596-2f93-47f8-98a4-611de407bffb/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (536, 77, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/9b26aa8f-0173-409b-b30a-7ce2d88573a4/custom-nike-dunk-low-by-you.png');
INSERT INTO "public"."related_image_shoes" VALUES (537, 77, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/5cc96c34-2cff-4b2b-804f-34ffa524c6e8/custom-nike-dunk-low-by-you.png');
INSERT INTO "public"."related_image_shoes" VALUES (538, 77, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/73daec3a-ae2f-4ba3-9a7d-d94a84edec8a/custom-nike-dunk-low-by-you.png');
INSERT INTO "public"."related_image_shoes" VALUES (539, 77, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/c146a33f-2c5f-4922-8d3a-0eb3ead4c092/custom-nike-dunk-low-by-you.png');
INSERT INTO "public"."related_image_shoes" VALUES (540, 77, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/c0253532-2460-4b20-bc0e-4388fb5b8c55/custom-nike-dunk-low-by-you.png');
INSERT INTO "public"."related_image_shoes" VALUES (541, 77, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/b4091d3c-d837-4e3f-b9a9-b4f8b4ff5690/custom-nike-dunk-low-by-you.png');
INSERT INTO "public"."related_image_shoes" VALUES (542, 77, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/9b26aa8f-0173-409b-b30a-7ce2d88573a4/custom-nike-dunk-low-by-you.png');
INSERT INTO "public"."related_image_shoes" VALUES (543, 77, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/07ad554d-077a-46c1-aa96-167ba177901d/custom-nike-dunk-low-by-you.png');
INSERT INTO "public"."related_image_shoes" VALUES (544, 77, 'https://static.nike.com/a/images/t_default/9b26aa8f-0173-409b-b30a-7ce2d88573a4/custom-nike-dunk-low-by-you.png');
INSERT INTO "public"."related_image_shoes" VALUES (545, 78, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/6215214c-6d9b-4d08-b58c-4717d98875b2/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (546, 78, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/4cdf8d62-0e17-47f5-8e7d-94a800aebe19/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (547, 78, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ac43ff30-6dae-4f7f-845f-787a552bfcf9/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (548, 78, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e1a15cae-5c30-4ca8-82bd-530e0507c1b6/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (549, 78, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/da707647-9e51-4d0c-beca-f6a5fafb30d5/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (550, 78, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/51c24cd3-afba-419d-a6bc-2fbe66b3e7c6/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (551, 78, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/50187f21-006b-458b-9b6c-2994f98aa7cc/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (552, 78, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/fedf37cc-8e01-4b7d-8d83-71c9b519868c/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (553, 78, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/f9da8586-6b8b-48c6-b820-cfc5e010474a/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (554, 78, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/030bc0e1-869b-4751-b2fe-a85c78393831/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (555, 78, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/5e9bf196-b5f4-461d-b3b3-1cfd3a7c5a6f/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (556, 78, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/19a43db7-4a66-4661-aab6-526a70f7e744/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (557, 78, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/f9da8586-6b8b-48c6-b820-cfc5e010474a/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (558, 78, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/55acea44-9795-4450-bc5b-e02a83e6e2c6/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (559, 78, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/6346ca2b-570f-41ab-9add-208eac3de60d/jordan-stay-loyal-2-shoes-sDkgDk.png');
INSERT INTO "public"."related_image_shoes" VALUES (560, 78, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/89bd904a-dfae-4f50-930e-768e016750e0/jumpman-mvp-shoes-JV1HCs.png');
INSERT INTO "public"."related_image_shoes" VALUES (561, 78, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/5ba3b10c-b59c-4c7b-af60-71276ffe1f03/elevate-3-basketball-shoes-QT43Gj.png');
INSERT INTO "public"."related_image_shoes" VALUES (562, 78, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/63f3749b-0a07-464e-acbf-7933f87b9beb/jumpman-two-trey-shoes-rhmBzG.png');
INSERT INTO "public"."related_image_shoes" VALUES (563, 78, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/fabe3ef1-263d-42ee-b24b-09a9a47a61ee/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (564, 78, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/57bc5ca1-76a7-4da7-a1e8-dae139ec10a7/jumpman-two-trey-shoes-rhmBzG.png');
INSERT INTO "public"."related_image_shoes" VALUES (565, 78, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/3bf68179-df2c-41b2-98e4-d969f831e26f/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (566, 78, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/247616b5-1d3b-4777-abbb-d5e08a924b78/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (567, 78, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/xumpf96hthdwq5b5siyl/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (568, 78, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/10eb998b-33ba-4f4d-9613-006e7bbdf1f7/jordan-max-aura-5-shoes-ZBZ4Pz.png');
INSERT INTO "public"."related_image_shoes" VALUES (569, 78, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/030bc0e1-869b-4751-b2fe-a85c78393831/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (570, 78, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/030bc0e1-869b-4751-b2fe-a85c78393831/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (571, 79, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/c76e2119-acb7-4944-9085-d4f5ae2bda4a/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (572, 79, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/284358d6-c436-4211-8365-202fd1393277/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (573, 79, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/75d6eab9-270c-485d-8edc-851408f5f86a/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (574, 79, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e38ad395-18da-4d12-8b76-9336e12f7ab6/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (575, 79, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/bbe6f776-12d9-43b3-a8d0-338a95180a0c/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (576, 79, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/0af510b3-6532-46c9-a315-95405e03ae52/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (577, 79, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/4face735-6dae-4db4-8456-99936374addf/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (578, 79, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/dbdee500-62c0-42b5-9136-727ed91c6f1a/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (579, 79, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/19277f41-6a02-43c6-972c-4f96bcf7e1dd/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (580, 79, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/36125b6c-168c-4846-b2b6-6a5155793853/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (581, 79, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/2a1d892f-5910-4eb9-8eba-3fbede687aa6/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (582, 79, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/7087b6b3-f5cd-429a-926e-3d344dd4c2ff/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (583, 79, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/ae34975e-a7c6-4dfb-ba33-3bfaa031890b/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (584, 79, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_0.48/8751dcb1-864b-4ab0-bdd3-9b873780f7e7/go-flyease-easy-on-off-shoes-3svRCL.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (585, 79, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/247616b5-1d3b-4777-abbb-d5e08a924b78/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (586, 79, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/fbff7ca9-5774-44cb-afe3-2ed09caab851/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (587, 79, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/ce94da52-442d-4a7d-8513-362c11f292e7/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (588, 79, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/0e71e52d-be87-4397-aeb7-1d528a8f6513/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (589, 79, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/0e71e52d-be87-4397-aeb7-1d528a8f6513/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (590, 79, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (591, 79, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/30529eb7-dadb-4ccc-9664-5be6c9a4a0a5/pegasus-flyease-easy-on-off-road-running-shoes-RlnnC7.png');
INSERT INTO "public"."related_image_shoes" VALUES (592, 79, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ac871484-8738-44cf-abbd-4d347ad536e9/revolution-6-flyease-easy-on-off-road-running-shoes-XvR99K.png');
INSERT INTO "public"."related_image_shoes" VALUES (593, 79, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/c2099196-c591-4117-b236-55ad460bbcb4/invincible-3-road-running-shoes-Wwmmlp.png');
INSERT INTO "public"."related_image_shoes" VALUES (594, 79, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e777c881-5b62-4250-92a6-362967f54cca/air-force-1-07-shoe-NMmm1B.png');
INSERT INTO "public"."related_image_shoes" VALUES (595, 79, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/030bc0e1-869b-4751-b2fe-a85c78393831/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (596, 79, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/d58dc67a-1479-4331-ab74-36d5188e05a7/free-run-5-road-running-shoes-m8L9mr.png');
INSERT INTO "public"."related_image_shoes" VALUES (597, 79, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/fd17b420-b388-4c8a-aaaa-e0a98ddf175f/dunk-high-retro-shoe-DdRmMZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (598, 79, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/d6b21f68-1ebb-418b-9903-9c6b44d0bbf1/air-presto-shoes-QdhgZW.png');
INSERT INTO "public"."related_image_shoes" VALUES (599, 79, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/l3w4varugbogihcpj40e/air-force-1-shadow-shoes-mN8Glx.png');
INSERT INTO "public"."related_image_shoes" VALUES (600, 79, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/15aac653-dbf1-495e-ac5e-3c08a9af9399/air-max-alpha-trainer-5-workout-shoes-x8Jzj6.png');
INSERT INTO "public"."related_image_shoes" VALUES (601, 79, 'https://static.nike.com/a/images/t_default/247616b5-1d3b-4777-abbb-d5e08a924b78/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (602, 79, 'https://static.nike.com/a/images/t_default/247616b5-1d3b-4777-abbb-d5e08a924b78/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (603, 80, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d359dee8-b075-463c-a15d-c2e4636c489f/air-jordan-1-low-se-craft-shoes-q1ktlR.png');
INSERT INTO "public"."related_image_shoes" VALUES (604, 80, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/029d3ad5-5022-4af0-80e6-91c8bc944680/air-jordan-1-low-se-craft-shoes-q1ktlR.png');
INSERT INTO "public"."related_image_shoes" VALUES (605, 80, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b09816d7-4a45-49ae-8d19-e977a49a0364/air-jordan-1-low-se-craft-shoes-q1ktlR.png');
INSERT INTO "public"."related_image_shoes" VALUES (606, 80, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/8d75e456-3c85-4093-9ca4-c6dee1b7a5cb/air-jordan-1-low-se-craft-shoes-q1ktlR.png');
INSERT INTO "public"."related_image_shoes" VALUES (607, 80, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/56554add-968b-475e-88ab-52d743ecb1bd/air-jordan-1-low-se-craft-shoes-q1ktlR.png');
INSERT INTO "public"."related_image_shoes" VALUES (608, 80, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/952f614e-7269-4015-8938-2cdf014fa5ca/air-jordan-1-low-se-craft-shoes-q1ktlR.png');
INSERT INTO "public"."related_image_shoes" VALUES (609, 80, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/63df740a-7eaf-4cbc-8d8b-d53185eac193/air-jordan-1-low-se-craft-shoes-q1ktlR.png');
INSERT INTO "public"."related_image_shoes" VALUES (610, 80, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/f919bc84-7f29-446f-b51c-a852d79d8ae2/air-jordan-1-low-se-craft-shoes-q1ktlR.png');
INSERT INTO "public"."related_image_shoes" VALUES (611, 80, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/de63e1ff-c1ab-40e9-aaaf-1ccd5d0cac07/air-jordan-1-low-se-craft-shoes-q1ktlR.png');
INSERT INTO "public"."related_image_shoes" VALUES (612, 80, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/de63e1ff-c1ab-40e9-aaaf-1ccd5d0cac07/air-jordan-1-low-se-craft-shoes-q1ktlR.png');
INSERT INTO "public"."related_image_shoes" VALUES (613, 81, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f0e2da9f-f646-4104-8a87-2760b66720d2/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (614, 81, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/78780b22-abcb-465b-9970-438fd1156e6b/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (615, 81, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/0e584c0c-b1ec-4bcb-a20a-2af63b94cdd3/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (616, 81, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/27a09df3-a7e2-4398-9381-5e0194152aaf/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (617, 81, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f3ca670c-2e28-4c2e-a4d6-a849f751cb05/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (618, 81, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/d523f559-2bf6-4c02-94ac-472defe01e6b/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (619, 81, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/c70c6aec-3b43-4164-8d65-7fba0230c4db/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (620, 81, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/80e15889-8e20-449c-a4b3-25e013d45eb1/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (621, 81, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/5ad99b15-1bf3-4e7c-9c1e-9cbf259650d7/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (622, 81, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_3.4/dcb69c71-9e52-4865-9fd0-416e808d591d/nikecourt-legacy-shoes-PKg8wX.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (623, 81, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/fc79b678-03e9-44b2-afa8-da6831f4b617/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (626, 81, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/cf4a5556-6163-4abf-9b83-0f89b4766100/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (627, 81, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/aaac8e7b-b62e-4023-9844-7ac4a0577f0a/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (628, 81, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (629, 81, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ca2b356e-8aa3-4355-9e6f-d76a70c9dcf0/sb-chron-2-canvas-skate-shoe-zdBtfH.png');
INSERT INTO "public"."related_image_shoes" VALUES (630, 81, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f139155d-5114-4539-892d-87de7d5ac40d/blazer-low-77-vintage-shoes-HmmkdX.png');
INSERT INTO "public"."related_image_shoes" VALUES (631, 81, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/3c439ca5-b6bc-4224-ab5f-67fdcb7aa53a/sb-force-58-skate-shoe-DvWCT6.png');
INSERT INTO "public"."related_image_shoes" VALUES (632, 81, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/468e4793-23a0-4f1d-86f6-150cd6e42ad3/court-vision-low-next-nature-shoes-N2fFHb.png');
INSERT INTO "public"."related_image_shoes" VALUES (633, 81, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/be2a0ef5-8ae7-4852-a72a-e335ceff5a60/blazer-low-77-shoes-zHbZKq.png');
INSERT INTO "public"."related_image_shoes" VALUES (634, 81, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/820fbfd3-afd1-4f8f-b3b4-d707e851d9d6/court-vision-low-next-nature-shoes-N2fFHb.png');
INSERT INTO "public"."related_image_shoes" VALUES (635, 81, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b8165104-b53d-4876-9154-f126165174f8/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (636, 81, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/a4b9a6fb-fbc5-485b-ae0b-f1263d3df85a/court-vision-mid-next-nature-shoes-VKCWFj.png');
INSERT INTO "public"."related_image_shoes" VALUES (637, 81, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/c01cddda-ce71-44bd-bbf7-da5fd4a56c9a/sb-chron-2-skate-shoe-vNX1Xx.png');
INSERT INTO "public"."related_image_shoes" VALUES (638, 81, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/3ca0e8ff-9564-46b0-a808-072cc0e8053a/sb-force-58-skate-shoe-HNFTvl.png');
INSERT INTO "public"."related_image_shoes" VALUES (639, 81, 'https://static.nike.com/a/images/t_default/cf4a5556-6163-4abf-9b83-0f89b4766100/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (640, 81, 'https://static.nike.com/a/images/t_default/cf4a5556-6163-4abf-9b83-0f89b4766100/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (641, 82, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f662f1a1-4eb7-4f74-b4dd-dfb1ecdcc5c9/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (642, 82, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/1ed76fa8-4fa7-404d-9273-95e10b4df81a/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (643, 82, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/b72df31d-1d7b-489a-a344-0ef3fe8a3780/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (644, 82, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/cf289aee-fa38-4a5d-a52e-8db95e644a1d/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (645, 82, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/d2a2a8b8-2fde-4b85-b5ff-8d849e2c51a8/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (646, 82, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/d5858271-d2f5-429e-bd66-64a40b56fa17/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (647, 82, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/5b84b82c-f3c5-4b50-93a0-601e7318a9a0/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (648, 82, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/67591422-4924-4a76-91bc-46ace939a9fe/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (649, 82, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/f7741640-0220-4e86-b578-6cde8c650883/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (650, 82, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/2f9b21da-6e5f-43ec-bab3-6cb8c86cf85d/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (651, 82, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/5e15e69f-31a6-4230-832d-99130b5993fc/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (652, 82, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/9f9655ed-92ba-4f35-9e92-3c27c47181bf/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (653, 82, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/fceca65b-709f-4072-b16a-98f3c1142fc4/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (654, 82, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/9f9655ed-92ba-4f35-9e92-3c27c47181bf/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (655, 82, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f7741640-0220-4e86-b578-6cde8c650883/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (656, 82, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/7ed24d44-1eb7-4880-b4cb-846fcd94b905/legend-essential-3-next-nature-workout-shoes-wQRBs9.png');
INSERT INTO "public"."related_image_shoes" VALUES (657, 82, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/cba6ab1c-f3db-4150-a317-6ce3fbc3c799/mc-trainer-2-workout-shoes-WFVXbk.png');
INSERT INTO "public"."related_image_shoes" VALUES (658, 82, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e23e8fcd-c5f3-4279-93d5-a9a719ff5514/legend-essential-3-next-nature-workout-shoes-wQRBs9.png');
INSERT INTO "public"."related_image_shoes" VALUES (659, 82, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/343e4e23-6a79-470c-822f-5bfcadbf5c9f/mc-trainer-2-workout-shoes-WFVXbk.png');
INSERT INTO "public"."related_image_shoes" VALUES (660, 82, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6abba377-c4b2-4b54-be8e-6578430dbfb5/city-rep-tr-workout-shoes-djC0DF.png');
INSERT INTO "public"."related_image_shoes" VALUES (661, 82, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/bdbed338-76cb-413e-8453-5a222a33dd7e/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (662, 82, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/bdb9af6b-24e3-40df-b843-4e7a51a33833/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (663, 82, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/bf0c5ddb-53bb-498e-932e-2fd0a0ff3a13/downshifter-12-road-running-shoes-kQLnZn.png');
INSERT INTO "public"."related_image_shoes" VALUES (664, 82, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/15aac653-dbf1-495e-ac5e-3c08a9af9399/air-max-alpha-trainer-5-workout-shoes-x8Jzj6.png');
INSERT INTO "public"."related_image_shoes" VALUES (665, 82, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/8a802b03-a996-43eb-8964-025df911d73c/air-max-alpha-trainer-5-workout-shoes-x8Jzj6.png');
INSERT INTO "public"."related_image_shoes" VALUES (666, 82, 'https://static.nike.com/a/images/t_default/5e15e69f-31a6-4230-832d-99130b5993fc/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (667, 82, 'https://static.nike.com/a/images/t_default/5e15e69f-31a6-4230-832d-99130b5993fc/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (668, 83, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e0a663c0-27a8-4505-98ce-7fa11058b733/dunk-low-retro-shoes-69h36X.png');
INSERT INTO "public"."related_image_shoes" VALUES (669, 83, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f6fdcf06-c9b0-43e4-a4e4-97d50ae2e984/dunk-low-retro-shoes-69h36X.png');
INSERT INTO "public"."related_image_shoes" VALUES (670, 83, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/4f8caa3a-d8d5-490c-aaa8-ade3e7d08650/dunk-low-retro-shoes-69h36X.png');
INSERT INTO "public"."related_image_shoes" VALUES (671, 83, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f324b800-6e9c-4acb-ac06-5d5889c6cddb/dunk-low-retro-shoes-69h36X.png');
INSERT INTO "public"."related_image_shoes" VALUES (672, 83, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f3beefcc-0b9d-42f8-8675-2d0123eb32e0/dunk-low-retro-shoes-69h36X.png');
INSERT INTO "public"."related_image_shoes" VALUES (673, 83, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/0922c83a-121e-405b-bc5c-58e274b74177/dunk-low-retro-shoes-69h36X.png');
INSERT INTO "public"."related_image_shoes" VALUES (674, 83, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/29717176-c61e-4966-ac5a-71e23ee27b9a/dunk-low-retro-shoes-69h36X.png');
INSERT INTO "public"."related_image_shoes" VALUES (675, 83, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/1f058a75-5ccd-4a66-8e28-b4411ae12507/dunk-low-retro-shoes-69h36X.png');
INSERT INTO "public"."related_image_shoes" VALUES (676, 83, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_0.49/27037678-0892-4ccd-8ebd-a31cbf5f7326/dunk-low-retro-shoes-69h36X.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (677, 83, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/4041618c-dd05-4e4d-ba2f-3bd699d67d2e/dunk-low-retro-shoes-69h36X.png');
INSERT INTO "public"."related_image_shoes" VALUES (678, 83, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/0dc8ed4e-799d-4466-b31c-3d45a14496de/dunk-low-retro-shoes-69h36X.png');
INSERT INTO "public"."related_image_shoes" VALUES (679, 83, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/48ef0c32-8a7b-4588-8256-81a8c731cd16/dunk-low-retro-shoes-69h36X.png');
INSERT INTO "public"."related_image_shoes" VALUES (680, 83, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/ed5f04a9-630d-4f1b-aede-99c3c6b6178e/dunk-low-retro-shoes-69h36X.png');
INSERT INTO "public"."related_image_shoes" VALUES (681, 83, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/1d0cff7b-193c-46dc-9b42-7b109fdbb1d3/dunk-low-retro-shoes-69h36X.png');
INSERT INTO "public"."related_image_shoes" VALUES (682, 83, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/882971a3-7795-431e-8b85-8ea6582273cb/dunk-low-retro-shoes-69h36X.png');
INSERT INTO "public"."related_image_shoes" VALUES (683, 83, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/95c756c8-638d-4dc7-a8ed-1bf11654c71c/alphafly-2-eliud-kipchoge-road-racing-shoes-3LZ8Nj.png');
INSERT INTO "public"."related_image_shoes" VALUES (684, 83, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6925b9cc-7fa2-411c-b291-153490f4cbed/paris-saint-germain-club-football-unstructured-cap-D1kNVf.png');
INSERT INTO "public"."related_image_shoes" VALUES (685, 83, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d9248042-a711-4441-80bb-d566b0835c40/air-jordan-1-mid-se-shoes-tKS2kt.png');
INSERT INTO "public"."related_image_shoes" VALUES (686, 83, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f605198b-2631-4c3f-a91c-9f0be74444ba/apex-acg-bucket-hat-SzBh47.png');
INSERT INTO "public"."related_image_shoes" VALUES (687, 83, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e3d0c449-a732-4b11-9430-c80fd3cbf2fd/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (688, 83, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/01be12c8-801c-4c09-abb8-8d2920aa1f6f/windrunner-repel-running-jacket-fw4NBt.png');
INSERT INTO "public"."related_image_shoes" VALUES (689, 83, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2ab0377c-f43a-43a3-8fea-28ff5b0614f6/tiger-woods-structured-dri-fit-adv-club-cap-kfnNt4.png');
INSERT INTO "public"."related_image_shoes" VALUES (690, 83, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ded44f24-aed4-47e2-89ac-2a7e64e52f54/dri-fit-adv-club-unstructured-swoosh-cap-gtlmqK.png');
INSERT INTO "public"."related_image_shoes" VALUES (691, 83, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f153b4e4-9069-44ae-bf86-f70ae8ecbaa1/air-force-1-07-easyon-shoes-lpjTWM.png');
INSERT INTO "public"."related_image_shoes" VALUES (692, 83, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/10089a82-5e61-4e32-b8a9-930d9c8ea321/flex-plus-2-younger-shoes-JrXgvn.png');
INSERT INTO "public"."related_image_shoes" VALUES (693, 83, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2479387b-9021-430a-a4f4-8049b088c2dd/dri-fit-totality-18cm-unlined-shorts-MDJlhD.png');
INSERT INTO "public"."related_image_shoes" VALUES (694, 83, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/825262b4-872c-457b-8727-9af68530c9a4/unlimited-dri-fit-straight-leg-versatile-trousers-jh9jwP.png');
INSERT INTO "public"."related_image_shoes" VALUES (695, 83, 'https://static.nike.com/a/images/t_default/4041618c-dd05-4e4d-ba2f-3bd699d67d2e/dunk-low-retro-shoes-69h36X.png');
INSERT INTO "public"."related_image_shoes" VALUES (696, 83, 'https://static.nike.com/a/images/t_default/4041618c-dd05-4e4d-ba2f-3bd699d67d2e/dunk-low-retro-shoes-69h36X.png');
INSERT INTO "public"."related_image_shoes" VALUES (697, 84, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/556af5a5-35d6-4536-afdc-b03261820756/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (698, 84, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/bf836e08-8f42-4ccb-a45c-0705f0ac7c79/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (699, 84, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/74173779-6f29-400a-8791-1a12b426abdf/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (700, 84, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/f868938f-b3d3-4569-96a8-841b28223e0a/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (701, 84, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/455e35b0-d65d-4f83-a319-9c6673af3912/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (702, 84, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d7f1ff08-b697-4ef6-afdd-76b8bb1f3fc2/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (703, 84, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/562f040a-ff62-4311-9152-5975fd68aa5d/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (704, 84, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/4b7233b1-e325-4b16-828c-861e54f9cb28/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (705, 84, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_0.97/ixyee6ht3iln5mjxk8fu/air-jordan-1-low-shoes-6Q1tFM.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (706, 84, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/8d84f66f-5c98-4282-8163-8ee572945a09/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (707, 84, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/4becaa33-4fc0-4858-a68d-9d77efbd11d5/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (708, 84, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/84869b7e-52cf-4f84-8c80-c6dd098dc617/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (709, 84, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/63c3d532-d82f-4dfd-ac86-5e0eea991a7b/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (710, 84, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/abeb20f9-baf1-42b4-84c2-20c4df54621c/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (711, 84, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ac62e931-9110-46ff-87fb-3824bbee4f25/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (712, 84, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/28812013-b5f3-4148-a1b4-170227e0e0fe/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (713, 84, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/6930e1f6-b92e-4964-a139-20d430964ab3/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (714, 84, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/95c756c8-638d-4dc7-a8ed-1bf11654c71c/alphafly-2-eliud-kipchoge-road-racing-shoes-3LZ8Nj.png');
INSERT INTO "public"."related_image_shoes" VALUES (715, 84, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6925b9cc-7fa2-411c-b291-153490f4cbed/paris-saint-germain-club-football-unstructured-cap-D1kNVf.png');
INSERT INTO "public"."related_image_shoes" VALUES (716, 84, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d9248042-a711-4441-80bb-d566b0835c40/air-jordan-1-mid-se-shoes-tKS2kt.png');
INSERT INTO "public"."related_image_shoes" VALUES (717, 84, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f605198b-2631-4c3f-a91c-9f0be74444ba/apex-acg-bucket-hat-SzBh47.png');
INSERT INTO "public"."related_image_shoes" VALUES (718, 84, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e3d0c449-a732-4b11-9430-c80fd3cbf2fd/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (719, 84, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/01be12c8-801c-4c09-abb8-8d2920aa1f6f/windrunner-repel-running-jacket-fw4NBt.png');
INSERT INTO "public"."related_image_shoes" VALUES (720, 84, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2ab0377c-f43a-43a3-8fea-28ff5b0614f6/tiger-woods-structured-dri-fit-adv-club-cap-kfnNt4.png');
INSERT INTO "public"."related_image_shoes" VALUES (721, 84, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ded44f24-aed4-47e2-89ac-2a7e64e52f54/dri-fit-adv-club-unstructured-swoosh-cap-gtlmqK.png');
INSERT INTO "public"."related_image_shoes" VALUES (722, 84, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f153b4e4-9069-44ae-bf86-f70ae8ecbaa1/air-force-1-07-easyon-shoes-lpjTWM.png');
INSERT INTO "public"."related_image_shoes" VALUES (723, 84, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/10089a82-5e61-4e32-b8a9-930d9c8ea321/flex-plus-2-younger-shoes-JrXgvn.png');
INSERT INTO "public"."related_image_shoes" VALUES (724, 84, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2479387b-9021-430a-a4f4-8049b088c2dd/dri-fit-totality-18cm-unlined-shorts-MDJlhD.png');
INSERT INTO "public"."related_image_shoes" VALUES (725, 84, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/825262b4-872c-457b-8727-9af68530c9a4/unlimited-dri-fit-straight-leg-versatile-trousers-jh9jwP.png');
INSERT INTO "public"."related_image_shoes" VALUES (726, 84, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/63c3d532-d82f-4dfd-ac86-5e0eea991a7b/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (727, 84, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/63c3d532-d82f-4dfd-ac86-5e0eea991a7b/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (728, 85, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/ca21e70f-9c83-46dd-9974-b3b55b0b9dc0/air-pegasus-89-shoes-BwcVd8.png');
INSERT INTO "public"."related_image_shoes" VALUES (729, 85, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/de6e5c40-d216-43fd-b81b-e807631294e6/air-pegasus-89-shoes-BwcVd8.png');
INSERT INTO "public"."related_image_shoes" VALUES (730, 85, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/0f917ac9-fff1-4b31-a74d-6184745cc3a8/air-pegasus-89-shoes-BwcVd8.png');
INSERT INTO "public"."related_image_shoes" VALUES (731, 85, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/b57983b4-d30c-4843-a3dd-d477bb5757e0/air-pegasus-89-shoes-BwcVd8.png');
INSERT INTO "public"."related_image_shoes" VALUES (732, 85, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/dd84c033-8539-475f-960a-62420b705587/air-pegasus-89-shoes-BwcVd8.png');
INSERT INTO "public"."related_image_shoes" VALUES (733, 85, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/2b6d065d-ae13-4571-83e3-ccef5c0ae019/air-pegasus-89-shoes-BwcVd8.png');
INSERT INTO "public"."related_image_shoes" VALUES (734, 85, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e81b5c41-7769-411c-8251-7eba82c8ee19/air-pegasus-89-shoes-BwcVd8.png');
INSERT INTO "public"."related_image_shoes" VALUES (735, 85, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/5d2e657f-0e2e-4978-a147-bb5b4c390de3/air-pegasus-89-shoes-BwcVd8.png');
INSERT INTO "public"."related_image_shoes" VALUES (736, 85, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_3.19/dedb066f-f0f8-4b7a-85bc-972d8d0b5365/air-pegasus-89-shoes-BwcVd8.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (737, 85, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/29c3efe5-3f22-4603-8bc4-ee91c1342ee0/air-pegasus-89-shoes-BwcVd8.png');
INSERT INTO "public"."related_image_shoes" VALUES (738, 85, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/ab4190b2-3661-41e6-8a9e-29ca541a303e/air-pegasus-89-shoes-BwcVd8.png');
INSERT INTO "public"."related_image_shoes" VALUES (739, 85, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/29c3efe5-3f22-4603-8bc4-ee91c1342ee0/air-pegasus-89-shoes-BwcVd8.png');
INSERT INTO "public"."related_image_shoes" VALUES (740, 85, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/21d38052-598b-44f6-a857-123c9f72b015/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (741, 85, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/a3bc861e-d279-4fd8-85fa-3d80b869ec7b/air-max-90-shoes-K0Hf12.png');
INSERT INTO "public"."related_image_shoes" VALUES (742, 85, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/0dbef9d2-e69b-4df8-b52f-4e679d20e486/air-max-alpha-trainer-5-workout-shoes-x8Jzj6.png');
INSERT INTO "public"."related_image_shoes" VALUES (743, 85, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/i1-2e7cf08f-9eba-4420-9402-e472c3d6782d/venture-runner-shoe-mT8r8R.png');
INSERT INTO "public"."related_image_shoes" VALUES (744, 85, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/468e4793-23a0-4f1d-86f6-150cd6e42ad3/court-vision-low-next-nature-shoes-N2fFHb.png');
INSERT INTO "public"."related_image_shoes" VALUES (745, 85, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/bdbed338-76cb-413e-8453-5a222a33dd7e/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (746, 85, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/55bf5c3f-f671-4f80-895a-66cd71440ac6/air-max-ap-shoes-3Rdq04.png');
INSERT INTO "public"."related_image_shoes" VALUES (747, 85, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/7131df45-bbcc-42c1-9c50-de9372319b62/sb-force-58-skate-shoe-DvWCT6.png');
INSERT INTO "public"."related_image_shoes" VALUES (748, 85, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/0c68ef4a-f0bf-4022-8605-7aee9d1cc127/air-max-systm-shoes-hLmQ85.png');
INSERT INTO "public"."related_image_shoes" VALUES (749, 85, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/030bc0e1-869b-4751-b2fe-a85c78393831/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (750, 85, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/38f18383-a5eb-40aa-b439-0f046190daf1/downshifter-12-road-running-shoes-kQLnZn.png');
INSERT INTO "public"."related_image_shoes" VALUES (751, 85, 'https://static.nike.com/a/images/t_default/ab4190b2-3661-41e6-8a9e-29ca541a303e/air-pegasus-89-shoes-BwcVd8.png');
INSERT INTO "public"."related_image_shoes" VALUES (752, 85, 'https://static.nike.com/a/images/t_default/ab4190b2-3661-41e6-8a9e-29ca541a303e/air-pegasus-89-shoes-BwcVd8.png');
INSERT INTO "public"."related_image_shoes" VALUES (753, 86, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/aqcdmfttkq4cuvv9nuwx/air-max-plus-iii-shoes-Qw64gh.png');
INSERT INTO "public"."related_image_shoes" VALUES (754, 86, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/vzdzpkseorrrhea2oarm/air-max-plus-iii-shoes-Qw64gh.png');
INSERT INTO "public"."related_image_shoes" VALUES (755, 86, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/cyxn3bmlcrp0epw3r8sa/air-max-plus-iii-shoes-Qw64gh.png');
INSERT INTO "public"."related_image_shoes" VALUES (756, 86, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/yi2lbao9qw0eaqsgsonc/air-max-plus-iii-shoes-Qw64gh.png');
INSERT INTO "public"."related_image_shoes" VALUES (757, 86, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/enfwf2dts2zb129cjgw5/air-max-plus-iii-shoes-Qw64gh.png');
INSERT INTO "public"."related_image_shoes" VALUES (758, 86, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/pz0ntqxgejm0x03plplf/air-max-plus-iii-shoes-Qw64gh.png');
INSERT INTO "public"."related_image_shoes" VALUES (759, 86, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/jy5tqa0uwa6jthrebgbw/air-max-plus-iii-shoes-Qw64gh.png');
INSERT INTO "public"."related_image_shoes" VALUES (760, 86, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/erzfadfpnzgkxt0gn2ya/air-max-plus-shoes-Z0D37G.png');
INSERT INTO "public"."related_image_shoes" VALUES (761, 86, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/4162cdef-ed2d-4dff-b777-e5afed5c4bd3/air-max-plus-3-shoes-m3bzP8.png');
INSERT INTO "public"."related_image_shoes" VALUES (762, 86, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/31c53347-5ba0-4683-898d-7cca02ae38bb/air-max-95-essential-shoe-6n9HLv.png');
INSERT INTO "public"."related_image_shoes" VALUES (763, 86, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/247616b5-1d3b-4777-abbb-d5e08a924b78/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (764, 86, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/030bc0e1-869b-4751-b2fe-a85c78393831/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (765, 86, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (766, 86, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6ff6e596-2f93-47f8-98a4-611de407bffb/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (767, 86, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/c2099196-c591-4117-b236-55ad460bbcb4/invincible-3-road-running-shoes-Wwmmlp.png');
INSERT INTO "public"."related_image_shoes" VALUES (768, 86, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/5fe30fc4-2645-4d1e-b3f8-70da145e0f74/air-max-97-shoes-EBZrb8.png');
INSERT INTO "public"."related_image_shoes" VALUES (769, 86, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2bee9c0d-b310-4d9e-a75a-754e8ddc281c/air-max-plus-se-shoes-65n6lQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (770, 86, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ea9e14ef-1953-41b5-9cda-c53b9079d3d6/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (771, 86, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/yzytjyjnar2wzjiriibk/air-max-97-shoes-EBZrb8.png');
INSERT INTO "public"."related_image_shoes" VALUES (772, 86, 'https://static.nike.com/a/images/t_default/disuwww5uxkqulu2aivh/air-max-plus-iii-shoes-Qw64gh.png');
INSERT INTO "public"."related_image_shoes" VALUES (773, 86, 'https://static.nike.com/a/images/t_default/disuwww5uxkqulu2aivh/air-max-plus-iii-shoes-Qw64gh.png');
INSERT INTO "public"."related_image_shoes" VALUES (774, 87, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ea3a034a-351d-4d5e-9e39-6ebe24eebd23/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (775, 87, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b2a37016-a8c8-4700-9215-7814ef2a99a5/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (776, 87, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d35fd628-8d5f-441c-9151-fb39b053b2ed/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (777, 87, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/f3c594b4-5e8a-4327-87c4-4d55aa3aa69e/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (778, 87, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/3587121c-5ff8-45b0-90b2-2cef3cb78b61/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (779, 87, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/c2bd1f9d-2bfb-4f4d-9f92-23bc7eadc95e/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (780, 87, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/376a8a9e-7bcf-496a-bb03-1f8ae6148036/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (781, 87, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/5bd93a59-5883-4ebe-94fa-38a541acb25c/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (782, 87, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/121c82da-5abf-4866-90c1-100025467577/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (783, 87, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/cdea9b12-e7f2-452c-9649-1aa6ba2370b1/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (784, 87, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b7fd9018-e0ce-4adc-9320-a05b67eef078/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (785, 87, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/4a1cbd76-3616-47c4-9c16-da16012a8481/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (786, 87, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/fabe3ef1-263d-42ee-b24b-09a9a47a61ee/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (787, 87, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/4a1cbd76-3616-47c4-9c16-da16012a8481/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (788, 87, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/cef1c1e1-8e83-4a1c-9202-8c60bd221a76/air-jordan-1-mid-se-craft-shoes-RmP7J6.png');
INSERT INTO "public"."related_image_shoes" VALUES (789, 87, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/c3dead19-8a8f-42b7-8de7-d56cc9d8550f/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png');
INSERT INTO "public"."related_image_shoes" VALUES (790, 87, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e20f7d6b-77f8-4a99-99e2-b2a2cb69de46/air-jordan-1-mid-se-craft-shoes-RmP7J6.png');
INSERT INTO "public"."related_image_shoes" VALUES (791, 87, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b38bcfe5-9432-4535-bed1-734c96ab7d88/air-jordan-i-high-g-golf-shoes-qKzTBg.png');
INSERT INTO "public"."related_image_shoes" VALUES (792, 87, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/38e38dca-6cc5-43af-8ff6-e81becc96619/air-jordan-1-mid-se-shoes-p48zQ5.png');
INSERT INTO "public"."related_image_shoes" VALUES (793, 87, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ac62e931-9110-46ff-87fb-3824bbee4f25/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (794, 87, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0f77e8d9-311f-42a4-8951-478ddf1e6da4/air-jordan-1-mid-shoes-86f1ZW.png');
INSERT INTO "public"."related_image_shoes" VALUES (795, 87, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (796, 87, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d06ad3b3-dddc-435d-98af-690066dc8143/air-jordan-1-low-shoes-459b4T.png');
INSERT INTO "public"."related_image_shoes" VALUES (797, 87, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/fd17b420-b388-4c8a-aaaa-e0a98ddf175f/dunk-high-retro-shoe-DdRmMZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (798, 87, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/030bc0e1-869b-4751-b2fe-a85c78393831/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (799, 87, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/fabe3ef1-263d-42ee-b24b-09a9a47a61ee/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (800, 87, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/fabe3ef1-263d-42ee-b24b-09a9a47a61ee/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (801, 88, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/4c3a6d07-1ed6-40cb-a3db-59804f4c3ec6/air-max-95-shoes-DWVbzZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (802, 88, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/dc6d80e3-f5f6-46a7-b0b6-8121e5e283be/air-max-95-shoes-DWVbzZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (803, 88, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/eecc92ee-338d-47df-9380-a5c25743718a/air-max-95-shoes-DWVbzZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (804, 88, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/cc125ae5-220d-4653-8c35-1a16f4fc1521/air-max-95-shoes-DWVbzZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (805, 88, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/fcbb87d7-1c6f-4808-8105-bb4c8bb638fa/air-max-95-shoes-DWVbzZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (806, 88, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e13d3591-8b3b-4662-9d38-f14eb6028547/air-max-95-shoes-DWVbzZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (807, 88, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/a5842938-7dfb-4028-bf96-e0491fa29fc0/air-max-95-shoes-DWVbzZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (808, 88, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/9bf76a6f-6d04-4a9d-a548-0fc4bd8620c7/air-max-95-shoes-DWVbzZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (809, 88, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/7bacf65d-1b4e-4c6f-9140-305c521fde1a/air-max-95-shoes-DWVbzZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (810, 88, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/4786ffd7-a45a-4f2c-b8fa-cb2ec4c76f84/air-max-95-shoes-DWVbzZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (811, 88, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_5.75/0c6e0489-dad0-4e30-8842-5f25cffda6da/air-max-95-shoes-DWVbzZ.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (812, 88, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/208ac031-f5de-44ed-9843-f96290d8a9fe/air-max-95-shoes-DWVbzZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (813, 88, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/2d20e9f6-989a-4df4-afe8-ff677e801aeb/air-max-95-shoes-DWVbzZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (814, 88, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/9218d532-2922-4d04-b556-58a7a1f2c2e7/air-max-95-shoes-DWVbzZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (815, 88, 'https://static.nike.com/nike-prod-cld/images/t_PDP_144_v1/f_auto/static/en_gb-DYO/DYO.png');
INSERT INTO "public"."related_image_shoes" VALUES (816, 88, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/208ac031-f5de-44ed-9843-f96290d8a9fe/air-max-95-shoes-DWVbzZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (817, 88, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/31c53347-5ba0-4683-898d-7cca02ae38bb/air-max-95-essential-shoe-6n9HLv.png');
INSERT INTO "public"."related_image_shoes" VALUES (818, 88, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/disuwww5uxkqulu2aivh/air-max-plus-iii-shoes-Qw64gh.png');
INSERT INTO "public"."related_image_shoes" VALUES (819, 88, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/yzytjyjnar2wzjiriibk/air-max-97-shoes-EBZrb8.png');
INSERT INTO "public"."related_image_shoes" VALUES (820, 88, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/5fe30fc4-2645-4d1e-b3f8-70da145e0f74/air-max-97-shoes-EBZrb8.png');
INSERT INTO "public"."related_image_shoes" VALUES (821, 88, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/cc9a341c-245c-40ba-976f-764d6c4921c2/air-max-97-se-shoes-Q9Jrdn.png');
INSERT INTO "public"."related_image_shoes" VALUES (822, 88, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/erzfadfpnzgkxt0gn2ya/air-max-plus-shoes-Z0D37G.png');
INSERT INTO "public"."related_image_shoes" VALUES (823, 88, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6ff6e596-2f93-47f8-98a4-611de407bffb/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (824, 88, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/4162cdef-ed2d-4dff-b777-e5afed5c4bd3/air-max-plus-3-shoes-m3bzP8.png');
INSERT INTO "public"."related_image_shoes" VALUES (825, 88, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/52332e7e-fcac-427e-b0cf-cd603a29d90a/air-vapormax-2023-flyknit-shoes-xjVzw5.png');
INSERT INTO "public"."related_image_shoes" VALUES (826, 88, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/93869e23-0dba-425d-b20b-b12893181d68/air-max-pulse-shoes-QShhG8.png');
INSERT INTO "public"."related_image_shoes" VALUES (827, 88, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/4a793797-a7e0-4214-9ae6-a1235113be86/air-max-pulse-shoes-QShhG8.png');
INSERT INTO "public"."related_image_shoes" VALUES (828, 88, 'https://static.nike.com/a/images/t_default/2d20e9f6-989a-4df4-afe8-ff677e801aeb/air-max-95-shoes-DWVbzZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (829, 88, 'https://static.nike.com/a/images/t_default/2d20e9f6-989a-4df4-afe8-ff677e801aeb/air-max-95-shoes-DWVbzZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (830, 89, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/5064872f-99f4-4f98-87cc-bbb31e175044/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (831, 89, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/581cd6d7-ba47-4c3c-8d86-0037769a1a06/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (832, 89, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/fce3ed02-3d92-4da2-b5bd-3bbb322b2ca0/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (833, 89, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/148cf293-47cd-4ffe-916b-9722244a8881/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (834, 89, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/45630ada-aae1-4544-864f-badf759f5722/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (835, 89, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/cdd95b60-5312-4450-a9f8-10e3c2894e38/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (836, 89, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f2b5042e-c770-4f0c-8858-11f00c5cd6eb/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (837, 89, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/8566481b-5ffb-4fda-840b-a14b788f574d/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (838, 89, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/7f84ce7f-e4ed-4764-b503-6d2ceb80136c/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (839, 89, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/605026d0-9407-44e1-b9f2-0cb21d66158e/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (840, 89, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/5b68588e-3b96-4a5f-b706-4257efb8a091/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (841, 89, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/14bd4ca7-be4a-42e8-989d-363c71df873a/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (842, 89, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/08f86361-0550-4452-bce0-5d7de3f34cb6/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (843, 89, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/b1c03751-c862-412f-97d7-0866737a84e6/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (844, 89, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/38d09acd-992c-42ef-a00d-e76a5151c272/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (845, 89, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/6fb0b6db-52cf-4b11-9be9-81f540d063d2/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (846, 89, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/95c756c8-638d-4dc7-a8ed-1bf11654c71c/alphafly-2-eliud-kipchoge-road-racing-shoes-3LZ8Nj.png');
INSERT INTO "public"."related_image_shoes" VALUES (847, 89, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6925b9cc-7fa2-411c-b291-153490f4cbed/paris-saint-germain-club-football-unstructured-cap-D1kNVf.png');
INSERT INTO "public"."related_image_shoes" VALUES (848, 89, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d9248042-a711-4441-80bb-d566b0835c40/air-jordan-1-mid-se-shoes-tKS2kt.png');
INSERT INTO "public"."related_image_shoes" VALUES (849, 89, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f605198b-2631-4c3f-a91c-9f0be74444ba/apex-acg-bucket-hat-SzBh47.png');
INSERT INTO "public"."related_image_shoes" VALUES (850, 89, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e3d0c449-a732-4b11-9430-c80fd3cbf2fd/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (851, 89, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/01be12c8-801c-4c09-abb8-8d2920aa1f6f/windrunner-repel-running-jacket-fw4NBt.png');
INSERT INTO "public"."related_image_shoes" VALUES (852, 89, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2ab0377c-f43a-43a3-8fea-28ff5b0614f6/tiger-woods-structured-dri-fit-adv-club-cap-kfnNt4.png');
INSERT INTO "public"."related_image_shoes" VALUES (853, 89, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ded44f24-aed4-47e2-89ac-2a7e64e52f54/dri-fit-adv-club-unstructured-swoosh-cap-gtlmqK.png');
INSERT INTO "public"."related_image_shoes" VALUES (854, 89, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f153b4e4-9069-44ae-bf86-f70ae8ecbaa1/air-force-1-07-easyon-shoes-lpjTWM.png');
INSERT INTO "public"."related_image_shoes" VALUES (855, 89, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/10089a82-5e61-4e32-b8a9-930d9c8ea321/flex-plus-2-younger-shoes-JrXgvn.png');
INSERT INTO "public"."related_image_shoes" VALUES (856, 89, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2479387b-9021-430a-a4f4-8049b088c2dd/dri-fit-totality-18cm-unlined-shorts-MDJlhD.png');
INSERT INTO "public"."related_image_shoes" VALUES (857, 89, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/825262b4-872c-457b-8727-9af68530c9a4/unlimited-dri-fit-straight-leg-versatile-trousers-jh9jwP.png');
INSERT INTO "public"."related_image_shoes" VALUES (858, 89, 'https://static.nike.com/a/images/t_default/08f86361-0550-4452-bce0-5d7de3f34cb6/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (859, 89, 'https://static.nike.com/a/images/t_default/08f86361-0550-4452-bce0-5d7de3f34cb6/flyby-mid-3-basketball-shoes-jFHsxb.png');
INSERT INTO "public"."related_image_shoes" VALUES (860, 90, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/2cd71c2e-e805-4c1e-ac32-364674cff58b/jordan-play-slides-2mCjgT.png');
INSERT INTO "public"."related_image_shoes" VALUES (861, 90, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d51571cc-3650-420b-a579-a57723b2125e/jordan-play-slides-2mCjgT.png');
INSERT INTO "public"."related_image_shoes" VALUES (862, 90, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/43ce2d77-61b2-48bf-a4e4-acae5db08dfb/jordan-play-slides-2mCjgT.png');
INSERT INTO "public"."related_image_shoes" VALUES (863, 90, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/af849ea0-8846-43a3-b8e1-8fb90bd1ddc8/jordan-play-slides-2mCjgT.png');
INSERT INTO "public"."related_image_shoes" VALUES (864, 90, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7e2eb8f5-6e0b-4792-8975-268108a7a19c/jordan-play-slides-2mCjgT.png');
INSERT INTO "public"."related_image_shoes" VALUES (865, 90, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/8e69d288-1b2e-49dc-a2a9-0a96fce4623d/jordan-play-slides-2mCjgT.png');
INSERT INTO "public"."related_image_shoes" VALUES (866, 90, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/f8e4a75e-387c-4347-83f2-237ba865ddc8/jordan-play-slides-2mCjgT.png');
INSERT INTO "public"."related_image_shoes" VALUES (867, 90, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/bae24761-57c5-444b-ba25-cd2b595ba372/jordan-play-slides-2mCjgT.png');
INSERT INTO "public"."related_image_shoes" VALUES (868, 90, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/aa782209-3897-4110-a9e6-631cf4528b42/jordan-play-slides-2mCjgT.png');
INSERT INTO "public"."related_image_shoes" VALUES (869, 90, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/501bd9b0-3cac-4b05-a77e-a56f3aa586ff/jordan-play-slides-2mCjgT.png');
INSERT INTO "public"."related_image_shoes" VALUES (870, 90, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/f8e4a75e-387c-4347-83f2-237ba865ddc8/jordan-play-slides-2mCjgT.png');
INSERT INTO "public"."related_image_shoes" VALUES (871, 90, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/da06511d-0d8f-43a4-b89c-ec894ad77230/jordan-post-slides-l46X9x.png');
INSERT INTO "public"."related_image_shoes" VALUES (872, 90, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/c63ade2a-fd96-43fe-8851-6de111afdf72/jordan-super-play-slides-Cfj5Q4.png');
INSERT INTO "public"."related_image_shoes" VALUES (873, 90, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/36ca2219-7c8a-4cf6-ae0b-dd38926e5b88/offcourt-adjust-slides-6L2C07.png');
INSERT INTO "public"."related_image_shoes" VALUES (874, 90, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/22dbb81f-bb9b-43a9-a854-cf1e4ca4a2c0/offcourt-adjust-slides-6L2C07.png');
INSERT INTO "public"."related_image_shoes" VALUES (875, 90, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/31bda67c-57e4-4b21-bd8e-b422c304bcfc/victori-one-slides-QTTJHP.png');
INSERT INTO "public"."related_image_shoes" VALUES (876, 90, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/70a2ac76-e8a6-463a-8486-927818802a21/asuna-2-slides-LMfcKG.png');
INSERT INTO "public"."related_image_shoes" VALUES (877, 90, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/fb4990f8-a0fe-4043-ad5b-7eaac878505d/offcourt-slides-ZBxx9j.png');
INSERT INTO "public"."related_image_shoes" VALUES (878, 90, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/8e345159-74fb-45ff-9826-52754b1255f8/asuna-2-slides-LMfcKG.png');
INSERT INTO "public"."related_image_shoes" VALUES (879, 90, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/d9b53749-3841-40ed-8c0e-beaecd31d9fb/offcourt-adjust-slides-6L2C07.png');
INSERT INTO "public"."related_image_shoes" VALUES (880, 90, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/030bc0e1-869b-4751-b2fe-a85c78393831/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (881, 90, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/35522a68-54d2-489c-92a1-4c413aacc489/victori-one-printed-slides-2ZsMWk.png');
INSERT INTO "public"."related_image_shoes" VALUES (882, 90, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/aa782209-3897-4110-a9e6-631cf4528b42/jordan-play-slides-2mCjgT.png');
INSERT INTO "public"."related_image_shoes" VALUES (883, 90, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/aa782209-3897-4110-a9e6-631cf4528b42/jordan-play-slides-2mCjgT.png');
INSERT INTO "public"."related_image_shoes" VALUES (884, 91, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/fb7eda3c-5ac8-4d05-a18f-1c2c5e82e36e/blazer-mid-77-vintage-shoes-dNWPTj.png');
INSERT INTO "public"."related_image_shoes" VALUES (885, 91, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/cacf1d36-8769-41b2-8616-a351efae9ce5/blazer-mid-77-vintage-shoes-dNWPTj.png');
INSERT INTO "public"."related_image_shoes" VALUES (886, 91, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/6eea83ac-7862-459e-abf5-2f566e2f0ac1/blazer-mid-77-vintage-shoes-dNWPTj.png');
INSERT INTO "public"."related_image_shoes" VALUES (887, 91, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/ef4dbed6-c621-4879-8db3-f87296bfb570/blazer-mid-77-vintage-shoes-dNWPTj.png');
INSERT INTO "public"."related_image_shoes" VALUES (888, 91, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/2d9fe33e-9a31-4e7b-9d7c-c4ecf7abd2bb/blazer-mid-77-vintage-shoes-dNWPTj.png');
INSERT INTO "public"."related_image_shoes" VALUES (889, 91, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/ee4cdc5a-36bb-40f5-bf8d-a441674bdfd6/blazer-mid-77-vintage-shoes-dNWPTj.png');
INSERT INTO "public"."related_image_shoes" VALUES (890, 91, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/3844259f-f989-464c-a143-b3a274b35ae9/blazer-mid-77-vintage-shoes-dNWPTj.png');
INSERT INTO "public"."related_image_shoes" VALUES (891, 91, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/adc43e71-ff78-4d39-a95f-ba86aa88565f/blazer-mid-77-vintage-shoes-dNWPTj.png');
INSERT INTO "public"."related_image_shoes" VALUES (892, 91, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/eb25805f-6064-42a1-aa7a-0e4c426bc374/blazer-mid-77-vintage-shoes-dNWPTj.png');
INSERT INTO "public"."related_image_shoes" VALUES (893, 91, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_0/8751f64f-406b-4f70-b6b0-9aca362c1faf/blazer-mid-77-vintage-shoes-dNWPTj.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (894, 91, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/389b709e-5102-4e55-aa5d-07099b500831/blazer-mid-77-vintage-shoes-dNWPTj.png');
INSERT INTO "public"."related_image_shoes" VALUES (895, 91, 'https://static.nike.com/nike-prod-cld/images/t_PDP_144_v1/f_auto/static/en_gb-DYO/DYO.png');
INSERT INTO "public"."related_image_shoes" VALUES (896, 91, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (897, 91, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/fambaubeufwpravdy1xs/sb-zoom-blazer-mid-skate-shoe-cM9sg4.png');
INSERT INTO "public"."related_image_shoes" VALUES (898, 91, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/a751495d-1cb9-4976-ab4f-9a2189464e8f/blazer-mid-77-next-nature-shoes-pDwZfH.png');
INSERT INTO "public"."related_image_shoes" VALUES (899, 91, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/600fc4b5-3b5e-4c10-8145-ed04773bbd53/blazer-low-77-vintage-shoes-5Gw9TZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (900, 91, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/8e158065-9466-46b0-9f94-32d15c271d0c/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (901, 91, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/a42a5d53-2f99-4e78-a081-9d07a2d0774a/air-force-1-07-shoe-HWWX9W.png');
INSERT INTO "public"."related_image_shoes" VALUES (902, 91, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/cc7f9ed1-bb4b-4a8a-944d-586c7e05a03a/blazer-mid-77-shoes-pKBLXb.png');
INSERT INTO "public"."related_image_shoes" VALUES (903, 91, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/81790969-727e-41d6-b821-50c49ad9af4c/blazer-low-77-jumbo-shoes-RGNB3j.png');
INSERT INTO "public"."related_image_shoes" VALUES (904, 91, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e777c881-5b62-4250-92a6-362967f54cca/air-force-1-07-shoe-NMmm1B.png');
INSERT INTO "public"."related_image_shoes" VALUES (905, 91, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/0447d3b3-28d3-4ba3-a6d6-deb0b21558af/air-force-1-mid-07-shoe-9S2mB4.png');
INSERT INTO "public"."related_image_shoes" VALUES (906, 91, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/d9f1d9ee-a848-4a36-aab9-48b241078ebb/air-force-1-le-older-shoe-TDGHCN.png');
INSERT INTO "public"."related_image_shoes" VALUES (907, 91, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/b6nzxw9bb3tvwllpbpk7/everyday-lightweight-training-crew-socks-Gvl3WS.png');
INSERT INTO "public"."related_image_shoes" VALUES (908, 91, 'https://static.nike.com/a/images/t_default/389b709e-5102-4e55-aa5d-07099b500831/blazer-mid-77-vintage-shoes-dNWPTj.png');
INSERT INTO "public"."related_image_shoes" VALUES (909, 91, 'https://static.nike.com/a/images/t_default/389b709e-5102-4e55-aa5d-07099b500831/blazer-mid-77-vintage-shoes-dNWPTj.png');
INSERT INTO "public"."related_image_shoes" VALUES (910, 92, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/88c3280a-1b77-4cf9-957f-d71b91e90393/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (911, 92, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f1113444-5d90-4d09-a3ce-86c0bb99d9af/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (912, 92, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/3b591f32-0233-4df9-b8e7-1defaa8d8691/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (913, 92, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/3a1c557d-b1e9-4f98-b1c4-8c15c008ec06/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (914, 92, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/64aaa0e6-9d3b-4c2c-b9b7-fef9e0b56162/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (915, 92, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/cd440caf-8111-4d81-8480-abf68017d1c3/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (916, 92, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/4cdf48f4-6329-49d7-8f93-511669e8d2e0/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (917, 92, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/ec5ce000-8c7f-44b9-9567-4419b3f6d2d9/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (918, 92, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_1.48/3781c5cc-ea1e-4df9-86db-343bf0ec2c46/revolution-6-road-running-shoes-NC0P7k.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (919, 92, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/2a87e3da-58fd-4cdf-8b11-aee7501a8ac5/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (920, 92, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/bdb9af6b-24e3-40df-b843-4e7a51a33833/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (921, 92, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/bdbed338-76cb-413e-8453-5a222a33dd7e/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (922, 92, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/57fd82d2-4a4c-491c-8829-6a83cf49e245/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (923, 92, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/8de4f342-917b-4690-be10-80946f093287/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (924, 92, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/8afdbad8-a39d-4b8f-a979-c3dc4a512412/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (925, 92, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/fc6e4b88-6563-42de-bd8e-54600cdf04e0/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (926, 92, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/b05afb11-db22-461d-b94e-49bdc316b445/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (927, 92, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/bdbed338-76cb-413e-8453-5a222a33dd7e/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (928, 92, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/bdb9af6b-24e3-40df-b843-4e7a51a33833/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (929, 92, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ac871484-8738-44cf-abbd-4d347ad536e9/revolution-6-flyease-easy-on-off-road-running-shoes-XvR99K.png');
INSERT INTO "public"."related_image_shoes" VALUES (930, 92, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/4355b135-68c3-43ec-b96d-eb7d17823127/flex-experience-run-11-road-running-shoes-rB6h46.png');
INSERT INTO "public"."related_image_shoes" VALUES (931, 92, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/31f2acf8-1aad-4267-b7d3-74bef760845d/revolution-6-road-running-shoes-vjrrwc.png');
INSERT INTO "public"."related_image_shoes" VALUES (932, 92, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/d58dc67a-1479-4331-ab74-36d5188e05a7/free-run-5-road-running-shoes-m8L9mr.png');
INSERT INTO "public"."related_image_shoes" VALUES (933, 92, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f7741640-0220-4e86-b578-6cde8c650883/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (934, 92, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/79e134c2-497c-44c7-afa5-ba967bc60a5a/quest-5-road-running-shoes-8wZR01.png');
INSERT INTO "public"."related_image_shoes" VALUES (935, 92, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/3cdb87e5-eb54-4742-9d8e-3fd22704a594/rival-fly-3-road-racing-shoes-XbhTCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (936, 92, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2ca57197-5ff7-4b13-a515-7223bcc859cb/structure-24-road-running-shoes-9wCgmv.png');
INSERT INTO "public"."related_image_shoes" VALUES (937, 92, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2183c0b4-d89b-4ba3-927c-ca0abc382f82/revolution-6-road-running-shoes-vjrrwc.png');
INSERT INTO "public"."related_image_shoes" VALUES (938, 92, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/10e52152-bb0c-4c16-b263-48c515627b5a/renew-ride-3-road-running-shoes-fzS091.png');
INSERT INTO "public"."related_image_shoes" VALUES (939, 92, 'https://static.nike.com/a/images/t_default/b05afb11-db22-461d-b94e-49bdc316b445/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (940, 92, 'https://static.nike.com/a/images/t_default/b05afb11-db22-461d-b94e-49bdc316b445/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (941, 93, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/jlhsgro2k4kjkczi63qt/killshot-2-leather-shoe-DqWZ4j.png');
INSERT INTO "public"."related_image_shoes" VALUES (942, 93, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/njcvr2v04hry05qo2ovt/killshot-2-leather-shoe-DqWZ4j.png');
INSERT INTO "public"."related_image_shoes" VALUES (943, 93, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/ne2nefqndzzwz01swskw/killshot-2-leather-shoe-DqWZ4j.png');
INSERT INTO "public"."related_image_shoes" VALUES (944, 93, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/qrqehie3tnppk5bpxhx2/killshot-2-leather-shoe-DqWZ4j.png');
INSERT INTO "public"."related_image_shoes" VALUES (945, 93, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/fdo3tgnypep0tza18mai/killshot-2-leather-shoe-DqWZ4j.png');
INSERT INTO "public"."related_image_shoes" VALUES (946, 93, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/h5p0tmfjbgh0iiub0ngo/killshot-2-leather-shoe-DqWZ4j.png');
INSERT INTO "public"."related_image_shoes" VALUES (947, 93, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_2.35/e4400ed6-5312-4191-8713-c88a7b595f72/killshot-2-leather-shoe-DqWZ4j.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (948, 93, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/dlyapben5bidcjm1vmfh/killshot-2-leather-shoe-DqWZ4j.png');
INSERT INTO "public"."related_image_shoes" VALUES (949, 93, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/i1-45a98dff-ee55-4c43-be36-6e128a417bdd/killshot-2-leather-shoe-DqWZ4j.png');
INSERT INTO "public"."related_image_shoes" VALUES (950, 93, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/i1-45a98dff-ee55-4c43-be36-6e128a417bdd/killshot-2-leather-shoe-DqWZ4j.png');
INSERT INTO "public"."related_image_shoes" VALUES (951, 93, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/3c999c55-2e5f-42ba-b0ff-9e7742fc3975/sb-pogo-skate-shoes-MpL6DC.png');
INSERT INTO "public"."related_image_shoes" VALUES (952, 93, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/5742f317-d0c8-4d01-8a66-81d6f4bc73ca/sb-zoom-blazer-low-pro-gt-skate-shoes-ckWK6g.png');
INSERT INTO "public"."related_image_shoes" VALUES (953, 93, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f139155d-5114-4539-892d-87de7d5ac40d/blazer-low-77-vintage-shoes-HmmkdX.png');
INSERT INTO "public"."related_image_shoes" VALUES (954, 93, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b8165104-b53d-4876-9154-f126165174f8/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (955, 93, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/aaac8e7b-b62e-4023-9844-7ac4a0577f0a/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (956, 93, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/cf4a5556-6163-4abf-9b83-0f89b4766100/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (957, 93, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/d550e5ad-44bc-4b04-b9e7-53e5f65cf475/sb-chron-2-canvas-skate-shoe-zdBtfH.png');
INSERT INTO "public"."related_image_shoes" VALUES (958, 93, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (959, 93, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ec2539ca-f2a1-47b3-a5a0-18206cd4023e/blazer-low-77-shoes-FW01p3.png');
INSERT INTO "public"."related_image_shoes" VALUES (960, 93, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/db7c14f3-adbe-4eee-9534-d372808ce154/sb-force-58-skate-shoes-LJNW5L.png');
INSERT INTO "public"."related_image_shoes" VALUES (961, 93, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/146ac543-f69c-441a-a4dd-2e1add33b6ea/air-force-1-07-shoes-VWCc04.png');
INSERT INTO "public"."related_image_shoes" VALUES (962, 93, 'https://static.nike.com/a/images/t_default/dlyapben5bidcjm1vmfh/killshot-2-leather-shoe-DqWZ4j.png');
INSERT INTO "public"."related_image_shoes" VALUES (963, 93, 'https://static.nike.com/a/images/t_default/dlyapben5bidcjm1vmfh/killshot-2-leather-shoe-DqWZ4j.png');
INSERT INTO "public"."related_image_shoes" VALUES (964, 94, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/ff7ddb45-ab8a-47a3-b56f-5572f7b82cc3/dunk-low-retro-shoes-RqjhPl.png');
INSERT INTO "public"."related_image_shoes" VALUES (965, 94, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/0e4c11fd-50c4-43e5-9607-3dfe4f1ae801/dunk-low-retro-shoes-RqjhPl.png');
INSERT INTO "public"."related_image_shoes" VALUES (966, 94, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/4628e4fb-01c0-4fe2-8272-03ac774025b7/dunk-low-retro-shoes-RqjhPl.png');
INSERT INTO "public"."related_image_shoes" VALUES (967, 94, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/1b440b62-ae82-44cc-a6b1-4a6cc50acd80/dunk-low-retro-shoes-RqjhPl.png');
INSERT INTO "public"."related_image_shoes" VALUES (968, 94, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/0997543b-f442-46c2-871f-2cccc15a3e44/dunk-low-retro-shoes-RqjhPl.png');
INSERT INTO "public"."related_image_shoes" VALUES (969, 94, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/b5e252f4-453f-4b0d-837a-2c1d311fe3e3/dunk-low-retro-shoes-RqjhPl.png');
INSERT INTO "public"."related_image_shoes" VALUES (970, 94, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/cf4dd23b-4ef8-414c-ab11-8abd8f8739b0/dunk-low-retro-shoes-RqjhPl.png');
INSERT INTO "public"."related_image_shoes" VALUES (971, 94, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/6a8a407e-735d-40f0-8026-d796b2aba719/dunk-low-retro-shoes-RqjhPl.png');
INSERT INTO "public"."related_image_shoes" VALUES (972, 94, 'https://static.nike.com/a/images/t_default/3a727ff4-9bb2-471c-8ee0-80e0e8148f77/dunk-low-retro-shoes-RqjhPl.png');
INSERT INTO "public"."related_image_shoes" VALUES (973, 94, 'https://static.nike.com/a/images/t_default/3a727ff4-9bb2-471c-8ee0-80e0e8148f77/dunk-low-retro-shoes-RqjhPl.png');
INSERT INTO "public"."related_image_shoes" VALUES (974, 95, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/7ea697ac-86c7-4ae1-b609-2786657147c2/court-vision-mid-next-nature-shoes-VKCWFj.png');
INSERT INTO "public"."related_image_shoes" VALUES (975, 95, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f21a2684-334c-4d4b-9a25-581eee5fd5ea/court-vision-mid-next-nature-shoes-VKCWFj.png');
INSERT INTO "public"."related_image_shoes" VALUES (976, 95, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/8735f137-8bd9-424f-850c-9f0255470a9d/court-vision-mid-next-nature-shoes-VKCWFj.png');
INSERT INTO "public"."related_image_shoes" VALUES (977, 95, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99d1a773-d96b-49a4-bc89-d2367c7b6315/court-vision-mid-next-nature-shoes-VKCWFj.png');
INSERT INTO "public"."related_image_shoes" VALUES (978, 95, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/03675c39-6a1e-4053-a9b6-54fe4b540a72/court-vision-mid-next-nature-shoes-VKCWFj.png');
INSERT INTO "public"."related_image_shoes" VALUES (979, 95, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/25d5c2af-1572-4296-9dd1-6d9eba0fbaf3/court-vision-mid-next-nature-shoes-VKCWFj.png');
INSERT INTO "public"."related_image_shoes" VALUES (980, 95, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/5a35e79e-f955-46f0-8490-82a32c5de183/court-vision-mid-next-nature-shoes-VKCWFj.png');
INSERT INTO "public"."related_image_shoes" VALUES (981, 95, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/8fd1ada3-8ddf-4195-8ca0-7d07a4e04aaf/court-vision-mid-next-nature-shoes-VKCWFj.png');
INSERT INTO "public"."related_image_shoes" VALUES (982, 95, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_1.83/1fad3e1c-a455-4849-a69b-30531f54c1e6/court-vision-mid-next-nature-shoes-VKCWFj.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (983, 95, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/a995b23a-7e1a-4a0d-91b7-dd418e9f4e74/court-vision-mid-next-nature-shoes-VKCWFj.png');
INSERT INTO "public"."related_image_shoes" VALUES (984, 95, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/a4b9a6fb-fbc5-485b-ae0b-f1263d3df85a/court-vision-mid-next-nature-shoes-VKCWFj.png');
INSERT INTO "public"."related_image_shoes" VALUES (985, 95, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/a995b23a-7e1a-4a0d-91b7-dd418e9f4e74/court-vision-mid-next-nature-shoes-VKCWFj.png');
INSERT INTO "public"."related_image_shoes" VALUES (986, 95, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (987, 95, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/820fbfd3-afd1-4f8f-b3b4-d707e851d9d6/court-vision-low-next-nature-shoes-N2fFHb.png');
INSERT INTO "public"."related_image_shoes" VALUES (988, 95, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/468e4793-23a0-4f1d-86f6-150cd6e42ad3/court-vision-low-next-nature-shoes-N2fFHb.png');
INSERT INTO "public"."related_image_shoes" VALUES (989, 95, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/0447d3b3-28d3-4ba3-a6d6-deb0b21558af/air-force-1-mid-07-shoe-9S2mB4.png');
INSERT INTO "public"."related_image_shoes" VALUES (990, 95, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/aaac8e7b-b62e-4023-9844-7ac4a0577f0a/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (991, 95, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/03ae1fa1-b497-4d21-92ac-ccdf7cb8cbe9/nikecourt-royale-2-next-nature-shoes-RRcr20.png');
INSERT INTO "public"."related_image_shoes" VALUES (992, 95, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/235ac5d0-14fa-4372-a821-a4c0d95e5426/court-vision-low-next-nature-shoes-p3CnbT.png');
INSERT INTO "public"."related_image_shoes" VALUES (993, 95, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ca2b356e-8aa3-4355-9e6f-d76a70c9dcf0/sb-chron-2-canvas-skate-shoe-zdBtfH.png');
INSERT INTO "public"."related_image_shoes" VALUES (994, 95, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/cf4a5556-6163-4abf-9b83-0f89b4766100/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (995, 95, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/a7812f46-f0e1-4df0-b0f3-ceb5dc0a41cc/nikecourt-zoom-lite-3-hard-court-tennis-shoes-rzcXmR.png');
INSERT INTO "public"."related_image_shoes" VALUES (996, 95, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/3ca0e8ff-9564-46b0-a808-072cc0e8053a/sb-force-58-skate-shoe-HNFTvl.png');
INSERT INTO "public"."related_image_shoes" VALUES (997, 95, 'https://static.nike.com/a/images/t_default/a4b9a6fb-fbc5-485b-ae0b-f1263d3df85a/court-vision-mid-next-nature-shoes-VKCWFj.png');
INSERT INTO "public"."related_image_shoes" VALUES (998, 95, 'https://static.nike.com/a/images/t_default/a4b9a6fb-fbc5-485b-ae0b-f1263d3df85a/court-vision-mid-next-nature-shoes-VKCWFj.png');
INSERT INTO "public"."related_image_shoes" VALUES (999, 96, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ba410e57-6124-4805-87ff-6b8020e9f345/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (1000, 96, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7fc00053-3c7e-4fe6-baa9-0a2c7504f9ee/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (1001, 96, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/06bfb595-4f13-4fa6-a6af-faf70565a418/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (1002, 96, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/9359e672-c417-4063-908b-9826771f55e0/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (1003, 96, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ec58c2f6-cd5f-43e6-9771-2d46c85278a7/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (1004, 96, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/bfc882c4-8ddf-4998-96a0-4e1730bbafea/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (1005, 96, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/66414262-dcce-41cb-9472-19e1ccbb8a5e/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (1006, 96, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/5b013eb0-8efe-4ddf-a030-b357d14f8ac4/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (1007, 96, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b8165104-b53d-4876-9154-f126165174f8/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (1008, 96, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/021932ca-7ae3-4704-8319-22fba3a66cd5/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (1009, 96, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/11a62c58-5b8e-4e13-b338-f60c2b0a2071/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (1010, 96, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/aae9d8b3-bdd0-4def-86ae-d4982c2dabca/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (1011, 96, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/351b1b98-af29-4829-9d47-b0ea3430fc16/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (1012, 96, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/6fc4194d-cabe-4daa-a11a-4f349bd7a794/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (1013, 96, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/021932ca-7ae3-4704-8319-22fba3a66cd5/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (1014, 96, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (1015, 96, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/cf4a5556-6163-4abf-9b83-0f89b4766100/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (1016, 96, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/3c439ca5-b6bc-4224-ab5f-67fdcb7aa53a/sb-force-58-skate-shoe-DvWCT6.png');
INSERT INTO "public"."related_image_shoes" VALUES (1017, 96, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/146ac543-f69c-441a-a4dd-2e1add33b6ea/air-force-1-07-shoes-VWCc04.png');
INSERT INTO "public"."related_image_shoes" VALUES (1018, 96, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7cdde65a-3f30-45a1-92bd-05b2e7b41677/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1019, 96, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e57204bc-21ce-4423-8136-0dbe833e3074/jordan-series-mid-shoes-xdNNBc.png');
INSERT INTO "public"."related_image_shoes" VALUES (1020, 96, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/aaac8e7b-b62e-4023-9844-7ac4a0577f0a/nikecourt-legacy-shoes-PKg8wX.png');
INSERT INTO "public"."related_image_shoes" VALUES (1021, 96, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ac62e931-9110-46ff-87fb-3824bbee4f25/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (1022, 96, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/fabe3ef1-263d-42ee-b24b-09a9a47a61ee/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (1023, 96, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f139155d-5114-4539-892d-87de7d5ac40d/blazer-low-77-vintage-shoes-HmmkdX.png');
INSERT INTO "public"."related_image_shoes" VALUES (1024, 96, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ca2b356e-8aa3-4355-9e6f-d76a70c9dcf0/sb-chron-2-canvas-skate-shoe-zdBtfH.png');
INSERT INTO "public"."related_image_shoes" VALUES (1025, 96, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b8165104-b53d-4876-9154-f126165174f8/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (1026, 96, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b8165104-b53d-4876-9154-f126165174f8/jordan-series-es-shoes-FDtg9v.png');
INSERT INTO "public"."related_image_shoes" VALUES (1027, 97, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/bab314ed-4a92-4b35-98de-279d66949a94/air-jordan-1-mid-se-craft-shoes-n5bFMW.png');
INSERT INTO "public"."related_image_shoes" VALUES (1028, 97, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/9360a584-a807-43b4-992a-97f9c50a4dee/air-jordan-1-mid-se-craft-shoes-n5bFMW.png');
INSERT INTO "public"."related_image_shoes" VALUES (1029, 97, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e957e429-cbe2-45a4-8033-971804fc7070/air-jordan-1-mid-se-craft-shoes-n5bFMW.png');
INSERT INTO "public"."related_image_shoes" VALUES (1030, 97, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/a2de643a-2c47-4049-be79-d12ee858e9f2/air-jordan-1-mid-se-craft-shoes-n5bFMW.png');
INSERT INTO "public"."related_image_shoes" VALUES (1031, 97, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/000d3696-6da5-4b0b-955a-53bae97c83ef/air-jordan-1-mid-se-craft-shoes-n5bFMW.png');
INSERT INTO "public"."related_image_shoes" VALUES (1032, 97, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/3a869b9c-5050-485b-b3eb-10df1ae67ef9/air-jordan-1-mid-se-craft-shoes-n5bFMW.png');
INSERT INTO "public"."related_image_shoes" VALUES (1033, 97, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0d8de9f1-7d16-4b4d-9273-5e1840787f57/air-jordan-1-mid-se-craft-shoes-n5bFMW.png');
INSERT INTO "public"."related_image_shoes" VALUES (1034, 97, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0ec446d1-2260-44fa-9038-25634e8f751d/air-jordan-1-mid-se-craft-shoes-n5bFMW.png');
INSERT INTO "public"."related_image_shoes" VALUES (1035, 97, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/95c756c8-638d-4dc7-a8ed-1bf11654c71c/alphafly-2-eliud-kipchoge-road-racing-shoes-3LZ8Nj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1036, 97, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6925b9cc-7fa2-411c-b291-153490f4cbed/paris-saint-germain-club-football-unstructured-cap-D1kNVf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1079, 99, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/77454e22-0100-4ae9-88f3-2733aaf18a4e/blazer-low-77-se-shoes-0w2HHV.png');
INSERT INTO "public"."related_image_shoes" VALUES (1037, 97, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d9248042-a711-4441-80bb-d566b0835c40/air-jordan-1-mid-se-shoes-tKS2kt.png');
INSERT INTO "public"."related_image_shoes" VALUES (1038, 97, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f605198b-2631-4c3f-a91c-9f0be74444ba/apex-acg-bucket-hat-SzBh47.png');
INSERT INTO "public"."related_image_shoes" VALUES (1039, 97, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e3d0c449-a732-4b11-9430-c80fd3cbf2fd/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (1040, 97, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/01be12c8-801c-4c09-abb8-8d2920aa1f6f/windrunner-repel-running-jacket-fw4NBt.png');
INSERT INTO "public"."related_image_shoes" VALUES (1041, 97, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2ab0377c-f43a-43a3-8fea-28ff5b0614f6/tiger-woods-structured-dri-fit-adv-club-cap-kfnNt4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1042, 97, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ded44f24-aed4-47e2-89ac-2a7e64e52f54/dri-fit-adv-club-unstructured-swoosh-cap-gtlmqK.png');
INSERT INTO "public"."related_image_shoes" VALUES (1043, 97, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f153b4e4-9069-44ae-bf86-f70ae8ecbaa1/air-force-1-07-easyon-shoes-lpjTWM.png');
INSERT INTO "public"."related_image_shoes" VALUES (1044, 97, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/10089a82-5e61-4e32-b8a9-930d9c8ea321/flex-plus-2-younger-shoes-JrXgvn.png');
INSERT INTO "public"."related_image_shoes" VALUES (1045, 97, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2479387b-9021-430a-a4f4-8049b088c2dd/dri-fit-totality-18cm-unlined-shorts-MDJlhD.png');
INSERT INTO "public"."related_image_shoes" VALUES (1046, 97, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/825262b4-872c-457b-8727-9af68530c9a4/unlimited-dri-fit-straight-leg-versatile-trousers-jh9jwP.png');
INSERT INTO "public"."related_image_shoes" VALUES (1047, 97, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/baccff07-c847-43d5-bdb3-a78b7fd3846e/air-jordan-1-mid-se-craft-shoes-n5bFMW.png');
INSERT INTO "public"."related_image_shoes" VALUES (1048, 97, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/baccff07-c847-43d5-bdb3-a78b7fd3846e/air-jordan-1-mid-se-craft-shoes-n5bFMW.png');
INSERT INTO "public"."related_image_shoes" VALUES (1049, 98, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/2b01ba1c-d6da-47d7-9e3e-1261ae1fe1c0/air-force-1-07-lv8-shoes-pBxkmz.png');
INSERT INTO "public"."related_image_shoes" VALUES (1050, 98, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/653bf8c3-1259-45bf-8361-bf74be91bad7/air-force-1-07-lv8-shoes-pBxkmz.png');
INSERT INTO "public"."related_image_shoes" VALUES (1051, 98, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e25c5797-eb31-4ceb-b7a4-469514b7f5f7/air-force-1-07-lv8-shoes-pBxkmz.png');
INSERT INTO "public"."related_image_shoes" VALUES (1052, 98, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/b229da03-277a-401d-9946-847291e80f20/air-force-1-07-lv8-shoes-pBxkmz.png');
INSERT INTO "public"."related_image_shoes" VALUES (1053, 98, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/3ba04e24-e36c-4553-8e05-ed6813eb096e/air-force-1-07-lv8-shoes-pBxkmz.png');
INSERT INTO "public"."related_image_shoes" VALUES (1054, 98, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/46757049-23dd-4698-9cff-e493f5bb3c12/air-force-1-07-lv8-shoes-pBxkmz.png');
INSERT INTO "public"."related_image_shoes" VALUES (1055, 98, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/c9db30b3-f53d-45f2-9175-c529b0255b8a/air-force-1-07-lv8-shoes-pBxkmz.png');
INSERT INTO "public"."related_image_shoes" VALUES (1056, 98, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/cb38ccc7-24c0-43bb-9c9b-f545398f14d8/air-force-1-07-lv8-shoes-pBxkmz.png');
INSERT INTO "public"."related_image_shoes" VALUES (1057, 98, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/85bf51d2-0c3d-4363-a5d7-f56654b2b3a1/air-force-1-07-lv8-shoes-pBxkmz.png');
INSERT INTO "public"."related_image_shoes" VALUES (1058, 98, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/3277dab4-a738-4f3c-92d0-c1f4ccff4dc1/air-force-1-07-lv8-shoes-pBxkmz.png');
INSERT INTO "public"."related_image_shoes" VALUES (1059, 98, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_1.62/7a9ed8a2-0976-4451-84f1-587b843c5829/air-force-1-07-lv8-shoes-pBxkmz.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (1060, 98, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/1415893c-4f2e-4761-8fb7-fa141335becc/air-force-1-07-lv8-shoes-pBxkmz.png');
INSERT INTO "public"."related_image_shoes" VALUES (1061, 98, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/441f9c14-6b81-43b1-a670-fc77d1317de2/air-force-1-07-lv8-shoes-pBxkmz.png');
INSERT INTO "public"."related_image_shoes" VALUES (1062, 98, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/1415893c-4f2e-4761-8fb7-fa141335becc/air-force-1-07-lv8-shoes-pBxkmz.png');
INSERT INTO "public"."related_image_shoes" VALUES (1063, 98, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/146ac543-f69c-441a-a4dd-2e1add33b6ea/air-force-1-07-shoes-VWCc04.png');
INSERT INTO "public"."related_image_shoes" VALUES (1064, 98, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (1065, 98, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/5ce0216a-3c5c-4518-b3a9-4731dd1de836/dunk-low-retro-shoes-bCzchX.png');
INSERT INTO "public"."related_image_shoes" VALUES (1066, 98, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/a42a5d53-2f99-4e78-a081-9d07a2d0774a/air-force-1-07-shoe-HWWX9W.png');
INSERT INTO "public"."related_image_shoes" VALUES (1067, 98, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ac62e931-9110-46ff-87fb-3824bbee4f25/air-jordan-1-low-shoes-6Q1tFM.png');
INSERT INTO "public"."related_image_shoes" VALUES (1068, 98, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/52534247-1fb4-49e2-9195-9f4678c22d59/air-force-1-07-lx-shoes-QKdcNj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1069, 98, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/4a1cbd76-3616-47c4-9c16-da16012a8481/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (1070, 98, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e777c881-5b62-4250-92a6-362967f54cca/air-force-1-07-shoe-NMmm1B.png');
INSERT INTO "public"."related_image_shoes" VALUES (1071, 98, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/201cc2e1-80fe-49ac-b9b5-3343dca62dec/air-force-1-shadow-shoes-mN8Glx.png');
INSERT INTO "public"."related_image_shoes" VALUES (1072, 98, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6181316d-fe8b-417f-a8d8-a426346e24bc/air-force-1-shadow-shoes-mN8Glx.png');
INSERT INTO "public"."related_image_shoes" VALUES (1073, 98, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/39887545-1b81-4cdd-bb14-8695fa2058fa/air-force-1-react-shoes-mm8pv3.png');
INSERT INTO "public"."related_image_shoes" VALUES (1074, 98, 'https://static.nike.com/a/images/t_default/441f9c14-6b81-43b1-a670-fc77d1317de2/air-force-1-07-lv8-shoes-pBxkmz.png');
INSERT INTO "public"."related_image_shoes" VALUES (1075, 98, 'https://static.nike.com/a/images/t_default/441f9c14-6b81-43b1-a670-fc77d1317de2/air-force-1-07-lv8-shoes-pBxkmz.png');
INSERT INTO "public"."related_image_shoes" VALUES (1076, 99, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/cc8451d3-4698-45b3-850d-4709af2f0ca2/blazer-low-77-se-shoes-0w2HHV.png');
INSERT INTO "public"."related_image_shoes" VALUES (1077, 99, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e7a39e3d-8b4d-4b8a-a80a-a95d4d45e0e8/blazer-low-77-se-shoes-0w2HHV.png');
INSERT INTO "public"."related_image_shoes" VALUES (1078, 99, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/5efa83cb-8a08-4742-8933-43871c6f1976/blazer-low-77-se-shoes-0w2HHV.png');
INSERT INTO "public"."related_image_shoes" VALUES (1277, 106, 'https://static.nike.com/a/images/t_default/71d0c2f0-0fe6-44df-aa02-81b3dd2bab38/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1080, 99, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/ed619138-4340-43fe-a978-12ddb4d21538/blazer-low-77-se-shoes-0w2HHV.png');
INSERT INTO "public"."related_image_shoes" VALUES (1081, 99, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/ba8bbdb9-7940-4871-85e7-589b3e8b7915/blazer-low-77-se-shoes-0w2HHV.png');
INSERT INTO "public"."related_image_shoes" VALUES (1082, 99, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/1fb38fa7-1dd2-4174-83f2-d50436c1c518/blazer-low-77-se-shoes-0w2HHV.png');
INSERT INTO "public"."related_image_shoes" VALUES (1083, 99, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/9bba8ef9-25d4-4bb5-b637-0c5dde70206a/blazer-low-77-se-shoes-0w2HHV.png');
INSERT INTO "public"."related_image_shoes" VALUES (1084, 99, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/95c756c8-638d-4dc7-a8ed-1bf11654c71c/alphafly-2-eliud-kipchoge-road-racing-shoes-3LZ8Nj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1085, 99, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6925b9cc-7fa2-411c-b291-153490f4cbed/paris-saint-germain-club-football-unstructured-cap-D1kNVf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1086, 99, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d9248042-a711-4441-80bb-d566b0835c40/air-jordan-1-mid-se-shoes-tKS2kt.png');
INSERT INTO "public"."related_image_shoes" VALUES (1087, 99, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f605198b-2631-4c3f-a91c-9f0be74444ba/apex-acg-bucket-hat-SzBh47.png');
INSERT INTO "public"."related_image_shoes" VALUES (1088, 99, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e3d0c449-a732-4b11-9430-c80fd3cbf2fd/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (1089, 99, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/01be12c8-801c-4c09-abb8-8d2920aa1f6f/windrunner-repel-running-jacket-fw4NBt.png');
INSERT INTO "public"."related_image_shoes" VALUES (1090, 99, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2ab0377c-f43a-43a3-8fea-28ff5b0614f6/tiger-woods-structured-dri-fit-adv-club-cap-kfnNt4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1091, 99, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ded44f24-aed4-47e2-89ac-2a7e64e52f54/dri-fit-adv-club-unstructured-swoosh-cap-gtlmqK.png');
INSERT INTO "public"."related_image_shoes" VALUES (1092, 99, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f153b4e4-9069-44ae-bf86-f70ae8ecbaa1/air-force-1-07-easyon-shoes-lpjTWM.png');
INSERT INTO "public"."related_image_shoes" VALUES (1093, 99, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/10089a82-5e61-4e32-b8a9-930d9c8ea321/flex-plus-2-younger-shoes-JrXgvn.png');
INSERT INTO "public"."related_image_shoes" VALUES (1094, 99, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2479387b-9021-430a-a4f4-8049b088c2dd/dri-fit-totality-18cm-unlined-shorts-MDJlhD.png');
INSERT INTO "public"."related_image_shoes" VALUES (1095, 99, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/825262b4-872c-457b-8727-9af68530c9a4/unlimited-dri-fit-straight-leg-versatile-trousers-jh9jwP.png');
INSERT INTO "public"."related_image_shoes" VALUES (1096, 99, 'https://static.nike.com/a/images/t_default/e48d6035-bd8a-4747-9fa1-04ea596bb074/blazer-low-77-se-shoes-0w2HHV.png');
INSERT INTO "public"."related_image_shoes" VALUES (1097, 99, 'https://static.nike.com/a/images/t_default/e48d6035-bd8a-4747-9fa1-04ea596bb074/blazer-low-77-se-shoes-0w2HHV.png');
INSERT INTO "public"."related_image_shoes" VALUES (1098, 100, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/21127b0b-1be4-481d-85ba-5256ad18378f/jordan-one-take-4-pf-shoes-v5trdl.png');
INSERT INTO "public"."related_image_shoes" VALUES (1099, 100, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/9c9c37e7-bd69-4c47-9203-577bb8836bf0/jordan-one-take-4-pf-shoes-v5trdl.png');
INSERT INTO "public"."related_image_shoes" VALUES (1100, 100, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/33f67ecd-f91c-48bc-97ff-718f3ede64fc/jordan-one-take-4-pf-shoes-v5trdl.png');
INSERT INTO "public"."related_image_shoes" VALUES (1101, 100, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/216c83c9-a8da-4a04-a23e-1c89a48a5145/jordan-one-take-4-pf-shoes-v5trdl.png');
INSERT INTO "public"."related_image_shoes" VALUES (1102, 100, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/6fbe7cc4-a5eb-4852-ae0b-7a3084f65911/jordan-one-take-4-pf-shoes-v5trdl.png');
INSERT INTO "public"."related_image_shoes" VALUES (1103, 100, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0430b705-b059-424d-a1ab-09d72380c0de/jordan-one-take-4-pf-shoes-v5trdl.png');
INSERT INTO "public"."related_image_shoes" VALUES (1104, 100, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/269a0896-9ada-4a7a-9895-0f208a3e8aef/jordan-one-take-4-pf-shoes-v5trdl.png');
INSERT INTO "public"."related_image_shoes" VALUES (1105, 100, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/711705a8-423c-4fd2-ab8c-1dc253b70054/jordan-one-take-4-pf-shoes-v5trdl.png');
INSERT INTO "public"."related_image_shoes" VALUES (1106, 100, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/872ada20-8f75-4fdc-ab73-1a2aeace2307/jordan-one-take-4-pf-shoes-v5trdl.png');
INSERT INTO "public"."related_image_shoes" VALUES (1107, 100, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0a3e7846-fdab-4cf8-becf-638ec3ad9d3d/jordan-one-take-4-pf-shoes-v5trdl.png');
INSERT INTO "public"."related_image_shoes" VALUES (1108, 100, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/95c756c8-638d-4dc7-a8ed-1bf11654c71c/alphafly-2-eliud-kipchoge-road-racing-shoes-3LZ8Nj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1109, 100, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6925b9cc-7fa2-411c-b291-153490f4cbed/paris-saint-germain-club-football-unstructured-cap-D1kNVf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1110, 100, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d9248042-a711-4441-80bb-d566b0835c40/air-jordan-1-mid-se-shoes-tKS2kt.png');
INSERT INTO "public"."related_image_shoes" VALUES (1111, 100, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f605198b-2631-4c3f-a91c-9f0be74444ba/apex-acg-bucket-hat-SzBh47.png');
INSERT INTO "public"."related_image_shoes" VALUES (1112, 100, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e3d0c449-a732-4b11-9430-c80fd3cbf2fd/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (1113, 100, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/01be12c8-801c-4c09-abb8-8d2920aa1f6f/windrunner-repel-running-jacket-fw4NBt.png');
INSERT INTO "public"."related_image_shoes" VALUES (1114, 100, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2ab0377c-f43a-43a3-8fea-28ff5b0614f6/tiger-woods-structured-dri-fit-adv-club-cap-kfnNt4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1115, 100, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ded44f24-aed4-47e2-89ac-2a7e64e52f54/dri-fit-adv-club-unstructured-swoosh-cap-gtlmqK.png');
INSERT INTO "public"."related_image_shoes" VALUES (1116, 100, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f153b4e4-9069-44ae-bf86-f70ae8ecbaa1/air-force-1-07-easyon-shoes-lpjTWM.png');
INSERT INTO "public"."related_image_shoes" VALUES (1117, 100, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/10089a82-5e61-4e32-b8a9-930d9c8ea321/flex-plus-2-younger-shoes-JrXgvn.png');
INSERT INTO "public"."related_image_shoes" VALUES (1118, 100, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2479387b-9021-430a-a4f4-8049b088c2dd/dri-fit-totality-18cm-unlined-shorts-MDJlhD.png');
INSERT INTO "public"."related_image_shoes" VALUES (1119, 100, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/825262b4-872c-457b-8727-9af68530c9a4/unlimited-dri-fit-straight-leg-versatile-trousers-jh9jwP.png');
INSERT INTO "public"."related_image_shoes" VALUES (1120, 100, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0a3e7846-fdab-4cf8-becf-638ec3ad9d3d/jordan-one-take-4-pf-shoes-v5trdl.png');
INSERT INTO "public"."related_image_shoes" VALUES (1121, 100, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0a3e7846-fdab-4cf8-becf-638ec3ad9d3d/jordan-one-take-4-pf-shoes-v5trdl.png');
INSERT INTO "public"."related_image_shoes" VALUES (1122, 101, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7683c588-e0f5-46b9-9382-ef6ec80db821/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1123, 101, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/a992af97-fbab-4e3c-a82d-b92bb7adb1f2/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1124, 101, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/2780a648-71cd-4f0d-a158-930d0a30bd74/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1125, 101, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/823e54cd-b206-451f-b52a-4c38a4e82aa5/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1126, 101, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/c36fd693-8343-4696-b411-58cf1049ee28/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1127, 101, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/c90db085-b61b-4823-8dc1-4d50ce2d2186/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1128, 101, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/8804e6d5-4266-4cac-8b9d-8045e7e91d92/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1129, 101, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/a4480fc1-eae4-49b3-acbc-fbe18e21beea/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1130, 101, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7c71c30b-18a3-4cdd-b70e-cb7c48cb880d/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1131, 101, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7cdde65a-3f30-45a1-92bd-05b2e7b41677/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1132, 101, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0ddf6cee-bb10-4ba8-ba90-9fdc5c44d0f2/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1133, 101, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/f4bd6923-5f37-4a6d-b02f-1236a8243d33/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1134, 101, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7cdde65a-3f30-45a1-92bd-05b2e7b41677/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1135, 101, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/3bf68179-df2c-41b2-98e4-d969f831e26f/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (1136, 101, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/xumpf96hthdwq5b5siyl/air-jordan-legacy-312-low-shoes-6Vd4Xl.png');
INSERT INTO "public"."related_image_shoes" VALUES (1137, 101, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0f77e8d9-311f-42a4-8951-478ddf1e6da4/air-jordan-1-mid-shoes-86f1ZW.png');
INSERT INTO "public"."related_image_shoes" VALUES (1138, 101, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/48ef0c32-8a7b-4588-8256-81a8c731cd16/dunk-low-retro-shoes-69h36X.png');
INSERT INTO "public"."related_image_shoes" VALUES (1139, 101, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/06744c72-6578-46e9-8590-ad689008cf7e/air-max-systm-shoes-hLmQ85.png');
INSERT INTO "public"."related_image_shoes" VALUES (1140, 101, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/fabe3ef1-263d-42ee-b24b-09a9a47a61ee/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (1141, 101, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/a576a457-055e-40ff-911d-f148529e97e2/air-jordan-low-se-shoes-KKFsH5.png');
INSERT INTO "public"."related_image_shoes" VALUES (1142, 101, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ad9a51ad-dfc6-4d34-a8e7-11f2a6b6d6b2/air-max-flyknit-racer-next-nature-shoes-CCWCCw.png');
INSERT INTO "public"."related_image_shoes" VALUES (1143, 101, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/ddf15d26-45f8-4739-a344-c8778712628e/jordan-stadium-90-shoes-0cSSz3.png');
INSERT INTO "public"."related_image_shoes" VALUES (1144, 101, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/831a7456-5e95-46fa-9dfd-b746928024ad/impact-4-basketball-shoes-CcJxBx.png');
INSERT INTO "public"."related_image_shoes" VALUES (1145, 101, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/030bc0e1-869b-4751-b2fe-a85c78393831/jordan-max-aura-4-shoes-cKMcXJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1146, 101, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7c71c30b-18a3-4cdd-b70e-cb7c48cb880d/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1147, 101, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7c71c30b-18a3-4cdd-b70e-cb7c48cb880d/jordan-stadium-90-shoes-Jn6ZH4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1148, 102, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f53c9996-2b71-4af5-9817-01c010dc79f6/air-force-1-07-lx-shoes-QKdcNj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1149, 102, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/0229b465-6ae9-46ce-b050-23211dc30d56/air-force-1-07-lx-shoes-QKdcNj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1150, 102, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/1ab553f8-9817-41e5-887e-8dd7c532e378/air-force-1-07-lx-shoes-QKdcNj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1151, 102, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/9c3f3c33-fd56-41fa-9f0e-4b5dcfdc9b3d/air-force-1-07-lx-shoes-QKdcNj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1152, 102, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/6a32ec2c-e454-423f-af12-e1c11e7e543b/air-force-1-07-lx-shoes-QKdcNj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1153, 102, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/af8559ee-a7ac-4077-9e37-e8c3da47001a/air-force-1-07-lx-shoes-QKdcNj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1154, 102, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/5d04bb31-58d1-45f6-8e1f-c2aa1e47c48b/air-force-1-07-lx-shoes-QKdcNj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1155, 102, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/171905ae-56a2-4636-ad44-0d7ff1117955/air-force-1-07-lx-shoes-QKdcNj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1156, 102, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f35c5133-be7c-4619-bca1-4a663ac0543e/air-force-1-07-lx-shoes-QKdcNj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1157, 102, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/26c02c23-6145-4a64-9f0f-7f377ccc4203/air-force-1-07-lx-shoes-QKdcNj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1158, 102, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/146ac543-f69c-441a-a4dd-2e1add33b6ea/air-force-1-07-shoes-VWCc04.png');
INSERT INTO "public"."related_image_shoes" VALUES (1159, 102, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (1160, 102, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/a42a5d53-2f99-4e78-a081-9d07a2d0774a/air-force-1-07-shoe-HWWX9W.png');
INSERT INTO "public"."related_image_shoes" VALUES (1161, 102, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/39887545-1b81-4cdd-bb14-8695fa2058fa/air-force-1-react-shoes-mm8pv3.png');
INSERT INTO "public"."related_image_shoes" VALUES (1162, 102, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/3b05de1c-b694-48b1-9855-f8494f99e0b3/air-force-1-07-lv8-shoes-Blj3sx.png');
INSERT INTO "public"."related_image_shoes" VALUES (1163, 102, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e777c881-5b62-4250-92a6-362967f54cca/air-force-1-07-shoe-NMmm1B.png');
INSERT INTO "public"."related_image_shoes" VALUES (1164, 102, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/441f9c14-6b81-43b1-a670-fc77d1317de2/air-force-1-07-lv8-shoes-pBxkmz.png');
INSERT INTO "public"."related_image_shoes" VALUES (1165, 102, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/5b8aa82f-e010-4052-a2e6-d81db2729fd0/air-force-1-high-07-lx-shoes-wb31gJ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1166, 102, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/3c59b44c-afcd-4dd6-9af1-48fbb4ffb3ce/air-force-1-07-se-shoes-TgwW4b.png');
INSERT INTO "public"."related_image_shoes" VALUES (1167, 102, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e20f7d6b-77f8-4a99-99e2-b2a2cb69de46/air-jordan-1-mid-se-craft-shoes-RmP7J6.png');
INSERT INTO "public"."related_image_shoes" VALUES (1168, 102, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6181316d-fe8b-417f-a8d8-a426346e24bc/air-force-1-shadow-shoes-mN8Glx.png');
INSERT INTO "public"."related_image_shoes" VALUES (1169, 102, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/318d9bad-9e9e-4f95-9dd3-45f465fabf90/air-force-1-07-shoes-5ttFDf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1170, 102, 'https://static.nike.com/a/images/t_default/52534247-1fb4-49e2-9195-9f4678c22d59/air-force-1-07-lx-shoes-QKdcNj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1171, 102, 'https://static.nike.com/a/images/t_default/52534247-1fb4-49e2-9195-9f4678c22d59/air-force-1-07-lx-shoes-QKdcNj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1172, 103, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/7542fe72-eae6-49a2-8918-28a17aaf2c4c/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1173, 103, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/41c921bb-0152-4d91-92e0-b33b72af93ff/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1174, 103, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/7bd3193b-6eca-40bf-8ec5-e0c558e35fb6/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1175, 103, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/0d5cd5d3-8065-402a-bad5-375b62f1724d/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1176, 103, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/8536b496-8dc1-4487-af90-d10fc71e737a/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1177, 103, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/901112e5-b7c2-4d65-94fe-1fb39757293e/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1178, 103, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/1d40996e-d52d-475b-af74-a8b7a9e5a934/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1179, 103, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/d5859503-ca30-465e-be15-61c8534d7eaa/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1180, 103, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/4039722b-530b-4983-8059-15f0be622635/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1181, 103, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/c44af532-6292-4adc-aa52-01f480808719/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1182, 103, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/214c84a8-7b45-40f8-b7b6-c46c3e5b38f0/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1183, 103, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/31bf98bc-e017-4ec9-bd4d-6ece6d36b131/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1184, 103, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/5f5eee4c-ca4e-435b-b1e0-0f0156251a07/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1185, 103, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/86273f21-dc0a-4116-beda-02b0b914f20b/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1186, 103, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/d0477ee8-b680-42ab-ad2c-e49f6215b044/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1187, 103, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/38170154-395f-4947-ae38-b9172b5e7a7b/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1188, 103, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/f3e603c4-2761-4f10-bd03-25b8d47ee618/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1189, 103, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/38170154-395f-4947-ae38-b9172b5e7a7b/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1190, 103, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/62c77845-5e6a-4146-ac99-6dd556ffa2d6/free-metcon-5-workout-shoes-HfHgmZ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1191, 103, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2d0a9ba1-0ba6-4b6f-bf60-36274427cbe6/metcon-8-workout-shoes-p9rQzn.png');
INSERT INTO "public"."related_image_shoes" VALUES (1192, 103, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/07aedc06-b2a1-479b-ae7c-1ad32a7b53bb/metcon-8-flyease-easy-on-off-workout-shoes-kKmGG7.png');
INSERT INTO "public"."related_image_shoes" VALUES (1193, 103, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2a09444c-0932-4a63-8524-6fadb8a95349/metcon-9-amp-workout-shoes-Dwx2GX.png');
INSERT INTO "public"."related_image_shoes" VALUES (1194, 103, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/3954af94-ef0e-4277-a3a2-2df84eba652a/free-metcon-4-workout-shoes-hr4JbW.png');
INSERT INTO "public"."related_image_shoes" VALUES (1195, 103, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/15aac653-dbf1-495e-ac5e-3c08a9af9399/air-max-alpha-trainer-5-workout-shoes-x8Jzj6.png');
INSERT INTO "public"."related_image_shoes" VALUES (1196, 103, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/d58dc67a-1479-4331-ab74-36d5188e05a7/free-run-5-road-running-shoes-m8L9mr.png');
INSERT INTO "public"."related_image_shoes" VALUES (1197, 103, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/0dbef9d2-e69b-4df8-b52f-4e679d20e486/air-max-alpha-trainer-5-workout-shoes-x8Jzj6.png');
INSERT INTO "public"."related_image_shoes" VALUES (1198, 103, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/cba6ab1c-f3db-4150-a317-6ce3fbc3c799/mc-trainer-2-workout-shoes-WFVXbk.png');
INSERT INTO "public"."related_image_shoes" VALUES (1199, 103, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/46e537d4-38f1-4ab6-86e3-9316a7450d43/metcon-9-workout-shoes-ldMsxB.png');
INSERT INTO "public"."related_image_shoes" VALUES (1200, 103, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/c424a324-9d7a-4e27-a3c5-fd745612cec1/zoom-metcon-turbo-2-workout-shoes-jPvmwl.png');
INSERT INTO "public"."related_image_shoes" VALUES (1201, 103, 'https://static.nike.com/a/images/t_default/f3e603c4-2761-4f10-bd03-25b8d47ee618/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1202, 103, 'https://static.nike.com/a/images/t_default/f3e603c4-2761-4f10-bd03-25b8d47ee618/free-metcon-5-workout-shoes-7wNZNf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1203, 104, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/4144c92b-0558-448c-aaa1-31f475a45b9f/revolution-6-flyease-easy-on-off-road-running-shoes-XvR99K.png');
INSERT INTO "public"."related_image_shoes" VALUES (1204, 104, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/2525a9e0-11d8-4348-8d6a-aa486332b524/revolution-6-flyease-easy-on-off-road-running-shoes-XvR99K.png');
INSERT INTO "public"."related_image_shoes" VALUES (1205, 104, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/092a0afb-18aa-4762-a343-e8464577f6ab/revolution-6-flyease-easy-on-off-road-running-shoes-XvR99K.png');
INSERT INTO "public"."related_image_shoes" VALUES (1206, 104, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/2b07ee55-311c-4fd1-988d-cf6e0c5c266b/revolution-6-flyease-easy-on-off-road-running-shoes-XvR99K.png');
INSERT INTO "public"."related_image_shoes" VALUES (1207, 104, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e193bb4a-bca2-45b8-aa62-acca1f01da70/revolution-6-flyease-easy-on-off-road-running-shoes-XvR99K.png');
INSERT INTO "public"."related_image_shoes" VALUES (1208, 104, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/82a73296-10dd-4938-90d9-a5fc7ed07d39/revolution-6-flyease-easy-on-off-road-running-shoes-XvR99K.png');
INSERT INTO "public"."related_image_shoes" VALUES (1209, 104, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/ce92266b-8b34-4055-8386-5473f51c71c4/revolution-6-flyease-easy-on-off-road-running-shoes-XvR99K.png');
INSERT INTO "public"."related_image_shoes" VALUES (1210, 104, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/344205a0-fba6-4bdd-93fa-6706cd0491cf/revolution-6-flyease-easy-on-off-road-running-shoes-XvR99K.png');
INSERT INTO "public"."related_image_shoes" VALUES (1211, 104, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/0920e528-dbe2-4361-9e46-1c2ec61a657a/revolution-6-flyease-easy-on-off-road-running-shoes-XvR99K.png');
INSERT INTO "public"."related_image_shoes" VALUES (1212, 104, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/b05afb11-db22-461d-b94e-49bdc316b445/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (1213, 104, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/4355b135-68c3-43ec-b96d-eb7d17823127/flex-experience-run-11-road-running-shoes-rB6h46.png');
INSERT INTO "public"."related_image_shoes" VALUES (1214, 104, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/bdb9af6b-24e3-40df-b843-4e7a51a33833/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (1215, 104, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f7741640-0220-4e86-b578-6cde8c650883/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (1216, 104, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/d58dc67a-1479-4331-ab74-36d5188e05a7/free-run-5-road-running-shoes-m8L9mr.png');
INSERT INTO "public"."related_image_shoes" VALUES (1217, 104, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/10e52152-bb0c-4c16-b263-48c515627b5a/renew-ride-3-road-running-shoes-fzS091.png');
INSERT INTO "public"."related_image_shoes" VALUES (1218, 104, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/3cdb87e5-eb54-4742-9d8e-3fd22704a594/rival-fly-3-road-racing-shoes-XbhTCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (1219, 104, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/247616b5-1d3b-4777-abbb-d5e08a924b78/go-flyease-easy-on-off-shoes-3svRCL.png');
INSERT INTO "public"."related_image_shoes" VALUES (1220, 104, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2ca57197-5ff7-4b13-a515-7223bcc859cb/structure-24-road-running-shoes-9wCgmv.png');
INSERT INTO "public"."related_image_shoes" VALUES (1221, 104, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/i1-2e7cf08f-9eba-4420-9402-e472c3d6782d/venture-runner-shoe-mT8r8R.png');
INSERT INTO "public"."related_image_shoes" VALUES (1222, 104, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/79e134c2-497c-44c7-afa5-ba967bc60a5a/quest-5-road-running-shoes-8wZR01.png');
INSERT INTO "public"."related_image_shoes" VALUES (1223, 104, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/26dd42ea-4c98-455e-ab53-e74db2fb1de2/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (1224, 104, 'https://static.nike.com/a/images/t_default/ac871484-8738-44cf-abbd-4d347ad536e9/revolution-6-flyease-easy-on-off-road-running-shoes-XvR99K.png');
INSERT INTO "public"."related_image_shoes" VALUES (1225, 104, 'https://static.nike.com/a/images/t_default/ac871484-8738-44cf-abbd-4d347ad536e9/revolution-6-flyease-easy-on-off-road-running-shoes-XvR99K.png');
INSERT INTO "public"."related_image_shoes" VALUES (1226, 105, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/76e258c2-83e0-4feb-a647-b242a71e0bb4/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (1227, 105, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/57769226-7fa6-4031-85f8-362464f222e1/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (1228, 105, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/45c67c55-3487-4715-8e54-c86a797082b6/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (1229, 105, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/1ae4bee8-a6e0-407e-a239-cf8d1f870161/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (1230, 105, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/dbbd1905-38f1-432a-bff3-23868f5fc906/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (1231, 105, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/5515d04c-021b-416d-8ab2-89c55d2bfac1/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (1232, 105, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/975fe49c-f445-42ea-9b40-90e3ee2ffff9/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (1233, 105, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/a4436c2b-ab66-4e1d-913c-ccd9758b5d89/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (1234, 105, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/95c756c8-638d-4dc7-a8ed-1bf11654c71c/alphafly-2-eliud-kipchoge-road-racing-shoes-3LZ8Nj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1235, 105, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6925b9cc-7fa2-411c-b291-153490f4cbed/paris-saint-germain-club-football-unstructured-cap-D1kNVf.png');
INSERT INTO "public"."related_image_shoes" VALUES (1236, 105, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d9248042-a711-4441-80bb-d566b0835c40/air-jordan-1-mid-se-shoes-tKS2kt.png');
INSERT INTO "public"."related_image_shoes" VALUES (1237, 105, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f605198b-2631-4c3f-a91c-9f0be74444ba/apex-acg-bucket-hat-SzBh47.png');
INSERT INTO "public"."related_image_shoes" VALUES (1238, 105, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e3d0c449-a732-4b11-9430-c80fd3cbf2fd/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (1239, 105, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/01be12c8-801c-4c09-abb8-8d2920aa1f6f/windrunner-repel-running-jacket-fw4NBt.png');
INSERT INTO "public"."related_image_shoes" VALUES (1240, 105, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2ab0377c-f43a-43a3-8fea-28ff5b0614f6/tiger-woods-structured-dri-fit-adv-club-cap-kfnNt4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1241, 105, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/ded44f24-aed4-47e2-89ac-2a7e64e52f54/dri-fit-adv-club-unstructured-swoosh-cap-gtlmqK.png');
INSERT INTO "public"."related_image_shoes" VALUES (1242, 105, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f153b4e4-9069-44ae-bf86-f70ae8ecbaa1/air-force-1-07-easyon-shoes-lpjTWM.png');
INSERT INTO "public"."related_image_shoes" VALUES (1243, 105, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/10089a82-5e61-4e32-b8a9-930d9c8ea321/flex-plus-2-younger-shoes-JrXgvn.png');
INSERT INTO "public"."related_image_shoes" VALUES (1244, 105, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2479387b-9021-430a-a4f4-8049b088c2dd/dri-fit-totality-18cm-unlined-shorts-MDJlhD.png');
INSERT INTO "public"."related_image_shoes" VALUES (1245, 105, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/825262b4-872c-457b-8727-9af68530c9a4/unlimited-dri-fit-straight-leg-versatile-trousers-jh9jwP.png');
INSERT INTO "public"."related_image_shoes" VALUES (1246, 105, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e3d0c449-a732-4b11-9430-c80fd3cbf2fd/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (1247, 105, 'https://static.nike.com/a/images/t_default/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e3d0c449-a732-4b11-9430-c80fd3cbf2fd/air-jordan-1-low-se-shoes-fQgpsv.png');
INSERT INTO "public"."related_image_shoes" VALUES (1248, 106, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/6f38a332-08b8-45a9-a7c5-f0282f7c4105/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1249, 106, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/2b424974-dc22-43a9-9f9f-4cff40fcd0f7/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1250, 106, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/a21a74f6-0456-40d2-9b22-127142004edb/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1251, 106, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f157c868-0bdd-4688-a313-d98419de73cc/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1252, 106, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/28453080-4a81-43df-9602-783d8ea82e8d/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1253, 106, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/9bbdf68b-dc66-4cba-9a95-1ce4de27b710/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1254, 106, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/dfd09e2d-d818-496b-8336-482d0b6ce810/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1255, 106, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/201f89b9-6e1b-43d9-a132-0103d585cfc3/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1256, 106, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/a5238389-d8f2-4aee-8af4-e6eb4f360f97/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1257, 106, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/9031b6f1-ab87-4e1a-affa-7be6c4f4666b/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1258, 106, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_1.47/1d3f51c1-60e4-4491-b47e-0e9434ba791b/blazer-mid-pro-club-shoes-xCk8SQ.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (1259, 106, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/a7ee7992-b153-479e-aebe-114cb18bbc99/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1260, 106, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/71d0c2f0-0fe6-44df-aa02-81b3dd2bab38/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1261, 106, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/b8ada040-0487-40d8-aed2-f97b0c5a30d4/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1262, 106, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/8e158065-9466-46b0-9f94-32d15c271d0c/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1263, 106, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/e17624e6-1689-41c3-aa40-e6d229027803/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1264, 106, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/8e158065-9466-46b0-9f94-32d15c271d0c/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1265, 106, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e17624e6-1689-41c3-aa40-e6d229027803/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1266, 106, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/389b709e-5102-4e55-aa5d-07099b500831/blazer-mid-77-vintage-shoes-dNWPTj.png');
INSERT INTO "public"."related_image_shoes" VALUES (1267, 106, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/fambaubeufwpravdy1xs/sb-zoom-blazer-mid-skate-shoe-cM9sg4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1268, 106, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/23ca5baa-65b2-4e77-b3d2-87a2c86fb939/sb-zoom-blazer-mid-skate-shoes-Gwfzrc.png');
INSERT INTO "public"."related_image_shoes" VALUES (1269, 106, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/c9156b9b-5d11-4728-8e0d-cdc1d8e24286/sb-zoom-blazer-mid-skate-shoes-Gwfzrc.png');
INSERT INTO "public"."related_image_shoes" VALUES (1270, 106, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/81790969-727e-41d6-b821-50c49ad9af4c/blazer-low-77-jumbo-shoes-RGNB3j.png');
INSERT INTO "public"."related_image_shoes" VALUES (1271, 106, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/fabe3ef1-263d-42ee-b24b-09a9a47a61ee/air-jordan-1-mid-shoes-SQf7DM.png');
INSERT INTO "public"."related_image_shoes" VALUES (1272, 106, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/5b0c45b6-048d-4401-b81b-accae1b7849e/blazer-low-77-jumbo-se-shoes-xjBd33.png');
INSERT INTO "public"."related_image_shoes" VALUES (1273, 106, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/6168745c-9670-42b4-a1fa-c145b8a21afd/sb-force-58-skate-shoe-HNFTvl.png');
INSERT INTO "public"."related_image_shoes" VALUES (1274, 106, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/8924aa0c-42be-4f15-bd41-5173dfa4b710/jordan-series-mid-shoes-xdNNBc.png');
INSERT INTO "public"."related_image_shoes" VALUES (1275, 106, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/cc7f9ed1-bb4b-4a8a-944d-586c7e05a03a/blazer-mid-77-shoes-pKBLXb.png');
INSERT INTO "public"."related_image_shoes" VALUES (1276, 106, 'https://static.nike.com/a/images/t_default/71d0c2f0-0fe6-44df-aa02-81b3dd2bab38/blazer-mid-pro-club-shoes-xCk8SQ.png');
INSERT INTO "public"."related_image_shoes" VALUES (1278, 107, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/06692ab9-e1db-4b7d-aa72-196be0f9de4d/nikecourt-zoom-lite-3-hard-court-tennis-shoes-rzcXmR.png');
INSERT INTO "public"."related_image_shoes" VALUES (1279, 107, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/95bfae5d-1213-4657-9f22-8fa9ea6883e0/nikecourt-zoom-lite-3-hard-court-tennis-shoes-rzcXmR.png');
INSERT INTO "public"."related_image_shoes" VALUES (1280, 107, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/0392e616-0a66-4258-b1fb-821936a7fbbf/nikecourt-zoom-lite-3-hard-court-tennis-shoes-rzcXmR.png');
INSERT INTO "public"."related_image_shoes" VALUES (1281, 107, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/1caf078a-e37d-4849-8b0d-5dc3b053ef93/nikecourt-zoom-lite-3-hard-court-tennis-shoes-rzcXmR.png');
INSERT INTO "public"."related_image_shoes" VALUES (1282, 107, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/80336c7b-117d-4ec6-b114-2aee560e40e4/nikecourt-zoom-lite-3-hard-court-tennis-shoes-rzcXmR.png');
INSERT INTO "public"."related_image_shoes" VALUES (1283, 107, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/2f498899-e874-4e94-913d-d28b141f24ea/nikecourt-zoom-lite-3-hard-court-tennis-shoes-rzcXmR.png');
INSERT INTO "public"."related_image_shoes" VALUES (1284, 107, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/b73c0b14-8893-4d6a-afcd-05b9f28ac196/nikecourt-zoom-lite-3-hard-court-tennis-shoes-rzcXmR.png');
INSERT INTO "public"."related_image_shoes" VALUES (1285, 107, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/479ca005-d5a3-4ec6-9d1c-2026e8237643/nikecourt-zoom-lite-3-hard-court-tennis-shoes-rzcXmR.png');
INSERT INTO "public"."related_image_shoes" VALUES (1286, 107, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/a7812f46-f0e1-4df0-b0f3-ceb5dc0a41cc/nikecourt-zoom-lite-3-hard-court-tennis-shoes-rzcXmR.png');
INSERT INTO "public"."related_image_shoes" VALUES (1287, 107, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/1890d88e-b27a-4f60-8ff5-f86229375d36/nikecourt-zoom-lite-3-hard-court-tennis-shoes-rzcXmR.png');
INSERT INTO "public"."related_image_shoes" VALUES (1288, 107, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/dbe9fe76-7157-47bc-9cb7-1158d2019f4b/nikecourt-air-zoom-lite-3-tennis-shoes-TNSHS6.png');
INSERT INTO "public"."related_image_shoes" VALUES (1289, 107, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-shoes-WrLlWX.png');
INSERT INTO "public"."related_image_shoes" VALUES (1290, 107, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/9f9655ed-92ba-4f35-9e92-3c27c47181bf/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (1291, 107, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/f7741640-0220-4e86-b578-6cde8c650883/defy-all-day-training-shoe-LtD2G1.png');
INSERT INTO "public"."related_image_shoes" VALUES (1292, 107, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/26dd42ea-4c98-455e-ab53-e74db2fb1de2/waffle-debut-shoes-JRWJk7.png');
INSERT INTO "public"."related_image_shoes" VALUES (1293, 107, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/3ca0e8ff-9564-46b0-a808-072cc0e8053a/sb-force-58-skate-shoe-HNFTvl.png');
INSERT INTO "public"."related_image_shoes" VALUES (1294, 107, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/i1-2e7cf08f-9eba-4420-9402-e472c3d6782d/venture-runner-shoe-mT8r8R.png');
INSERT INTO "public"."related_image_shoes" VALUES (1295, 107, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/bdbed338-76cb-413e-8453-5a222a33dd7e/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (1296, 107, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/3134fd9b-b486-4ebc-be50-5d16c8c0c8f4/nikecourt-royale-2-next-nature-shoes-RRcr20.png');
INSERT INTO "public"."related_image_shoes" VALUES (1297, 107, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/c309f91e-b2c9-4aa0-8891-0b07e092c1a2/nikecourt-vapor-lite-2-hard-court-tennis-shoes-8dGHWK.png');
INSERT INTO "public"."related_image_shoes" VALUES (1298, 107, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/3c439ca5-b6bc-4224-ab5f-67fdcb7aa53a/sb-force-58-skate-shoe-DvWCT6.png');
INSERT INTO "public"."related_image_shoes" VALUES (1299, 107, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/bce6584e-5577-47c8-a818-5b5f63f2adba/sb-zoom-blazer-low-pro-gt-skate-shoes-ckWK6g.png');
INSERT INTO "public"."related_image_shoes" VALUES (1300, 107, 'https://static.nike.com/a/images/t_default/a7812f46-f0e1-4df0-b0f3-ceb5dc0a41cc/nikecourt-zoom-lite-3-hard-court-tennis-shoes-rzcXmR.png');
INSERT INTO "public"."related_image_shoes" VALUES (1301, 107, 'https://static.nike.com/a/images/t_default/a7812f46-f0e1-4df0-b0f3-ceb5dc0a41cc/nikecourt-zoom-lite-3-hard-court-tennis-shoes-rzcXmR.png');
INSERT INTO "public"."related_image_shoes" VALUES (1302, 108, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/518f6b4f-92d3-4dd0-8636-c652f642b45e/run-swift-3-road-running-shoes-BrHm16.png');
INSERT INTO "public"."related_image_shoes" VALUES (1303, 108, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/c96b43a7-4d47-4d3c-9bc7-fd82a824877a/run-swift-3-road-running-shoes-BrHm16.png');
INSERT INTO "public"."related_image_shoes" VALUES (1304, 108, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/984c208d-51e2-40f1-84a7-0f7e4da7d046/run-swift-3-road-running-shoes-BrHm16.png');
INSERT INTO "public"."related_image_shoes" VALUES (1305, 108, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/963cc661-85b3-4794-a480-fa5569d82d83/run-swift-3-road-running-shoes-BrHm16.png');
INSERT INTO "public"."related_image_shoes" VALUES (1306, 108, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/90117bfd-bd87-444c-b8d5-9e880e08c573/run-swift-3-road-running-shoes-BrHm16.png');
INSERT INTO "public"."related_image_shoes" VALUES (1307, 108, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/8579a640-8b0b-48c8-9b89-299ef42d4418/run-swift-3-road-running-shoes-BrHm16.png');
INSERT INTO "public"."related_image_shoes" VALUES (1308, 108, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f0c8c1a0-3b56-4ad2-ac3c-4c02ad22b49c/run-swift-3-road-running-shoes-BrHm16.png');
INSERT INTO "public"."related_image_shoes" VALUES (1309, 108, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/b2b217bd-7722-43ae-953f-823537c29bb9/run-swift-3-road-running-shoes-BrHm16.png');
INSERT INTO "public"."related_image_shoes" VALUES (1310, 108, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/9dbb69ea-9983-4e28-b5bc-c7363d722a14/run-swift-3-road-running-shoes-BrHm16.png');
INSERT INTO "public"."related_image_shoes" VALUES (1311, 108, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/c0771b85-e0e2-4141-a870-573e3f29de42/run-swift-3-road-running-shoes-BrHm16.png');
INSERT INTO "public"."related_image_shoes" VALUES (1312, 108, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/740fecdb-a748-428e-9013-dd863349b49b/run-swift-3-road-running-shoes-BrHm16.png');
INSERT INTO "public"."related_image_shoes" VALUES (1313, 108, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/f3cec381-9b7b-41f8-b9e7-68fcd29cabaa/run-swift-3-road-running-shoes-BrHm16.png');
INSERT INTO "public"."related_image_shoes" VALUES (1314, 108, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/c0771b85-e0e2-4141-a870-573e3f29de42/run-swift-3-road-running-shoes-BrHm16.png');
INSERT INTO "public"."related_image_shoes" VALUES (1315, 108, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/9dbb69ea-9983-4e28-b5bc-c7363d722a14/run-swift-3-road-running-shoes-BrHm16.png');
INSERT INTO "public"."related_image_shoes" VALUES (1316, 108, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/bdbed338-76cb-413e-8453-5a222a33dd7e/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (1317, 108, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/bdb9af6b-24e3-40df-b843-4e7a51a33833/revolution-6-road-running-shoes-NC0P7k.png');
INSERT INTO "public"."related_image_shoes" VALUES (1318, 108, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/293ef571-2a57-4a18-98e8-ba83b2caa183/quest-5-road-running-shoes-8wZR01.png');
INSERT INTO "public"."related_image_shoes" VALUES (1319, 108, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/79e134c2-497c-44c7-afa5-ba967bc60a5a/quest-5-road-running-shoes-8wZR01.png');
INSERT INTO "public"."related_image_shoes" VALUES (1320, 108, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/38f18383-a5eb-40aa-b439-0f046190daf1/downshifter-12-road-running-shoes-kQLnZn.png');
INSERT INTO "public"."related_image_shoes" VALUES (1321, 108, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/10e52152-bb0c-4c16-b263-48c515627b5a/renew-ride-3-road-running-shoes-fzS091.png');
INSERT INTO "public"."related_image_shoes" VALUES (1322, 108, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/1cf3bba1-9eaa-40bd-a64d-0e52beb2a75a/quest-5-road-running-shoes-8wZR01.png');
INSERT INTO "public"."related_image_shoes" VALUES (1323, 108, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/2d7c4c6c-d247-489a-bece-e96faf853ccd/juniper-trail-2-trail-running-shoes-PT4wqk.png');
INSERT INTO "public"."related_image_shoes" VALUES (1324, 108, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/8b2f48e5-d342-41f1-824c-afb4d0ac7645/wio-9-road-running-shoes-185Kr9.png');
INSERT INTO "public"."related_image_shoes" VALUES (1325, 108, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/a4833123-a0fe-4ab2-91d8-85b756292a14/wio-9-road-running-shoes-185Kr9.png');
INSERT INTO "public"."related_image_shoes" VALUES (1326, 108, 'https://static.nike.com/a/images/t_default/740fecdb-a748-428e-9013-dd863349b49b/run-swift-3-road-running-shoes-BrHm16.png');
INSERT INTO "public"."related_image_shoes" VALUES (1327, 108, 'https://static.nike.com/a/images/t_default/740fecdb-a748-428e-9013-dd863349b49b/run-swift-3-road-running-shoes-BrHm16.png');
INSERT INTO "public"."related_image_shoes" VALUES (1328, 109, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f2ba156d-7913-4431-ba7b-4a93d6e525ef/offcourt-adjust-slides-6L2C07.png');
INSERT INTO "public"."related_image_shoes" VALUES (1329, 109, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/4fd16a2f-a829-4aa4-a196-6b369b1271c7/offcourt-adjust-slides-6L2C07.png');
INSERT INTO "public"."related_image_shoes" VALUES (1330, 109, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/b075e0f3-6947-476f-8610-f1435208caae/offcourt-adjust-slides-6L2C07.png');
INSERT INTO "public"."related_image_shoes" VALUES (1331, 109, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/a1297703-8f2a-41e7-a433-f41e3bde9b9d/offcourt-adjust-slides-6L2C07.png');
INSERT INTO "public"."related_image_shoes" VALUES (1332, 109, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/b5b816b3-692a-4489-b91e-0b2673c576d1/offcourt-adjust-slides-6L2C07.png');
INSERT INTO "public"."related_image_shoes" VALUES (1333, 109, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99f51025-365b-4fb2-9475-c34db3267383/offcourt-adjust-slides-6L2C07.png');
INSERT INTO "public"."related_image_shoes" VALUES (1334, 109, 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/a26f15c4-5fcc-493b-974c-a37bed05d35f/offcourt-adjust-slides-6L2C07.png');
INSERT INTO "public"."related_image_shoes" VALUES (1335, 109, 'https://static.nike.com/a/videos/t_PDP_1280_v1/f_auto,q_auto:eco,so_1.6/3267d64c-75c6-4835-b9a8-ba753a214fa6/offcourt-adjust-slides-6L2C07.jpg');
INSERT INTO "public"."related_image_shoes" VALUES (1336, 109, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/d9b53749-3841-40ed-8c0e-beaecd31d9fb/offcourt-adjust-slides-6L2C07.png');
INSERT INTO "public"."related_image_shoes" VALUES (1337, 109, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/36ca2219-7c8a-4cf6-ae0b-dd38926e5b88/offcourt-adjust-slides-6L2C07.png');
INSERT INTO "public"."related_image_shoes" VALUES (1338, 109, 'https://static.nike.com/a/images/t_PDP_144_v1/f_auto/22dbb81f-bb9b-43a9-a854-cf1e4ca4a2c0/offcourt-adjust-slides-6L2C07.png');
INSERT INTO "public"."related_image_shoes" VALUES (1339, 109, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/36ca2219-7c8a-4cf6-ae0b-dd38926e5b88/offcourt-adjust-slides-6L2C07.png');
INSERT INTO "public"."related_image_shoes" VALUES (1340, 109, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/22dbb81f-bb9b-43a9-a854-cf1e4ca4a2c0/offcourt-adjust-slides-6L2C07.png');
INSERT INTO "public"."related_image_shoes" VALUES (1341, 109, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/aa782209-3897-4110-a9e6-631cf4528b42/jordan-play-slides-2mCjgT.png');
INSERT INTO "public"."related_image_shoes" VALUES (1342, 109, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/70a2ac76-e8a6-463a-8486-927818802a21/asuna-2-slides-LMfcKG.png');
INSERT INTO "public"."related_image_shoes" VALUES (1343, 109, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/8e345159-74fb-45ff-9826-52754b1255f8/asuna-2-slides-LMfcKG.png');
INSERT INTO "public"."related_image_shoes" VALUES (1344, 109, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/fb4990f8-a0fe-4043-ad5b-7eaac878505d/offcourt-slides-ZBxx9j.png');
INSERT INTO "public"."related_image_shoes" VALUES (1345, 109, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/a0a1aa00-8112-44e3-a894-d13cf88dc316/jordan-super-play-slides-Cfj5Q4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1346, 109, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/31bda67c-57e4-4b21-bd8e-b422c304bcfc/victori-one-slides-QTTJHP.png');
INSERT INTO "public"."related_image_shoes" VALUES (1347, 109, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/da06511d-0d8f-43a4-b89c-ec894ad77230/jordan-post-slides-l46X9x.png');
INSERT INTO "public"."related_image_shoes" VALUES (1348, 109, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/a3dcfc65-5a28-4769-a5a3-66cf6f0e88e5/victori-one-next-nature-slides-w9tzLL.png');
INSERT INTO "public"."related_image_shoes" VALUES (1349, 109, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/35522a68-54d2-489c-92a1-4c413aacc489/victori-one-printed-slides-2ZsMWk.png');
INSERT INTO "public"."related_image_shoes" VALUES (1350, 109, 'https://static.nike.com/a/images/t_PDP_864_v1,f_auto,q_auto:eco/065376ee-1eee-40ba-b68b-70c95e64b4a6/air-max-1-slides-TSMTS4.png');
INSERT INTO "public"."related_image_shoes" VALUES (1351, 109, 'https://static.nike.com/a/images/t_default/d9b53749-3841-40ed-8c0e-beaecd31d9fb/offcourt-adjust-slides-6L2C07.png');
INSERT INTO "public"."related_image_shoes" VALUES (1352, 109, 'https://static.nike.com/a/images/t_default/d9b53749-3841-40ed-8c0e-beaecd31d9fb/offcourt-adjust-slides-6L2C07.png');

-- ----------------------------
-- Table structure for shoes
-- ----------------------------
DROP TABLE IF EXISTS "public"."shoes";
CREATE TABLE "public"."shoes" (
  "shoesid" int4 NOT NULL GENERATED ALWAYS AS IDENTITY (
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1
),
  "name" varchar(40) COLLATE "pg_catalog"."default",
  "brand" varchar(20) COLLATE "pg_catalog"."default",
  "size" text COLLATE "pg_catalog"."default",
  "color" varchar(200) COLLATE "pg_catalog"."default",
  "type" text COLLATE "pg_catalog"."default",
  "gender" text COLLATE "pg_catalog"."default",
  "price" numeric(10,2),
  "image" text COLLATE "pg_catalog"."default",
  "stripeid" varchar COLLATE "pg_catalog"."default",
  "detail" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of shoes
-- ----------------------------
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (6, 'Astir', 'Adidas', '4, 6', 'white', 'sneaker', 'female', 110.00, '/images/Adidas/9999204580658_1_9', 'price_1NqA2gGdYDiEmL1vBvp9B0LM', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (12, '4D RUNNER HALO', 'Adidas Y-3', '5', 'black', 'sneaker', 'unisex', 400.00, '/images/Adidas Y-3/9999204021557_1_15', 'price_1NqA2hGdYDiEmL1vc9bP2YEE', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (13, 'GR.1P HIGH', 'Adidas Y-3', '4, 6', 'white', 'sneaker', 'unisex', 300.00, '/images/Adidas Y-3/9999205466531_1_8', 'price_1NqA2hGdYDiEmL1vy0DKxfXC', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (14, 'White leather Hicho', 'Adidas Y-3', '5, 7', 'white', 'sneaker', 'unisex', 280.00, '/images/Adidas Y-3/9999205628847_1_1_16', 'price_1NqA2nGdYDiEmL1vjVTTyD1p', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (15, 'CONVERSE RED SOLE HIGH TOP', 'Comme des Garcons', '8', 'milky-white', 'sneaker', 'unisex', 140.00, '/images/Comme des Garcons/9999203875267_1', 'price_1NqA2oGdYDiEmL1vm7VoQhSb', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (16, 'CONVERSE RED SOLE LOW TOP', 'Comme des Garcons', '5, 9', 'milky-white', 'sneaker', 'unisex', 140.00, '/images/Comme des Garcons/9999203874680_1', 'price_1NqA2oGdYDiEmL1vGqmIOn2p', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (17, 'CHUCK 70 CANVAS LTD NP', 'Converse', '4, 5', 'black', 'sneaker', 'unisex', 140.00, '/images/Converse/9999203320620_1_8', 'price_1NqA2pGdYDiEmL1voMZpxlEW', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (18, 'Chuck 70 2 in 1 Hi Sneakers', 'Converse', '8, 9', 'pink', 'sneaker', 'unisex', 180.00, '/images/Converse/9999205501485_1_11', 'price_1NqA2pGdYDiEmL1vri9qvh5T', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (19, 'Chuck 70 Utility Hi', 'Converse', '7', 'blue', 'sneaker', 'unisex', 140.00, '/images/Converse/9999205547865_1', 'price_1NqA2pGdYDiEmL1vKktkggLv', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (20, 'CHUCK 70 SHERPA', 'Converse', '5, 7', 'white', 'sneaker', 'unisex', 95.00, '/images/Converse/9999202424640_1_5', 'price_1NqA2qGdYDiEmL1vPwX2IYpC', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (21, 'CHUCK 70 TRANSLUCENT CAGED', 'Converse', '5, 7', 'white', 'sneaker', 'unisex', 140.00, '/images/Converse/9999202424961_1_8', 'price_1NqA2qGdYDiEmL1vZzDLfeOh', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (22, 'CHUCK 70 SHERPA LINED', 'Converse', '4, 5', 'black', 'sneaker', 'unisex', 110.00, '/images/Converse/9999202425227_1_7', 'price_1NqA2rGdYDiEmL1vi4rQh189', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (23, 'CHUCK 70 MULE', 'Converse', '3, 6', 'black', 'sneaker', 'unisex', 80.00, '/images/Converse/9999203321788_1_8', 'price_1NqA2rGdYDiEmL1vHm7lbhjy', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (24, 'Air Flight Lite Mid', 'Nike', '6, 11', 'white', 'sneaker', 'unisex', 125.00, '/images/Nike/9999205164475_1_14', 'price_1NqA2sGdYDiEmL1vLWInO7R4', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (25, 'Wmns Dunk Low sneakers', 'Nike', '6', 'pink', 'sneaker', 'female', 120.00, '/images/Nike/9999203543326_1_10', 'price_1NqA2sGdYDiEmL1vPnhgJ7k6', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (26, 'ACG AIR MADA SNEAKER', 'Nike', '5, 15', 'dark-milky-white', 'sneaker', 'unisex', 145.00, '/images/Nike/9999205855441_1_20', 'price_1NqA2tGdYDiEmL1vIRsubKuN', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (27, 'Air Trainer 1 SP', 'Nike', '10', 'black', 'sneaker', 'unisex', 150.00, '/images/Nike/9999205853676_1_18', 'price_1NqA2tGdYDiEmL1vbMRgyvpC', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (28, 'AIR MAX TERRASCAPE 90 NI', 'Nike', '6, 8', 'white', 'sneaker', 'female', 150.00, '/images/Nike/9999207928068_1_4', 'price_1NqA2uGdYDiEmL1vTGFQMwch', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (29, 'ACG Mountain Fly Low GORE-TEX', 'Nike', '5, 9', 'white', 'sneaker', 'unisex', 180.00, '/images/Nike/9999205852839_1', 'price_1NqA2vGdYDiEmL1vGr4Mch0C', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (30, 'W AF1 Pixel', 'Nike', '6, 9', 'black', 'sneaker', 'female', 120.00, '/images/Nike/9999206671392_1', 'price_1NqA2iGdYDiEmL1vbPPVCrKl', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (31, 'BLAZER LOW 77 JUMBO', 'Nike', '8', 'white', 'sneaker', 'unisex', 95.00, '/images/Nike/9999207769432_1_3', 'price_1NqA2vGdYDiEmL1vqETH01Ah', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (32, 'NIKE AIR HUARACHE', 'Nike', '6, 8', 'white', 'sneaker', 'female', 120.00, '/images/Nike/9999203540820_1', 'price_1NqA2wGdYDiEmL1v21SBjhqF', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (33, 'NIKE CRATER IMPACT', 'Nike', '5, 9', 'black', 'sneaker', 'female', 115.00, '/images/Nike/9999203536809_1_7', 'price_1NqA2wGdYDiEmL1vMONfjFlG', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (34, 'HUARACHE LE', 'Nike', '7', 'brown', 'sneaker', 'unisex', 130.00, '/images/Nike/9999202298937_1_10', 'price_1NqA2xGdYDiEmL1v4ZaMDtJm', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (35, 'NSW FREE REMASTERED', 'Nike', '6, 11', 'grey', 'sneaker', 'unisex', 120.00, '/images/Nike/9999202282691_1_13', 'price_1NqA2xGdYDiEmL1vPwKfWx5M', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (36, 'AIR MAX 95', 'Nike', '7, 12', 'grey', 'sneaker', 'unisex', 180.00, '/images/Nike/9999202300968_1_11', 'price_1NqA2yGdYDiEmL1vT2fVgiiL', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (37, 'NIKE AIR HUARACHE 2', 'Nike', '6, 8', 'white', 'sneaker', 'female', 120.00, '/images/Nike/9999202319878_1_8', 'price_1NqA2yGdYDiEmL1vKMzknAjv', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (38, 'AIR MAX TERRASCAPE 90', 'Nike', '6, 8', 'white', 'sneaker', 'female', 150.00, '/images/Nike/9999205583740_1_7', 'price_1NqA2zGdYDiEmL1vhUChUgVQ', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (39, 'AIR FORCE 1 BOOT', 'Nike', '8, 11', 'brown', 'sneaker', 'unisex', 190.00, '/images/Nike/9999202291976_1_8', 'price_1NqA2zGdYDiEmL1vZzGp77bB', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (40, 'ACG AIR MOWABB', 'Nike', '4, 8', 'brown', 'sneaker', 'unisex', 170.00, '/images/Nike/9999205080652_1_17', 'price_1NqA30GdYDiEmL1v8Emj1t6z', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (51, 'W AIR FORCE 1 07 LOW NH NN', 'Nike', '6, 9', 'white', 'sneaker', 'female', 130.00, '/images/Nike/9999203544163_1_10', 'price_1NqA30GdYDiEmL1vBCAMU5o6', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (52, 'Dunk Low Se', 'Nike', '6, 8', 'white', 'sneaker', 'female', 110.00, '/images/Nike/9999202317560_1_10', 'price_1NqA31GdYDiEmL1vSr04eGr4', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (53, 'Air Max 95 Se', 'Nike', '9, 10', 'blue', 'sneaker', 'unisex', 180.00, '/images/Nike/9999202297190_1_9', 'price_1NqA31GdYDiEmL1v1zrJ7zFJ', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (61, 'Nike Air Force 1 ''07', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5', 'Colour Shown: White/Picante Red/White', 'sneaker', 'male', 134.96, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/71e80796-373d-46fe-a161-088d7a1ca383/air-force-1-07-shoes-VWCc04.png', 'price_1NqA37GdYDiEmL1vMOABpWrA', 'The radiance lives on with the b-ball original. Crossing hardwood comfort with off-court flair, it puts a fresh spin on what you know best: ''80s-inspired construction, bold details and nothin''-but-net style.
Colour Shown: White/Picante Red/White
Style: DV0788-102');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (62, 'Nike InfinityRN 4', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47.5', 'Colour Shown: White/Light Lemon Twist/Volt/Black', 'sneaker', 'male', 195.79, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ed45ceac-1a49-450c-a71d-3ffedbb376d0/infinityrn-4-road-running-shoes-mLRjcz.png', 'price_1NqA37GdYDiEmL1vvm9TllIQ', 'With supportive cushioning built for a smooth run, the Nike InfinityRN 4 is a brand-new take on a familiar favourite. It''s made from our all-new Nike ReactX foam, which gives you 13% more energy return compared with Nike React foam, to help you stay fresh and bouncy. (What''s more? Nike ReactX reduces the carbon footprint of the midsole by at least 43% compared with Nike React foam, so it helps support the planet, too). We coupled the ReactX foam with Nike Running''s best-fitting Flyknit yet, so you can take off any time, anywhere with secure upper support and breathability. It''s the kind of shoe that can grant you that priceless peace of mind to go faster and further, thanks to an intuitive design that supports every stride.
Colour Shown: White/Light Lemon Twist/Volt/Black
Style: DR2665-101');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (1, 'WMN ULTRBOOST 22', 'Adidas', '4, 7', 'black', 'sneaker', 'female', 230.00, '/images/Adidas/9999202991449_1_8', 'price_1NqA2iGdYDiEmL1v4ccwv4Wm', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (2, 'ULTRABOOST 20 GRAPHIC', 'Adidas', '6, 7', 'pink', 'sneaker', 'female', 230.00, '/images/Adidas/9999203360336_1_7', 'price_1NqA2jGdYDiEmL1vMmTuNZdT', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (3, 'ULTRABOOST 22 ELAVATED', 'Adidas', '5, 7', 'white', 'sneaker', 'female', 280.00, '/images/Adidas/9999203361036_1_7', 'price_1NqA2jGdYDiEmL1v3rnBiY3s', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (4, 'Streetball II', 'Adidas', '7, 10', 'blue', 'sneaker', 'unisex', 140.00, '/images/Adidas/9999204575340_1_8', 'price_1NqA2kGdYDiEmL1vSutUfoC7', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (5, 'Campus 80s', 'Adidas', '7', 'black', 'sneaker', 'unisex', 100.00, '/images/Adidas/9999204576149_1_9', 'price_1NqA2kGdYDiEmL1vUH8zOdLk', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (7, 'Stan Smith Bonega', 'Adidas', '4, 6', 'white', 'sneaker', 'female', 110.00, '/images/Adidas/9999204580849_1_7', 'price_1NqA2lGdYDiEmL1vYT4Bi2RW', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (8, 'Forum Bonega Mid', 'Adidas', '4, 7', 'white', 'sneaker', 'female', 120.00, '/images/Adidas/9999204581600_1_6', 'price_1NqA2lGdYDiEmL1vLLZ12Gzi', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (9, 'Top Ten seakers', 'Adidas', '4, 7', 'white', 'sneaker', 'unisex', 110.00, '/images/Adidas/9999205467767_1_8', 'price_1NqA2mGdYDiEmL1vWB97nxTA', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (10, 'Forum Premiere', 'Adidas', '7, 10', 'white', 'sneaker', 'male', 200.00, '/images/Adidas/9999207721225_1_9', 'price_1NqA2mGdYDiEmL1vqsbdsEnZ', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (11, 'Hicho', 'Adidas Y-3', '4, 5', 'black', 'sneaker', 'unisex', 280.00, '/images/Adidas Y-3/9999204019547_1_14', 'price_1NqA2nGdYDiEmL1vvqoaWswN', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (41, 'Air Huarache', 'Nike', '6', 'white', 'sneaker', 'female', 130.00, '/images/Nike/9999202324285_1_11', 'price_1NqA32GdYDiEmL1vwNUo3KqM', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (42, 'WAFFLE TRAINER 2 SD', 'Nike', '8, 11', 'red', 'sneaker', 'unisex', 100.00, '/images/Nike/9999202287337_1_7', 'price_1NqA32GdYDiEmL1vfEoozJ0M', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (43, 'NIKE AIR MAX PRE DAY', 'Nike', '6', 'white', 'sneaker', 'female', 130.00, '/images/Nike/9999202321345_1_9', 'price_1NqA32GdYDiEmL1vWL44FIMP', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (44, 'WAFFLE TRAINER 2', 'Nike', '8, 10', 'black', 'sneaker', 'unisex', 90.00, '/images/Nike/9999203536601_1_8', 'price_1NqA33GdYDiEmL1vwAqf2zhT', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (45, 'BE-DO-WIN SP', 'Nike', '5, 10', 'black', 'sneaker', 'unisex', 130.00, '/images/Nike/9999205118447_1', 'price_1NqA33GdYDiEmL1vbDyn8akY', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (46, 'NIKE AIR FORCE ONE STRAPLESS', 'Nike', '6', 'white', 'sneaker', 'female', 120.00, '/images/Nike/9999202314620_1_10', 'price_1NqA34GdYDiEmL1vbz4vd9FG', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (47, 'OFFLINE PACK', 'Nike', '7, 11', 'grey', 'sneaker', 'unisex', 125.00, '/images/Nike/9999204620958_1_10', 'price_1NqA34GdYDiEmL1vain7fQa1', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (48, 'NIKE AIR VAPORMAX 2021 FK', 'Nike', '12', 'white', 'sneaker', 'female', 220.00, '/images/Nike/9999202315252_1_12', 'price_1NqA35GdYDiEmL1vU9veGVOr', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (49, 'NSW FREE REMASTERED', 'Nike', '6, 11', 'brown', 'sneaker', 'unisex', 120.00, '/images/Nike/9999202282936_1_10', 'price_1NqA35GdYDiEmL1vGwi4R3D9', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (50, 'NIKE ZOOM AIR FIRE', 'Nike', '9', 'white', 'sneaker', 'female', 115.00, '/images/Nike/9999203537233_1_6', 'price_1NqA36GdYDiEmL1vX7VzRnXq', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (54, 'Nike Free Run Trail', 'Nike', '7', 'grey', 'sneaker', 'male', 120.00, '/images/Nike/9999205426016_1_29', 'price_1NqA36GdYDiEmL1vb0u9qj5Y', NULL);
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (74, 'Jordan Stay Loyal 2', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47.5', 'Colour Shown: White/Cement Grey/Anthracite/Topaz Gold', 'sneaker', 'male', 140.38, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/8ba3216b-1961-453e-9407-685cd6b3360d/jordan-stay-loyal-2-shoes-sDkgDk.png', 'price_1NqA38GdYDiEmL1vTWAlhNUM', 'Inspired by generations of Js, these kicks are a collage of cool. Design details recall decades of legendary shoes while paying homage to MJs storied career. Breathable mesh, sturdy leather and lightweight Air cushioning in the heel make it that much easier to walk in the footsteps of greatness.
Colour Shown: White/Cement Grey/Anthracite/Topaz Gold
Style: DQ8401-103');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (75, 'Nike Air Force 1 ''07 Mid Fresh', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47.5', 'Colour Shown: White/White/Wolf Grey/White', 'sneaker', 'male', 183.71, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/a1857f8b-397d-4744-8b46-76db6fa5db25/air-force-1-07-mid-fresh-shoes-SJJm6G.png', 'price_1NqA39GdYDiEmL1vo5T413Ra', 'The radiance lives on with the b-ball original. Crossing hardwood comfort with off-court flair, it puts a fresh spin on what you know best: era-echoing, ''80s construction and nothin''-but-net style.
Colour Shown: White/White/Wolf Grey/White
Style: DZ2525-100');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (76, 'Nike Air VaporMax 2023 Flyknit', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5', 'Colour Shown: Black/Anthracite/Black/Black', 'sneaker', 'male', 257.46, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/6ff6e596-2f93-47f8-98a4-611de407bffb/air-vapormax-2023-flyknit-shoes-xjVzw5.png', 'price_1NqA39GdYDiEmL1vgTJSfoAm', 'Have you ever walked on Air? Step into the Air VaporMax 2023 to see how it''s done. The innovative tech is revealed through the perforated sockliner (pull it out to see more). The stretchy Flyknit upper is made from at least 20% recycled content by weight.
Colour Shown: Black/Anthracite/Black/Black
Style: DV1678-003');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (77, 'Nike Dunk Low By You', 'Nike', 'EU 38.5, EU 39, EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5, EU 48.5, EU 49.5', 'Colour Shown: Multi-Colour/Multi-Colour', 'sneaker', 'male', 159.54, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/9b26aa8f-0173-409b-b30a-7ce2d88573a4/custom-nike-dunk-low-by-you.png', 'price_1NqA3AGdYDiEmL1vcpxk2E1D', 'Take your game anywhere with the Nike Dunk Low By You. Created for the hardwood but taken to the streets, the ''80s b-ball icon returns with a new design thought up by you. Select a Nike Grind, Gum or standard outsole. Pick your favourite colours. Then seal the deal with a personalised inscription on the back.
Colour Shown: Multi-Colour/Multi-Colour
Style: DO7413-991');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (67, 'Nike InfinityRN 4 SE', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5', 'Colour Shown: White/Fuchsia Dream/Black', 'sneaker', 'male', 195.79, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/133d8e36-a9d2-4171-8fd3-6eabf13c483b/infinityrn-4-se-road-running-shoes-STv3Zz.png', 'price_1NqA3OGdYDiEmL1vzLJgXM2d', 'With supportive cushioning built for a smooth run, the Nike InfinityRN 4 is a brand-new take on a familiar favourite. It''s made from our all-new Nike ReactX foam, which gives you 13% more energy return compared with Nike React foam, to help you stay fresh and bouncy. (What''s more? Nike ReactX reduces the carbon footprint of the midsole by at least 43% compared with Nike React foam, so it helps support the planet, too). We coupled the ReactX foam with Nike Running''s best-fitting Flyknit yet, so you can take off any time, anywhere with secure upper support and breathability. It''s the kind of shoe that can grant you that priceless peace of mind to go faster and further, thanks to an intuitive design that supports every stride. This vibrantly bold, asymmetrical design is all about celebrating your mixing and matching magnificence for the miles ahead.
Colour Shown: White/Fuchsia Dream/Black
Style: FJ1047-100');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (68, 'Jordan Max Aura 5', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47.5', 'Colour Shown: Cement Grey/Topaz Gold/White/Anthracite', 'sneaker', 'male', 159.54, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0e761e04-0e37-4190-9c20-881ba03dbe71/jordan-max-aura-5-shoes-ZBZ4Pz.png', 'price_1NqA3OGdYDiEmL1vJwKGjfWM', 'Whenyou need a shoe that''s ready 24/7, it''s gotta be the Max Aura 5. Inspired by the AJ3, this pair of kicks puts a modern spin on the classic. They''re made from durable leather and textiles that sit atop a heel of Nike Air cushioning so you can walk, run or skate all day and still have fresh-feeling soles.
Colour Shown: Cement Grey/Topaz Gold/White/Anthracite
Style: DZ4353-007');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (69, 'Nike Waffle Debut', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5', 'Colour Shown: Black/Orange/Clear/White', 'sneaker', 'male', 86.21, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/26dd42ea-4c98-455e-ab53-e74db2fb1de2/waffle-debut-shoes-JRWJk7.png', 'price_1NqA3PGdYDiEmL1vNFGWEoXI', 'Retro gets modernised in the Nike Waffle Debut. Remember that smooth suede and nylon trend? It''s back, along with the modernised ''wedge'' midsole that feels incredibly plush. And to top it off, we''ve kept the classic on the bottom—the tried, true and trusted Waffle outsole—that adds traction, durability and heritage style to your step.
Colour Shown: Black/Orange/Clear/White
Style: DH9522-001');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (71, 'Air Jordan 1 Zoom CMFT 2', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47.5', 'Colour Shown: White/Black/Honeydew/Vapour Green', 'sneaker', 'male', 177.46, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/4e9138d9-278f-48b1-851c-f4e51dbb4ee9/air-jordan-1-zoom-cmft-2-shoes-nX8Qqx.png', 'price_1NqA3PGdYDiEmL1vjH3WlXIT', 'Premium suede and Jordan Brand''s signature Formula 23 foam come together to give you an extra luxurious (and extra cosy) AJ1. You don''t need to play "either or" when it comes to choosing style or comfort with this one—which is nice, ''cause you deserve both.
Colour Shown: White/Black/Honeydew/Vapour Green
Style: DV1307-103');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (72, 'Air Jordan XXXVIII ''FIBA'' PF', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47.5', 'Colour Shown: White/Pure Platinum/Metallic Gold', 'sneaker', 'male', 244.54, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b207c97d-1d63-4e43-9339-375b26222ae2/air-jordan-xxxviii-fiba-pf-basketball-shoes-XnhFhP.png', 'price_1NqA3QGdYDiEmL1vjjUlAuK0', 'When it comes to hoops, Jordan Brand has earned its global reputation as an innovator and collaborator. This AJ XXXVIII honours the International Basketball Federation—the governing body for basketball worldwide. Like white light containing every possible colour, the striking outer conceals an insole decorated with all the hues of the vibrant FIBA logo. Boldness, from the inside out.
Colour Shown: White/Pure Platinum/Metallic Gold
Style: FN7482-100');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (78, 'Jordan Max Aura 4', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5', 'Colour Shown: Black/White/Metallic Silver', 'sneaker', 'male', 129.94, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/030bc0e1-869b-4751-b2fe-a85c78393831/jordan-max-aura-4-shoes-cKMcXJ.png', 'price_1NqA3AGdYDiEmL1vv52Qo1gZ', 'The lightweight cushioning found in this next generation basketball shoe takes cues from its predecessors. Take flight on the court with timeless style and cloud-like heel support.
Colour Shown: Black/White/Metallic Silver
Style: DN3687-002');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (79, 'Nike Go FlyEase', 'Nike', 'EU 35.5, EU 36, EU 36.5, EU 37.5, EU 38, EU 38.5, EU 39, EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5', 'Colour Shown: Black/White', 'sneaker', 'male', 135.61, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/247616b5-1d3b-4777-abbb-d5e08a924b78/go-flyease-easy-on-off-shoes-3svRCL.png', 'price_1NqA3AGdYDiEmL1vboqj4Ee3', 'Ditch the laces and get outside. These kicks feature Nike''s revolutionary FlyEase technology, making on-and-off a breeze. With a heel that pivots open for a totally hands-free entry, they''re great for people with limited mobility—or anyone who wants a quicker way to get going.
Colour Shown: Black/White
Style: DR5540-002');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (80, 'Air Jordan 1 Low SE Craft', 'Nike', '', 'Colour Shown: Tech Grey/White/Sail/Light Orewood Brown', 'sneaker', 'male', 119.32, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/de63e1ff-c1ab-40e9-aaaf-1ccd5d0cac07/air-jordan-1-low-se-craft-shoes-q1ktlR.png', 'price_1NqA3BGdYDiEmL1vzMcR5fXv', 'Consistently fresh and always on point, the low-profile AJ1 is one of the most iconic sneakers of all time. This version incorporates natural tones and suede details—it''s a grounding refresh for a soaring legend.
Colour Shown: Tech Grey/White/Sail/Light Orewood Brown
Style: DN1635-002');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (81, 'NikeCourt Legacy', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5', 'Colour Shown: White/Black/White', 'sneaker', 'male', 86.21, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/cf4a5556-6163-4abf-9b83-0f89b4766100/nikecourt-legacy-shoes-PKg8wX.png', 'price_1NqA3BGdYDiEmL1vVYGnyUUV', 'Honouring a history rooted in tennis culture, the Nike Court Legacy brings you a time-tested staple. Its pebbled upper, heritage stitching and retro Swoosh design let you blend sport and fashion. And, you get to do good by looking good.
Colour Shown: White/Black/White
Style: DH3162-101');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (83, 'Nike Dunk Low Retro', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5, EU 48.5, EU 49.5', 'Colour Shown: White/Summit White/Black', 'sneaker', 'male', 122.04, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/f0f09613-0f37-4e3b-8b11-42fb741187c7/dunk-low-retro-shoes-Q2Gtpp.png', 'price_1NqA3CGdYDiEmL1voR1DJgEy', 'Created for the hardwood but taken to the streets, the ''80s basketball icon returns with classic details and throwback hoops flair. Its padded, low-cut collar and foam midsole let you take your game anywhere—in comfort.
Colour Shown: White/Summit White/Black
Style: DJ6188-101');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (84, 'Air Jordan 1 Low', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47.5', 'Colour Shown: Sky J Purple/White/Sky J Light Purple', 'sneaker', 'male', 134.96, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/63c3d532-d82f-4dfd-ac86-5e0eea991a7b/air-jordan-1-low-shoes-6Q1tFM.png', 'price_1NqA3CGdYDiEmL1vhsh8kKFp', 'Inspired by the original that debuted in 1985, the Air Jordan 1 Low offers a clean, classic look that''s familiar yet always fresh. With an iconic design that pairs perfectly with any ''fit, these kicks ensure you''ll always be on point.
Colour Shown: Sky J Purple/White/Sky J Light Purple
Style: 553558-515');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (85, 'Nike Air Pegasus ''89', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5', 'Colour Shown: Black/Photon Dust/Anthracite', 'sneaker', 'male', 122.04, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ab4190b2-3661-41e6-8a9e-29ca541a303e/air-pegasus-89-shoes-BwcVd8.png', 'price_1NqA3DGdYDiEmL1vQrACFOC0', 'The Nike Air Pegasus ''89 resurrects a look that''s as fresh as the era it came from. With suede overlays, a hidden Air unit and a Waffle outsole, this street-ready edition of the Pegasus blends retro style with modern comfort.
Colour Shown: Black/Photon Dust/Anthracite
Style: FD3598-002');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (86, 'Nike Air Max Plus III', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5', 'Colour Shown: Black/Black/Wolf Grey', 'sneaker', 'male', 232.88, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/disuwww5uxkqulu2aivh/air-max-plus-iii-shoes-Qw64gh.png', 'price_1NqA3DGdYDiEmL1vi5TYeRJQ', 'The Nike Air Max Plus III combines ultra-comfortable Tuned Air Technology with an energetic silhouette made famous by its predecessors. The III updates the look with TPU details fused to the upper while paying homage to the iconic colour fade.
Colour Shown: Black/Black/Wolf Grey
Style: CJ9684-002');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (82, 'Nike Defy All Day', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5', 'Colour Shown: White/Bright Mandarin/Iron Grey', 'sneaker', 'male', 79.54, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/5e15e69f-31a6-4230-832d-99130b5993fc/defy-all-day-training-shoe-LtD2G1.png', 'price_1NqA3QGdYDiEmL1vKQ8dAtde', 'Take on everyday challenges in the Nike Defy All Day. Leather up top and rubber traction on the bottom create a durable design that lasts the rigours of tough training sessions. Soft cushioning carries comfort through your workout—or a day of getting things done.
Colour Shown: White/Bright Mandarin/Iron Grey
Style: DJ1196-104');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (87, 'Air Jordan 1 Mid', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5', 'Colour Shown: Lucky Green/White/Black', 'sneaker', 'male', 129.94, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/fabe3ef1-263d-42ee-b24b-09a9a47a61ee/air-jordan-1-mid-shoes-SQf7DM.png', 'price_1NqA3EGdYDiEmL1v96VQaKLq', 'Inspired by the original AJ1, this mid-top edition maintains the iconic look you love while choice colours and crisp leather give it a distinct identity.
Colour Shown: Lucky Green/White/Black
Style: DQ8426-301');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (88, 'Nike Air Max 95', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47.5', 'Colour Shown: Black/Anthracite/Smoke Grey/Track Red', 'sneaker', 'male', 195.79, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/2d20e9f6-989a-4df4-afe8-ff677e801aeb/air-max-95-shoes-DWVbzZ.png', 'price_1NqA3EGdYDiEmL1v01FZKHny', 'Taking inspiration from the human body and ''90s athletics aesthetics, the Air Max 95 mixes unbelievable comfort with fast-paced style. The wavy side panels add natural flow to any outfit, while visible Nike Air in the heel and forefoot delivers performance comfort.
Colour Shown: Black/Anthracite/Smoke Grey/Track Red
Style: DM0011-007');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (89, 'Nike Fly.By Mid 3', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47.5', 'Colour Shown: Black/White', 'sneaker', 'male', 79.54, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/08f86361-0550-4452-bce0-5d7de3f34cb6/flyby-mid-3-basketball-shoes-jFHsxb.png', 'price_1NqA3FGdYDiEmL1vxZuP8iUl', 'Cushioning, ankle support and traction are essential on the basketball court. The Nike Fly.By Mid 3 delivers exactly what''s needed to help players excel on offence and defence. Designed to look as comfortable as it feels, the mid-top sneaker has plush, energy-returning foam to help keep you fresh through four quarters.
Colour Shown: Black/White
Style: DD9311-003');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (90, 'Jordan Play', 'Nike', 'EU 40, EU 41, EU 42.5, EU 44, EU 45, EU 46, EU 47.5', 'Colour Shown: Anthracite/Black/Cool Grey/University Red', 'sneaker', 'male', 55.38, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/aa782209-3897-4110-a9e6-631cf4528b42/jordan-play-slides-2mCjgT.png', 'price_1NqA3FGdYDiEmL1vRFd5Sx6Z', 'Get all of the underfoot support you need with these essential slides. Enjoy the cushioning of thick, lightweight foam for beach days or post-game hangouts.
Colour Shown: Anthracite/Black/Cool Grey/University Red
Style: DC9835-061');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (91, 'Nike Blazer Mid ''77 Vintage', 'Nike', 'EU 36, EU 36.5, EU 37.5, EU 38, EU 38.5, EU 39, EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5, EU 48.5, EU 49.5', 'Colour Shown: White/Black', 'sneaker', 'male', 122.04, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/389b709e-5102-4e55-aa5d-07099b500831/blazer-mid-77-vintage-shoes-dNWPTj.png', 'price_1NqA3GGdYDiEmL1vKq8mM7uT', 'In the ''70s, Nike was the new shoe on the block. So new in fact, we were still breaking into the basketball scene and testing prototypes on the feet of our local team. Of course, the design improved over the years, but the name stuck. The Nike Blazer Mid ''77 Vintage—classic since the beginning.
Colour Shown: White/Black
Style: BQ6806-100');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (92, 'Nike Revolution 6', 'Nike', 'EU 38.5, EU 39, EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5, EU 48.5, EU 49.5', 'Colour Shown: Black/Iron Grey/White', 'sneaker', 'male', 73.29, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/b05afb11-db22-461d-b94e-49bdc316b445/revolution-6-road-running-shoes-NC0P7k.png', 'price_1NqA3GGdYDiEmL1vz1xnutux', 'Here''s to new beginnings between you and the pavement. Lace up the 100% recycled laces and set the pace at the start of your running journey with the plush feel of the Nike Revolution 6. We know comfort is key to a successful run, so we made sure your steps are cushioned and flexible for a soft ride. It''s an evolution of a favourite, with a breathable design made with at least 20% recycled content by weight.
Colour Shown: Black/Iron Grey/White
Style: DC3728-003');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (93, 'Nike Killshot 2 Leather', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5, EU 48.5', 'Colour Shown: Sail/Gum Yellow/Oil Grey', 'sneaker', 'male', 115.79, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/dlyapben5bidcjm1vmfh/killshot-2-leather-shoe-DqWZ4j.png', 'price_1NqA3HGdYDiEmL1viVMyKxxI', 'Inspired by the original low-profile tennis shoe, the Nike Killshot 2 updates the upper with a variety of textured leathers to create a fresh look. From soft suedes to smooth leathers with the perfect sheen, it''s court-side attitude with a modern touch. To prove you''re on top, the rubber gum sole adds the cherry on bottom.
Colour Shown: Sail/Gum Yellow/Oil Grey
Style: 432997-121');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (95, 'Nike Court Vision Mid Next Nature', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5', 'Colour Shown: White/White/Black', 'sneaker', 'male', 77.53, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/a4b9a6fb-fbc5-485b-ae0b-f1263d3df85a/court-vision-mid-next-nature-shoes-VKCWFj.png', 'price_1NqA3HGdYDiEmL1v7bWq8Nbd', 'In love with the classic look of ''80s basketball but have a thing for the fast-paced culture of today''s game?Meet the Nike Court Vision Mid.A classic remixed with at least 20% recycled materials by weight.We replaced leather with recycled and synthetic materials that keeps the soul of the original style.Its crisp upper and stitched overlays stays true to its origins.The plush collar keeps it sleek and comfortable for your world.
Colour Shown: White/White/Black
Style: DN3577-101');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (94, 'Nike Dunk Low Retro Premium', 'Nike', '', 'Colour Shown: Black/Sail/Black', 'sneaker', 'male', 114.71, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/3a727ff4-9bb2-471c-8ee0-80e0e8148f77/dunk-low-retro-shoes-RqjhPl.png', 'price_1NqA3RGdYDiEmL1vyjEt0XB5', 'Created for the hardwood but taken to the streets, the ''80s b-ball icon returns with premium materials that take your style to the next level. Its padded, low-cut collar lets you take your game anywhere—in comfort.
Colour Shown: Black/Sail/Black
Style: DV7211-001');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (96, 'Jordan Series ES', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47.5', 'Colour Shown: White/Grey Fog/University Red', 'sneaker', 'male', 104.13, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/b8165104-b53d-4876-9154-f126165174f8/jordan-series-es-shoes-FDtg9v.png', 'price_1NqA3IGdYDiEmL1vyQ7yNFfP', 'Inspired by Mike''s backyard battles with his older brother Larry, the Jordan Series references their legendary sibling rivalry throughout the design. The rubber sole offers more than just impressive traction—it also tells the story of how MJ came to be #23. Look for the hidden reminder to "Swing for the Fence", a direct quote from Larry to his little bro.
Colour Shown: White/Grey Fog/University Red
Style: DN1856-160');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (97, 'Air Jordan 1 Mid SE Craft', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47.5', 'Colour Shown: Cement Grey/White/Tech Grey/Black', 'sneaker', 'male', 164.96, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/baccff07-c847-43d5-bdb3-a78b7fd3846e/air-jordan-1-mid-se-craft-shoes-n5bFMW.png', 'price_1NqA3IGdYDiEmL1vH6CyJWSb', 'What happens when you ramp up the elegance on a classic design? The AJ1 Craft. Soft suede, hemp canvas and an exposed edge around the collar add tasteful texture to the kicks you know and love. And they''re still perfect for everyday wear, with comfy cupsole construction and Nike Air cushioning underfoot.
Colour Shown: Cement Grey/White/Tech Grey/Black
Style: DZ4136-002');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (98, 'Nike Air Force 1 ''07 LV8', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5', 'Colour Shown: Light Silver/Light Silver/White/Black', 'sneaker', 'male', 146.63, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/441f9c14-6b81-43b1-a670-fc77d1317de2/air-force-1-07-lv8-shoes-pBxkmz.png', 'price_1NqA3JGdYDiEmL1vJo3Ipmht', 'Torn between 2 looks? Not any more—this AF-1 gets a 2-tone treatment from the tongue to the sole. The split-colour Swooshes and soles add just the right touch of interest, and mismatched branding on the tongue and backtab completes the look. And don''t worry, it still delivers cushioned comfort and the classic AF-1 look with era-echoing ''80s construction, bold details and nothin''-but-net style. Step up in this elevated silhouette (literally and figuratively).
Colour Shown: Light Silver/Light Silver/White/Black
Style: DZ2522-001');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (99, 'Nike Blazer Low ''77 SE', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5', 'Colour Shown: Light Bone/Sail/Light Bone/Black', 'sneaker', 'male', 98.42, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/e48d6035-bd8a-4747-9fa1-04ea596bb074/blazer-low-77-se-shoes-0w2HHV.png', 'price_1NqA3JGdYDiEmL1vdS5afgXm', 'Praised by the streets for its simplicity and comfort, the Blazer returns with its classic hoops style. Referencing the original ''70s design with a canvas upper and exposed tongue, it adds a low-cut collar making it a must-have wardrobe staple.
Colour Shown: Light Bone/Sail/Light Bone/Black
Style: DV7198-001');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (100, 'Jordan One Take 4 PF', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47.5', 'Colour Shown: White/Black/Team Crimson', 'sneaker', 'male', 122.04, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0a3e7846-fdab-4cf8-becf-638ec3ad9d3d/jordan-one-take-4-pf-shoes-v5trdl.png', 'price_1NqA3KGdYDiEmL1vMO27ZYtG', 'Get that speed you need, just like Russ. Inspired by Russell Westbrook''s latest signature shoe, the outsole of the Jordan One Take 4 wraps up nearly to the midsole so you can start, stop or change direction in an instant. Meanwhile, energy-returning Zoom Air cushioning in the forefoot keeps you going (and going and going).
Colour Shown: White/Black/Team Crimson
Style: DZ3339-100');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (106, 'Nike Blazer Mid Pro Club', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5', 'Colour Shown: Mica Green/Midnight Navy/Light Bone/Light Bone', 'sneaker', 'male', 80.97, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/71d0c2f0-0fe6-44df-aa02-81b3dd2bab38/blazer-mid-pro-club-shoes-xCk8SQ.png', 'price_1NqA3KGdYDiEmL1v0TFYu9JR', 'Being rooted doesn''t mean you can''t step forwards. Keeping the classic simplicity and comfort you love, your favourite wardrobe staple gets remastered for the modern era. Extra rubber extends from the midsole to the Swoosh for a bold twist (and a little nod to Nike innovation from the ''70s). The patchwork upper adds the perfect amount of retro attitude.
Colour Shown: Mica Green/Midnight Navy/Light Bone/Light Bone
Style: DQ7673-300');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (107, 'NikeCourt Zoom Lite 3', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5', 'Colour Shown: White/Black', 'sneaker', 'male', 73.28, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/a7812f46-f0e1-4df0-b0f3-ceb5dc0a41cc/nikecourt-zoom-lite-3-hard-court-tennis-shoes-rzcXmR.png', 'price_1NqA3LGdYDiEmL1vW5RmPV7M', 'At first glance, the NikeCourt Zoom Lite 3 looks like a classic tennis shoe. Look closer and you''ll find that it''s anything but traditional. With a springy Zoom Air unit in the forefoot, a grippy outsole and an incredibly comfortable padded collar, it delivers the performance you need to play at your best.
Colour Shown: White/Black
Style: DH0626-100');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (108, 'Nike Run Swift 3', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5', 'Colour Shown: Gridiron/Oxygen Purple', 'sneaker', 'male', 77.53, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/740fecdb-a748-428e-9013-dd863349b49b/run-swift-3-road-running-shoes-BrHm16.png', 'price_1NqA3NGdYDiEmL1vpOedoMFi', 'Whatever the run, the Swift 3 will be there with undying support and devotion. It can help you get out the door for an easy 3 at the end of the day or an intense 2-mile there-and-back with a modified design that''s supportive, durable and all-round comfortable. They''ll help you conquer short distances, sure, but also get you from point A to point B as you navigate the ever-changing rhythms of everyday life.
Colour Shown: Gridiron/Oxygen Purple
Style: DR2695-004');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (73, 'Air Jordan Legacy 312 Low', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5, EU 48.5, EU 49.5', 'Colour Shown: White/Black/Wolf Grey/Fire Red', 'sneaker', 'male', 177.46, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/3bf68179-df2c-41b2-98e4-d969f831e26f/air-jordan-legacy-312-low-shoes-6Vd4Xl.png', 'price_1NqA3RGdYDiEmL1v8SvpTTcJ', 'The Air Jordan Legacy 312 Low celebrates Michael Jordan''s legacy with this shout-out to Chicago''s 312 area code. The design creates a modern mash-up of iconic Jordan elements.
Colour Shown: White/Black/Wolf Grey/Fire Red
Style: CD7069-160');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (101, 'Jordan Stadium 90', 'Nike', '', 'Colour Shown: White/Sail/Varsity Red', 'sneaker', 'male', 145.53, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7c71c30b-18a3-4cdd-b70e-cb7c48cb880d/jordan-stadium-90-shoes-Jn6ZH4.png', 'price_1NqA3SGdYDiEmL1vezprsFfk', 'Comfort is king, but that doesn''t mean you have to sacrifice style. Taking design inspiration from the AJ1 and AJ5, the Stadium 90 is ready for everyday wear. The upper is made from leather and airy woven, so you get both breathability and durability, and Nike Air cushioning in the sole keeps your every step light and cushioned.
Colour Shown: White/Sail/Varsity Red
Style: DX4397-106');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (102, 'Nike Air Force 1 ''07 LX', 'Nike', 'EU 38.5, EU 39, EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5, EU 48.5, EU 49.5', 'Colour Shown: White/Beach/White/Smoke Grey', 'sneaker', 'male', 159.54, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/52534247-1fb4-49e2-9195-9f4678c22d59/air-force-1-07-lx-shoes-QKdcNj.png', 'price_1NqA3SGdYDiEmL1vavrIHYzz', '50 years after the birth of the genre, hip-hop is still influencing streetwear. Nike shoes have always been an integral part of this culture—both influencing and being influenced by iconic musicians, artists and fans. Celebrate half a century of art and culture with platinum and gold records on your soles and metallic grey details on the upper to match. Lace up and get spinning.
Colour Shown: White/Beach/White/Smoke Grey
Style: DV7183-100');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (109, 'Nike Offcourt Adjust', 'Nike', 'EU 38.5, EU 40, EU 41, EU 42.5, EU 44, EU 45, EU 46, EU 47.5', 'Colour Shown: Summit White/Black/Summit White', 'sneaker', 'male', 55.38, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/d9b53749-3841-40ed-8c0e-beaecd31d9fb/offcourt-adjust-slides-6L2C07.png', 'price_1NqA3OGdYDiEmL1vsp96Mxhj', 'Post game, errands and more—adjust your comfort on the go. The adjustable, padded strap lets you perfect your fit, while the lightweight foam midsole brings first-class comfort to your feet.
Colour Shown: Summit White/Black/Summit White
Style: DQ9624-100');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (70, 'Air Jordan 1 Mid SE', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47.5', 'Colour Shown: Black/Cardinal Red/White/Vivid Orange', 'sneaker', 'male', 164.96, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/d9248042-a711-4441-80bb-d566b0835c40/air-jordan-1-mid-se-shoes-tKS2kt.png', 'price_1NqA3TGdYDiEmL1vPyovIhpQ', 'Rock some retro colours and look good doin'' it. This pair of kicks has nubuck leather and suede in the upper for a plush look and feel. Nike Air in the sole keeps your every step light as … well, air.
Colour Shown: Black/Cardinal Red/White/Vivid Orange
Style: FJ4923-008');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (103, 'Nike Free Metcon 5', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5', 'Colour Shown: Summit White/Light Silver/Iron Grey/Bright Mandarin', 'sneaker', 'male', 146.63, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/f3e603c4-2761-4f10-bd03-25b8d47ee618/free-metcon-5-workout-shoes-7wNZNf.png', 'price_1NqA3TGdYDiEmL1vVX1a7L0m', 'When your workouts wade into the nitty-gritty, the Nike Free Metcon 5 can meet you in the depths, help you dig deep to find that final ounce of force and come out of the other side on a high. It matches style with substance, forefoot flexibility with back-end stability, perfect for flying through a cardio day or enhancing your agility. A revamped upper offers easier entry with a collar made just for your ankle.
Colour Shown: Summit White/Light Silver/Iron Grey/Bright Mandarin
Style: DV3949-101');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (104, 'Nike Revolution 6 FlyEase', 'Nike', 'EU 38.5, EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47, EU 47.5, EU 48.5, EU 49.5', 'Colour Shown: Black/Iron Grey/White', 'sneaker', 'male', 73.29, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ac871484-8738-44cf-abbd-4d347ad536e9/revolution-6-flyease-easy-on-off-road-running-shoes-XvR99K.png', 'price_1NqA3UGdYDiEmL1vB8O8iVGj', 'Here''s to new beginnings between you and the pavement. We know comfort is key to a successful run, so we made sure your steps are cushioned and flexible for a soft ride. A strap and wraparound zip makes these shoes super-easy to get on and off. It''s an evolution of a favourite, with a breathable design made with at least 20% recycled content by weight.
Colour Shown: Black/Iron Grey/White
Style: DC8992-003');
INSERT INTO "public"."shoes" OVERRIDING SYSTEM VALUE VALUES (105, 'Air Jordan 1 Low SE', 'Nike', 'EU 40, EU 40.5, EU 41, EU 42, EU 42.5, EU 43, EU 44, EU 44.5, EU 45, EU 45.5, EU 46, EU 47.5', 'Colour Shown: White/Game Royal/Ice Blue/University Red', 'sneaker', 'male', 152.88, 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/e3d0c449-a732-4b11-9430-c80fd3cbf2fd/air-jordan-1-low-se-shoes-fQgpsv.png', 'price_1NqA3UGdYDiEmL1v4hyMqUHD', 'The Air Jordan 1 Low remakes the classic sneaker with new colours and textures, giving you a fresh look and a familiar feel. Premium materials and accents bring modern expression to an all-time favourite.
Colour Shown: White/Game Royal/Ice Blue/University Red
Style: FN8901-164');

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."bill_billid_seq"
OWNED BY "public"."bill"."billid";
SELECT setval('"public"."bill_billid_seq"', 13, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."billdetail_billdetailid_seq"
OWNED BY "public"."billdetail"."billdetailid";
SELECT setval('"public"."billdetail_billdetailid_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."customer_customerid_seq"
OWNED BY "public"."customer"."customerid";
SELECT setval('"public"."customer_customerid_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."related_image_shoes_related_image_shoesid_seq"
OWNED BY "public"."related_image_shoes"."related_image_shoesid";
SELECT setval('"public"."related_image_shoes_related_image_shoesid_seq"', 1352, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."shoes_shoesid_seq"
OWNED BY "public"."shoes"."shoesid";
SELECT setval('"public"."shoes_shoesid_seq"', 109, true);

-- ----------------------------
-- Auto increment value for bill
-- ----------------------------
SELECT setval('"public"."bill_billid_seq"', 13, true);

-- ----------------------------
-- Primary Key structure for table bill
-- ----------------------------
ALTER TABLE "public"."bill" ADD CONSTRAINT "bill_pkey" PRIMARY KEY ("billid");

-- ----------------------------
-- Auto increment value for billdetail
-- ----------------------------
SELECT setval('"public"."billdetail_billdetailid_seq"', 1, false);

-- ----------------------------
-- Primary Key structure for table billdetail
-- ----------------------------
ALTER TABLE "public"."billdetail" ADD CONSTRAINT "billdetail_pkey" PRIMARY KEY ("billdetailid", "billid", "shoesid");

-- ----------------------------
-- Auto increment value for customer
-- ----------------------------
SELECT setval('"public"."customer_customerid_seq"', 1, true);

-- ----------------------------
-- Primary Key structure for table customer
-- ----------------------------
ALTER TABLE "public"."customer" ADD CONSTRAINT "customer_pkey" PRIMARY KEY ("customerid");

-- ----------------------------
-- Primary Key structure for table related_image_shoes
-- ----------------------------
ALTER TABLE "public"."related_image_shoes" ADD CONSTRAINT "related_image_shoes_pkey" PRIMARY KEY ("related_image_shoesid");

-- ----------------------------
-- Auto increment value for shoes
-- ----------------------------
SELECT setval('"public"."shoes_shoesid_seq"', 109, true);

-- ----------------------------
-- Primary Key structure for table shoes
-- ----------------------------
ALTER TABLE "public"."shoes" ADD CONSTRAINT "shoes_pkey" PRIMARY KEY ("shoesid");

-- ----------------------------
-- Foreign Keys structure for table bill
-- ----------------------------
ALTER TABLE "public"."bill" ADD CONSTRAINT "bill_customerid_fkey" FOREIGN KEY ("customerid") REFERENCES "public"."customer" ("customerid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table billdetail
-- ----------------------------
ALTER TABLE "public"."billdetail" ADD CONSTRAINT "billdetail_billid_fkey" FOREIGN KEY ("billid") REFERENCES "public"."bill" ("billid") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."billdetail" ADD CONSTRAINT "billdetail_shoesid_fkey" FOREIGN KEY ("shoesid") REFERENCES "public"."shoes" ("shoesid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table related_image_shoes
-- ----------------------------
ALTER TABLE "public"."related_image_shoes" ADD CONSTRAINT "related_image_shoes_shoesid_fkey" FOREIGN KEY ("shoesid") REFERENCES "public"."shoes" ("shoesid") ON DELETE NO ACTION ON UPDATE NO ACTION;
