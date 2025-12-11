BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "category" (
	"category_id"	INTEGER,
	"name"	TEXT NOT NULL,
	PRIMARY KEY("category_id")
);
CREATE TABLE IF NOT EXISTS "club" (
	"club_id"	INTEGER,
	"club_name"	TEXT,
	PRIMARY KEY("club_id")
);
CREATE TABLE IF NOT EXISTS "club_student" (
	"student_id"	INTEGER,
	"name"	TEXT,
	"age"	INTEGER,
	"club_id"	INTEGER,
	PRIMARY KEY("student_id"),
	FOREIGN KEY("club_id") REFERENCES "club"("club_id")
);
CREATE TABLE IF NOT EXISTS "dept" (
	"dept_id"	INTEGER,
	"name"	TEXT NOT NULL,
	"locale"	TEXT,
	PRIMARY KEY("dept_id")
);
CREATE TABLE IF NOT EXISTS "employee" (
	"employee_id"	INTEGER,
	"name"	TEXT NOT NULL,
	"mail"	TEXT,
	"hire_date"	DATE,
	"salary"	INTEGER,
	"dept_id"	INTEGER,
	PRIMARY KEY("employee_id")
);
CREATE TABLE IF NOT EXISTS "item" (
	"item_id"	INTEGER,
	"name"	TEXT NOT NULL,
	"price"	INTEGER,
	PRIMARY KEY("item_id")
);
CREATE TABLE IF NOT EXISTS "product" (
	"product_id"	INTEGER,
	"name"	TEXT NOT NULL,
	"category_id"	INTEGER,
	PRIMARY KEY("product_id")
);
CREATE TABLE IF NOT EXISTS "sales" (
	"sales_id"	INTEGER,
	"item_id"	INTEGER NOT NULL,
	"employee_id"	INTEGER,
	"sales_date"	DATE,
	PRIMARY KEY("sales_id")
);
CREATE TABLE IF NOT EXISTS "student" (
	"student_id"	INTEGER,
	"name"	TEXT,
	"birthday"	DATE,
	PRIMARY KEY("student_id")
);
CREATE TABLE IF NOT EXISTS "t_sales" (
	"sales_id"	INTEGER,
	"staff_name"	TEXT NOT NULL,
	"category"	TEXT NOT NULL,
	"item"	TEXT NOT NULL,
	"price"	INTEGER NOT NULL,
	PRIMARY KEY("sales_id" AUTOINCREMENT)
);
INSERT INTO "dept" VALUES (1,'北海道営業部','北海道札幌市北区北6条西4');
INSERT INTO "dept" VALUES (2,'東北営業部','宮城県仙台市青葉区中央1-1');
INSERT INTO "dept" VALUES (3,'北関東営業部','群馬県前橋市表町2丁目3-1');
INSERT INTO "dept" VALUES (4,'南関東営業部','神奈川県横浜市西区高島2-1');
INSERT INTO "dept" VALUES (5,'東京営業部','東京都千代田区丸の内1丁目');
INSERT INTO "dept" VALUES (6,'東海営業部','静岡県浜松市中区砂山町62');
INSERT INTO "dept" VALUES (7,'甲信営業部','長野県長野市大字栗田5-9');
INSERT INTO "dept" VALUES (8,'北陸営業部','石川県金沢市広岡3-1');
INSERT INTO "dept" VALUES (9,'関西営業部','大阪府大阪市北区梅田1-1');
INSERT INTO "dept" VALUES (10,'京滋営業部','京都府京都市下京区烏丸通塩小路下ル');
INSERT INTO "dept" VALUES (11,'中国営業部','広島県広島市中区基町6-27');
INSERT INTO "dept" VALUES (12,'四国営業部','香川県高松市栗林町1-1');
INSERT INTO "dept" VALUES (13,'九州営業部','福岡県福岡市博多区博多駅中央街1-1');
INSERT INTO "dept" VALUES (14,'沖縄営業部','沖縄県那覇市泉崎1-2');
INSERT INTO "dept" VALUES (15,'道東営業部','北海道釧路市黒金町1-4');
INSERT INTO "dept" VALUES (16,'道南営業部','北海道函館市若松町12-13');
INSERT INTO "dept" VALUES (17,'青森営業部','青森県青森市長島1-1');
INSERT INTO "dept" VALUES (18,'秋田営業部','秋田県秋田市中通7丁目2-1');
INSERT INTO "dept" VALUES (19,'山形営業部','山形県山形市香澄町1-1');
INSERT INTO "dept" VALUES (20,'新潟営業部','新潟県新潟市中央区花園1-1');
INSERT INTO "dept" VALUES (21,'北陸東営業部','富山県富山市桜町1-1');
INSERT INTO "dept" VALUES (22,'中部営業部','愛知県名古屋市中村区名駅1丁目1-4');
INSERT INTO "dept" VALUES (23,'三重営業部','三重県津市羽所町700');
INSERT INTO "dept" VALUES (24,'関西南営業部','和歌山県和歌山市美園町5-1');
INSERT INTO "dept" VALUES (25,'山陰営業部','鳥取県鳥取市東品治町112');
INSERT INTO "dept" VALUES (26,'鹿児島営業部','鹿児島県鹿児島市中央町1-1');
INSERT INTO "dept" VALUES (27,'長崎営業部','長崎県長崎市尾上町1-1');
INSERT INTO "employee" VALUES (1,'梅津 玲那','umedu_rena@example.com','1987-07 03',452000,2);
INSERT INTO "employee" VALUES (2,'米谷 朝陽','yoneya_asahi@example.com','1990-10 01',428280,3);
INSERT INTO "employee" VALUES (3,'古田 沙知絵','furuta_sachie@example.com','1991 02-26',425320,4);
INSERT INTO "employee" VALUES (4,'細川 ちえみ','hosokawa_chiemi@example.com','2002-11-25',339520,4);
INSERT INTO "employee" VALUES (5,'宇田川 雅紀','utagawa_masanori@example.com','2002-12-28',338860,5);
INSERT INTO "employee" VALUES (6,'柴山 恭子','shibayama_kyouko@example.com','2008-06-04',299160,3);
INSERT INTO "employee" VALUES (7,'竹下 明日','takeshita_meibi@example.com','2019 08-12',217440,5);
INSERT INTO "employee" VALUES (8,'下山 草太','shimoyama_souta@example.com','2021 01-02',207260,NULL);
INSERT INTO "employee" VALUES (9,'高橋 翼','takahashi_tsubasa@example.com','1992-03-15',412000,2);
INSERT INTO "employee" VALUES (10,'佐々木 花','sasaki_hana@example.com','1989-07-22',439500,3);
INSERT INTO "employee" VALUES (11,'伊藤 健太','ito_kenta@example.com','1995-11-10',385200,4);
INSERT INTO "employee" VALUES (12,'渡辺 美咲','watanabe_misaki@example.com','1993-05-05',421000,4);
INSERT INTO "employee" VALUES (13,'中村 直樹','nakamura_naoki@example.com','1990-08-30',398000,5);
INSERT INTO "employee" VALUES (14,'小林 彩香','kobayashi_ayaka@example.com','1998-12-12',362500,3);
INSERT INTO "employee" VALUES (15,'松本 健','matsumoto_ken@example.com','2001-04-20',341200,5);
INSERT INTO "employee" VALUES (16,'山田 舞','yamada_mai@example.com','2003-09-18',327800,2);
INSERT INTO "employee" VALUES (17,'岡田 颯太','okada_souta@example.com','1997-06-06',374500,4);
INSERT INTO "employee" VALUES (18,'村上 由紀','murakami_yuki@example.com','1996-01-25',391200,3);
INSERT INTO "employee" VALUES (19,'石井 大輔','ishii_daisuke@example.com','1994-10-08',402000,5);
INSERT INTO "employee" VALUES (20,'斎藤 結衣','saito_yui@example.com','2000-02-14',350600,4);
INSERT INTO "employee" VALUES (21,'菊地 翔','kikuchi_sho@example.com','1991-09-09',420000,3);
INSERT INTO "employee" VALUES (22,'田中 美羽','tanaka_miu@example.com','2002-05-17',334500,5);
INSERT INTO "employee" VALUES (23,'森本 拓海','morimoto_takumi@example.com','1999-07-21',368200,2);
INSERT INTO "employee" VALUES (24,'長谷川 舞','hasegawa_mai@example.com','1998-11-03',356700,4);
INSERT INTO "employee" VALUES (25,'加藤 悠真','kato_yuma@example.com','2001-08-11',342800,3);
INSERT INTO "employee" VALUES (26,'青木 理沙','aoki_risa@example.com','2003-03-27',328900,5);
INSERT INTO "employee" VALUES (27,'藤田 陽翔','fujita_haruto@example.com','1996-12-19',389500,2);
INSERT INTO "employee" VALUES (28,'木村 美咲','kimura_misaki@example.com','1997-04-02',372100,4);
INSERT INTO "employee" VALUES (29,'中川 翼','nakagawa_tsubasa@example.com','1995-06-15',396000,3);
INSERT INTO "employee" VALUES (30,'浜田 花音','hamada_kanon@example.com','2000-09-09',351400,5);
INSERT INTO "item" VALUES (1,'４Ｋ液晶ＴＶ',80000);
INSERT INTO "item" VALUES (2,'事務用電卓機',6000);
INSERT INTO "item" VALUES (3,'室内用空清機',29000);
INSERT INTO "item" VALUES (4,'ノートパソコン',70000);
INSERT INTO "item" VALUES (5,'一眼デジカメ',65000);
INSERT INTO "item" VALUES (6,'ＬＥＤデスクライト',4500);
INSERT INTO "item" VALUES (7,'オフィスチェア',12000);
INSERT INTO "item" VALUES (8,'レーザープリンタ',38000);
INSERT INTO "item" VALUES (9,'無線ルータ',8000);
INSERT INTO "item" VALUES (10,'タブレット端末',35000);
INSERT INTO "item" VALUES (11,'スマートウォッチ',22000);
INSERT INTO "item" VALUES (12,'外付けＳＳＤ',15000);
INSERT INTO "item" VALUES (13,'ＵＳＢメモリ（64GB）',1500);
INSERT INTO "item" VALUES (14,'シュレッダー',9000);
INSERT INTO "item" VALUES (15,'プロジェクター',52000);
INSERT INTO "item" VALUES (16,'ワイヤレスキーボード',4000);
INSERT INTO "item" VALUES (17,'ワイヤレスマウス',2500);
INSERT INTO "item" VALUES (18,'デスクトップＰＣ',95000);
INSERT INTO "item" VALUES (19,'オフィスホワイトボード',11000);
INSERT INTO "item" VALUES (20,'ＷＥＢカメラ',4800);
INSERT INTO "item" VALUES (21,'サーバーラック',78000);
INSERT INTO "item" VALUES (22,'多機能コピー機',120000);
INSERT INTO "item" VALUES (23,'４Ｋプロジェクタ用スクリーン',18000);
INSERT INTO "item" VALUES (24,'ビジネスバッグ',9000);
INSERT INTO "item" VALUES (25,'スマートスピーカー',12000);
INSERT INTO "sales" VALUES (1,1,7,'2021-12-01');
INSERT INTO "sales" VALUES (2,2,4,'2021-12-01');
INSERT INTO "sales" VALUES (3,3,4,'2021-12-01');
INSERT INTO "sales" VALUES (4,1,4,'2021-12-02');
INSERT INTO "sales" VALUES (5,3,6,'2021-12-02');
INSERT INTO "sales" VALUES (6,2,2,'2021-12-02');
INSERT INTO "sales" VALUES (7,3,5,'2021-12-03');
INSERT INTO "sales" VALUES (8,5,7,'2021-12-03');
INSERT INTO "sales" VALUES (9,5,4,'2021-12-04');
INSERT INTO "sales" VALUES (10,3,2,'2021-12-04');
INSERT INTO "sales" VALUES (11,5,5,'2021-12-06');
INSERT INTO "sales" VALUES (12,2,6,'2021-12-06');
INSERT INTO "sales" VALUES (13,2,5,'2021-12-07');
INSERT INTO "sales" VALUES (14,4,5,'2021-12-07');
INSERT INTO "sales" VALUES (15,3,3,'2021-12-07');
INSERT INTO "sales" VALUES (16,3,5,'2021-12-08');
INSERT INTO "sales" VALUES (17,1,4,'2021-12-08');
INSERT INTO "sales" VALUES (18,2,7,'2021-12-08');
INSERT INTO "sales" VALUES (19,1,4,'2021-12-08');
INSERT INTO "sales" VALUES (20,3,2,'2021-12-09');
INSERT INTO "sales" VALUES (21,4,5,'2021-12-09');
INSERT INTO "sales" VALUES (22,5,4,'2021-12-09');
INSERT INTO "sales" VALUES (23,1,4,'2021-12-10');
INSERT INTO "sales" VALUES (24,1,7,'2021-12-10');
INSERT INTO "sales" VALUES (25,2,2,'2021-12-10');
INSERT INTO "sales" VALUES (26,4,5,'2021-12-11');
INSERT INTO "sales" VALUES (27,4,5,'2021-12-11');
INSERT INTO "sales" VALUES (28,3,1,'2021-12-12');
INSERT INTO "sales" VALUES (29,2,3,'2021-12-12');
INSERT INTO "sales" VALUES (30,4,5,'2021-12-13');
INSERT INTO "sales" VALUES (31,2,6,'2021-12-14');
INSERT INTO "sales" VALUES (32,1,7,'2021-12-14');
INSERT INTO "sales" VALUES (33,3,6,'2021-12-15');
INSERT INTO "sales" VALUES (34,1,6,'2021-12-15');
INSERT INTO "sales" VALUES (35,2,7,'2021-12-16');
INSERT INTO "sales" VALUES (36,5,6,'2021-12-16');
INSERT INTO "sales" VALUES (37,1,6,'2021-12-16');
INSERT INTO "sales" VALUES (38,5,6,'2021-12-16');
INSERT INTO "sales" VALUES (39,1,2,'2021-12-16');
INSERT INTO "sales" VALUES (40,1,5,'2021-12-17');
INSERT INTO "sales" VALUES (41,3,6,'2021-12-18');
INSERT INTO "sales" VALUES (42,1,4,'2021-12-18');
INSERT INTO "sales" VALUES (43,2,2,'2021-12-19');
INSERT INTO "sales" VALUES (44,1,6,'2021-12-19');
INSERT INTO "sales" VALUES (45,5,1,'2021-12-19');
INSERT INTO "sales" VALUES (46,2,3,'2021-12-20');
INSERT INTO "sales" VALUES (47,1,4,'2021-12-20');
INSERT INTO "sales" VALUES (48,1,7,'2021-12-21');
INSERT INTO "sales" VALUES (49,1,2,'2021-12-21');
INSERT INTO "sales" VALUES (50,4,5,'2021-12-22');
INSERT INTO "sales" VALUES (51,5,4,'2021-12-22');
INSERT INTO "sales" VALUES (52,5,3,'2021-12-24');
INSERT INTO "sales" VALUES (53,5,3,'2021-12-24');
INSERT INTO "sales" VALUES (54,3,1,'2021-12-25');
INSERT INTO "sales" VALUES (55,5,1,'2021-12-25');
INSERT INTO "sales" VALUES (56,4,5,'2021-12-25');
INSERT INTO "sales" VALUES (57,5,2,'2021-12-26');
INSERT INTO "sales" VALUES (58,2,7,'2021-12-27');
INSERT INTO "sales" VALUES (59,1,3,'2021-12-27');
INSERT INTO "sales" VALUES (60,2,7,'2021-12-27');
INSERT INTO "sales" VALUES (61,2,7,'2021-12-28');
INSERT INTO "sales" VALUES (62,2,5,'2021-12-29');
INSERT INTO "sales" VALUES (63,5,7,'2021-12-29');
INSERT INTO "sales" VALUES (64,2,2,'2021-12-29');
INSERT INTO "sales" VALUES (65,5,2,'2021-12-29');
INSERT INTO "sales" VALUES (66,5,1,'2021-12-30');
INSERT INTO "sales" VALUES (67,1,6,'2021-12-30');
INSERT INTO "sales" VALUES (68,5,5,'2021-12-31');
INSERT INTO "sales" VALUES (69,1,2,'2021-12-31');
INSERT INTO "sales" VALUES (70,4,5,'2021-12-31');
INSERT INTO "sales" VALUES (71,3,3,'2021-12-31');
INSERT INTO "sales" VALUES (72,2,7,'2022-01-01');
INSERT INTO "sales" VALUES (73,4,5,'2022-01-01');
INSERT INTO "sales" VALUES (74,5,3,'2022-01-02');
INSERT INTO "sales" VALUES (75,1,4,'2022-01-02');
INSERT INTO "sales" VALUES (76,3,8,'2022-01-03');
INSERT INTO "sales" VALUES (77,6,10,'2022-01-03');
INSERT INTO "sales" VALUES (78,8,12,'2022-01-04');
INSERT INTO "sales" VALUES (79,11,9,'2022-01-04');
INSERT INTO "sales" VALUES (80,9,14,'2022-01-05');
INSERT INTO "sales" VALUES (81,12,13,'2022-01-05');
INSERT INTO "sales" VALUES (82,10,16,'2022-01-06');
INSERT INTO "sales" VALUES (83,7,11,'2022-01-06');
INSERT INTO "sales" VALUES (84,14,18,'2022-01-07');
INSERT INTO "sales" VALUES (85,15,17,'2022-01-07');
INSERT INTO "sales" VALUES (86,16,19,'2022-01-08');
INSERT INTO "sales" VALUES (87,18,20,'2022-01-08');
INSERT INTO "sales" VALUES (88,17,22,'2022-01-09');
INSERT INTO "sales" VALUES (89,20,21,'2022-01-09');
INSERT INTO "sales" VALUES (90,22,23,'2022-01-10');
INSERT INTO "sales" VALUES (91,25,24,'2022-01-10');
INSERT INTO "sales" VALUES (92,3,7,'2022-01-11');
INSERT INTO "sales" VALUES (93,5,4,'2022-01-11');
INSERT INTO "sales" VALUES (94,1,6,'2022-01-12');
INSERT INTO "sales" VALUES (95,8,9,'2022-01-12');
INSERT INTO "sales" VALUES (96,10,12,'2022-01-13');
INSERT INTO "sales" VALUES (97,2,15,'2022-01-13');
INSERT INTO "sales" VALUES (98,11,18,'2022-01-14');
INSERT INTO "sales" VALUES (99,7,20,'2022-01-14');
INSERT INTO "sales" VALUES (100,14,22,'2022-01-15');
INSERT INTO "sales" VALUES (101,4,21,'2022-01-15');
INSERT INTO "sales" VALUES (102,16,24,'2022-01-16');
INSERT INTO "sales" VALUES (103,9,23,'2022-01-16');
INSERT INTO "sales" VALUES (104,18,26,'2022-01-17');
INSERT INTO "sales" VALUES (105,12,27,'2022-01-17');
INSERT INTO "sales" VALUES (106,20,28,'2022-01-18');
INSERT INTO "sales" VALUES (107,22,25,'2022-01-18');
INSERT INTO "sales" VALUES (108,17,29,'2022-01-19');
INSERT INTO "sales" VALUES (109,13,30,'2022-01-19');
INSERT INTO "sales" VALUES (110,25,28,'2022-01-20');
INSERT INTO "sales" VALUES (111,19,24,'2022-01-20');
INSERT INTO "t_sales" VALUES (1,'吉田 千代','アルコール','日本酒',600);
INSERT INTO "t_sales" VALUES (2,'吉田 千代','軽食','ツナサンド',200);
INSERT INTO "t_sales" VALUES (3,'吉田 千代','軽食','おにぎりセット',420);
INSERT INTO "t_sales" VALUES (4,'吉田 千代','スナック','チョコレート',300);
INSERT INTO "t_sales" VALUES (5,'浜田 美香','アルコール','ビール',200);
INSERT INTO "t_sales" VALUES (6,'浜田 美香','軽食','ツナサンド',200);
INSERT INTO "t_sales" VALUES (7,'斉藤 和夫','スナック','まんじゅう',200);
INSERT INTO "t_sales" VALUES (8,'斉藤 和夫','アルコール','ビール',200);
INSERT INTO "t_sales" VALUES (9,'吉田 千代','軽食','おにぎりセット',420);
INSERT INTO "t_sales" VALUES (10,'浜田 美香','軽食','ツナサンド',200);
INSERT INTO "t_sales" VALUES (11,'吉田 千代','アルコール','日本酒',600);
INSERT INTO "t_sales" VALUES (12,'吉田 千代','アルコール','日本酒',600);
INSERT INTO "t_sales" VALUES (13,'斉藤 和夫','軽食','おにぎりセット',420);
INSERT INTO "t_sales" VALUES (14,'吉田 千代','スナック','まんじゅう',200);
INSERT INTO "t_sales" VALUES (15,'浜田 美香','スナック','チョコレート',300);
INSERT INTO "t_sales" VALUES (16,'斉藤 和夫','軽食','ツナサンド',200);
INSERT INTO "t_sales" VALUES (17,'吉田 千代','スナック','まんじゅう',200);
INSERT INTO "t_sales" VALUES (18,'浜田 美香','スナック','チョコレート',300);
INSERT INTO "t_sales" VALUES (19,'浜田 美香','アルコール','ビール',200);
INSERT INTO "t_sales" VALUES (20,'斉藤 和夫','スナック','チョコレート',300);
INSERT INTO "t_sales" VALUES (21,'斉藤 和夫','スナック','まんじゅう',200);
INSERT INTO "t_sales" VALUES (22,'吉田 千代','軽食','ツナサンド',200);
INSERT INTO "t_sales" VALUES (23,'斉藤 和夫','アルコール','日本酒',600);
INSERT INTO "t_sales" VALUES (24,'吉田 千代','軽食','おにぎりセット',420);
INSERT INTO "t_sales" VALUES (25,'斉藤 和夫','アルコール','ビール',200);
INSERT INTO "t_sales" VALUES (26,'吉田 千代','スナック','まんじゅう',200);
INSERT INTO "t_sales" VALUES (27,'斉藤 和夫','軽食','おにぎりセット',420);
INSERT INTO "t_sales" VALUES (28,'吉田 千代','アルコール','ビール',200);
INSERT INTO "t_sales" VALUES (29,'浜田 美香','アルコール','ビール',200);
INSERT INTO "t_sales" VALUES (30,'斉藤 和夫','軽食','ツナサンド',200);
COMMIT;

SELECT  
*
-- I.name AS 商品名,
-- I.price AS 価格,
-- S.sales_date AS 取引日,
-- E.name AS 社員名,
-- E.mail AS メールアドレス,
-- E.hire_date AS 雇用日,
-- E.salary AS 給与,
-- D.name AS 部署名,
-- D.locale AS 住所
-- I.name AS 商品名,
-- S.sales_date AS 取引日 
-- COUNT(S.item_id)
FROM item I 
JOIN sales S ON I.item_id = S.item_id
JOIN employee E ON E.employee_id = S.item_id
-- JOIN dept D ON E.dept_id = D.dept_id
-- WHERE S.sales_date BETWEEN '2021-12-10' AND '2021-12-11'
-- GROUP BY S.item_id
-- ORDER BY S.sales_date DESC
;