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
CREATE TABLE IF NOT EXISTS comments (
    comment_id INTEGER PRIMARY KEY AUTOINCREMENT, -- コメント一意ID
    post_id INTEGER NOT NULL,                     -- 投稿ID
    user_id INTEGER NOT NULL,                     -- ユーザーID
    comment TEXT NOT NULL,                        -- コメント本文
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(post_id) REFERENCES posts(post_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);
CREATE TABLE IF NOT EXISTS "dept" (
	"dept_id"	INTEGER,
	"name"	TEXT NOT NULL,
	"locale"	TEXT,
	PRIMARY KEY("dept_id")
);
CREATE TABLE IF NOT EXISTS employee ( employee_id INTEGER,   name  TEXT NOT NULL,  mail  TEXT, hire_date DATE,  salary  INTEGER, dept_id  INTEGER, PRIMARY KEY(employee_id) );
CREATE TABLE IF NOT EXISTS follows (
    follower_id INTEGER,       -- フォローするユーザーID
    followed_id INTEGER,       -- フォローされるユーザーID
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP, -- フォロー日時
    PRIMARY KEY(follower_id, followed_id),
    FOREIGN KEY(follower_id) REFERENCES users(user_id),
    FOREIGN KEY(followed_id) REFERENCES users(user_id)
);
CREATE TABLE IF NOT EXISTS "item" (
	"item_id"	INTEGER,
	"name"	TEXT NOT NULL,
	"price"	INTEGER,
	PRIMARY KEY("item_id")
);
CREATE TABLE IF NOT EXISTS likes (
    user_id INTEGER,           -- ユーザーID
    post_id INTEGER,           -- 投稿ID
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP, -- いいね日時
    PRIMARY KEY(user_id, post_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(post_id) REFERENCES posts(post_id)
);
CREATE TABLE IF NOT EXISTS post_tags (
    post_id INTEGER,            -- 投稿ID
    tag_id INTEGER,             -- タグID
    PRIMARY KEY(post_id, tag_id),
    FOREIGN KEY(post_id) REFERENCES posts(post_id),
    FOREIGN KEY(tag_id) REFERENCES tags(tag_id)
);
CREATE TABLE IF NOT EXISTS posts (
    post_id INTEGER PRIMARY KEY, -- 投稿ID
    user_id INTEGER,             -- 投稿者のユーザーID
    title TEXT NOT NULL,         -- 投稿タイトル
    content TEXT,                -- 投稿内容
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);
CREATE TABLE IF NOT EXISTS "product" (
	"product_id"	INTEGER,
	"name"	TEXT NOT NULL,
	"category_id"	INTEGER,
	PRIMARY KEY("product_id")
);
CREATE TABLE IF NOT EXISTS profiles (
    profile_id INTEGER PRIMARY KEY, -- プロフィールID
    user_id INTEGER UNIQUE,         -- ユーザーID（一意）
    bio TEXT,                       -- 自己紹介
    FOREIGN KEY(user_id) REFERENCES users(user_id)
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
CREATE TABLE IF NOT EXISTS tags (
    tag_id INTEGER PRIMARY KEY, -- タグID
    tag_name TEXT NOT NULL      -- タグ名
);
CREATE TABLE IF NOT EXISTS users (
    user_id INTEGER PRIMARY KEY, -- ユーザーID
    username TEXT NOT NULL       -- ユーザー名
);
INSERT INTO "comments" ("comment_id","post_id","user_id","comment","created_at") VALUES (1,3,7,'とても参考になりました。','2025-01-12 10:23:45'),
 (2,1,12,'良い記事ですね。','2025-01-12 11:02:10'),
 (3,10,4,'この説明はわかりやすいです。','2025-01-12 12:30:54'),
 (4,8,9,'また続きを読みたいです。','2025-01-12 13:14:35'),
 (5,6,1,'勉強になります！','2025-01-12 14:07:12'),
 (6,2,14,'初心者でも理解しやすいです。','2025-01-12 15:01:44'),
 (7,9,5,'ありがとうございます。','2025-01-12 15:33:20'),
 (8,11,10,'もう少し詳しく知りたいです。','2025-01-12 15:55:08'),
 (9,4,3,'試してみます！','2025-01-12 16:21:40'),
 (10,7,8,'分かりやすかったです。','2025-01-12 16:55:10'),
 (11,5,6,'備忘録として保存しました。','2025-01-12 17:04:55'),
 (12,12,2,'もっと読みたいです。','2025-01-12 17:33:11'),
 (13,13,11,'とても助かりました。','2025-01-12 18:12:26'),
 (14,1,9,'丁寧な解説で感謝します。','2025-01-12 18:44:33'),
 (15,3,13,'このシリーズ続けてほしいです。','2025-01-12 19:01:55'),
 (16,3,7,'とても分かりやすい内容でした。','2025-02-01 10:12:45'),
 (17,1,12,'参考になりました、ありがとうございます。','2025-02-01 10:45:30'),
 (18,10,4,'このテーマは興味深いです。','2025-02-01 11:03:22'),
 (19,8,9,'また続編を期待しています。','2025-02-01 11:44:09'),
 (20,6,1,'初めて知りました、学びになりました。','2025-02-01 12:15:54'),
 (21,2,14,'初心者にも親切な説明で助かります。','2025-02-01 13:02:18'),
 (22,9,5,'大変勉強になります。','2025-02-01 13:40:51'),
 (23,11,10,'非常に有用な情報でした。','2025-02-01 14:05:33'),
 (24,4,3,'後で試してみようと思います。','2025-02-01 14:55:10'),
 (25,7,8,'丁寧な解説ありがとうございます。','2025-02-01 15:12:44'),
 (26,5,6,'これは良い情報ですね。','2025-02-01 15:46:17'),
 (27,12,2,'もっと詳しく知りたいです。','2025-02-01 16:23:05'),
 (28,13,11,'とても助かりました！','2025-02-01 16:58:40'),
 (29,1,9,'素晴らしい記事をありがとうございます。','2025-02-01 17:11:29'),
 (30,3,13,'シリーズとして続けてほしいです。','2025-02-01 17:50:03');
INSERT INTO "dept" ("dept_id","name","locale") VALUES (1,'北海道営業部','北海道札幌市北区北6条西4'),
 (2,'東北営業部','宮城県仙台市青葉区中央1-1'),
 (3,'北関東営業部','群馬県前橋市表町2丁目3-1'),
 (4,'南関東営業部','神奈川県横浜市西区高島2-1'),
 (5,'東京営業部','東京都千代田区丸の内1丁目'),
 (6,'東海営業部','静岡県浜松市中区砂山町62'),
 (7,'甲信営業部','長野県長野市大字栗田5-9'),
 (8,'北陸営業部','石川県金沢市広岡3-1'),
 (9,'関西営業部','大阪府大阪市北区梅田1-1'),
 (10,'京滋営業部','京都府京都市下京区烏丸通塩小路下ル'),
 (11,'中国営業部','広島県広島市中区基町6-27'),
 (12,'四国営業部','香川県高松市栗林町1-1'),
 (13,'九州営業部','福岡県福岡市博多区博多駅中央街1-1'),
 (14,'沖縄営業部','沖縄県那覇市泉崎1-2'),
 (15,'道東営業部','北海道釧路市黒金町1-4'),
 (16,'道南営業部','北海道函館市若松町12-13'),
 (17,'青森営業部','青森県青森市長島1-1'),
 (18,'秋田営業部','秋田県秋田市中通7丁目2-1'),
 (19,'山形営業部','山形県山形市香澄町1-1'),
 (20,'新潟営業部','新潟県新潟市中央区花園1-1'),
 (21,'北陸東営業部','富山県富山市桜町1-1'),
 (22,'中部営業部','愛知県名古屋市中村区名駅1丁目1-4'),
 (23,'三重営業部','三重県津市羽所町700'),
 (24,'関西南営業部','和歌山県和歌山市美園町5-1'),
 (25,'山陰営業部','鳥取県鳥取市東品治町112'),
 (26,'鹿児島営業部','鹿児島県鹿児島市中央町1-1'),
 (27,'長崎営業部','長崎県長崎市尾上町1-1');
INSERT INTO "employee" ("employee_id","name","mail","hire_date","salary","dept_id") VALUES (1,'梅津 玲那','umedu_rena@example.com','1987-07 03',452000,2),
 (2,'米谷 朝陽','yoneya_asahi@example.com','1990-10 01',428280,3),
 (3,'古田 沙知絵','furuta_sachie@example.com','1991 02-26',425320,4),
 (4,'細川 ちえみ','hosokawa_chiemi@example.com','2002-11-25',339520,4),
 (5,'宇田川 雅紀','utagawa_masanori@example.com','2002-12-28',338860,5),
 (6,'柴山 恭子','shibayama_kyouko@example.com','2008-06-04',299160,3),
 (7,'竹下 明日','takeshita_meibi@example.com','2019 08-12',217440,5),
 (8,'下山 草太','shimoyama_souta@example.com','2021 01-02',207260,NULL),
 (9,'高橋 翼','takahashi_tsubasa@example.com','1992-03-15',412000,2),
 (10,'佐々木 花','sasaki_hana@example.com','1989-07-22',439500,3),
 (11,'伊藤 健太','ito_kenta@example.com','1995-11-10',385200,4),
 (12,'渡辺 美咲','watanabe_misaki@example.com','1993-05-05',421000,4),
 (13,'中村 直樹','nakamura_naoki@example.com','1990-08-30',398000,5),
 (14,'小林 彩香','kobayashi_ayaka@example.com','1998-12-12',362500,3),
 (15,'松本 健','matsumoto_ken@example.com','2001-04-20',341200,5),
 (16,'山田 舞','yamada_mai@example.com','2003-09-18',327800,2),
 (17,'岡田 颯太','okada_souta@example.com','1997-06-06',374500,4),
 (18,'村上 由紀','murakami_yuki@example.com','1996-01-25',391200,3),
 (19,'石井 大輔','ishii_daisuke@example.com','1994-10-08',402000,5),
 (20,'斎藤 結衣','saito_yui@example.com','2000-02-14',350600,4),
 (21,'菊地 翔','kikuchi_sho@example.com','1991-09-09',420000,3),
 (22,'田中 美羽','tanaka_miu@example.com','2002-05-17',334500,5),
 (23,'森本 拓海','morimoto_takumi@example.com','1999-07-21',368200,2),
 (24,'長谷川 舞','hasegawa_mai@example.com','1998-11-03',356700,4),
 (25,'加藤 悠真','kato_yuma@example.com','2001-08-11',342800,3),
 (26,'青木 理沙','aoki_risa@example.com','2003-03-27',328900,5),
 (27,'藤田 陽翔','fujita_haruto@example.com','1996-12-19',389500,2),
 (28,'木村 美咲','kimura_misaki@example.com','1997-04-02',372100,4),
 (29,'中川 翼','nakagawa_tsubasa@example.com','1995-06-15',396000,3),
 (30,'浜田 花音','hamada_kanon@example.com','2000-09-09',351400,5);
INSERT INTO "follows" ("follower_id","followed_id","created_at") VALUES (4,1,'2025-12-12 08:25:26'),
 (5,1,'2025-12-12 08:25:26'),
 (6,2,'2025-12-12 08:25:26'),
 (7,3,'2025-12-12 08:25:26'),
 (8,4,'2025-12-12 08:25:26'),
 (9,3,'2025-12-12 08:25:26'),
 (10,2,'2025-12-12 08:25:26'),
 (11,4,'2025-12-12 08:25:26'),
 (12,8,'2025-12-12 08:25:26'),
 (13,2,'2025-12-12 08:25:26');
INSERT INTO "item" ("item_id","name","price") VALUES (1,'４Ｋ液晶ＴＶ',80000),
 (2,'事務用電卓機',6000),
 (3,'室内用空清機',29000),
 (4,'ノートパソコン',70000),
 (5,'一眼デジカメ',65000),
 (6,'ＬＥＤデスクライト',4500),
 (7,'オフィスチェア',12000),
 (8,'レーザープリンタ',38000),
 (9,'無線ルータ',8000),
 (10,'タブレット端末',35000),
 (11,'スマートウォッチ',22000),
 (12,'外付けＳＳＤ',15000),
 (13,'ＵＳＢメモリ（64GB）',1500),
 (14,'シュレッダー',9000),
 (15,'プロジェクター',52000),
 (16,'ワイヤレスキーボード',4000),
 (17,'ワイヤレスマウス',2500),
 (18,'デスクトップＰＣ',95000),
 (19,'オフィスホワイトボード',11000),
 (20,'ＷＥＢカメラ',4800),
 (21,'サーバーラック',78000),
 (22,'多機能コピー機',120000),
 (23,'４Ｋプロジェクタ用スクリーン',18000),
 (24,'ビジネスバッグ',9000),
 (25,'スマートスピーカー',12000);
INSERT INTO "likes" ("user_id","post_id","created_at") VALUES (3,1,'2025-12-12 08:25:26'),
 (4,2,'2025-12-12 08:25:26'),
 (5,3,'2025-12-12 08:25:26'),
 (6,3,'2025-12-12 08:25:26'),
 (7,5,'2025-12-12 08:25:26'),
 (8,6,'2025-12-12 08:25:26'),
 (3,3,'2025-12-12 08:25:26'),
 (10,8,'2025-12-12 08:25:26'),
 (8,2,'2025-12-12 08:25:26'),
 (12,2,'2025-12-12 08:25:26');
INSERT INTO "post_tags" ("post_id","tag_id") VALUES (3,1),
 (4,5),
 (5,2),
 (6,7),
 (7,9),
 (8,8),
 (9,1),
 (10,14),
 (11,13),
 (12,11);
INSERT INTO "posts" ("post_id","user_id","title","content") VALUES (1,1,'初めての投稿','こんにちは！'),
 (2,1,'SQLite学習','SQLiteは便利です。'),
 (3,2,'Pythonの魅力','Python大好き！'),
 (4,3,'SQL入門','SELECT文を勉強中です'),
 (5,4,'Flask触ってみた','ルーティングが簡単です'),
 (6,5,'今日の作業記録','HTMLとCSSを学習しました'),
 (7,6,'Docker勉強中','コンテナは便利'),
 (8,7,'UI改善案','ボタンを大きくしました'),
 (9,8,'テスト自動化','pytestを導入しました'),
 (10,9,'セキュリティTips','2FAは有効です'),
 (11,10,'統計学メモ','平均と中央値の違い'),
 (12,11,'動画編集アプリ比較','PremiereとDaVinciを比較'),
 (13,12,'機械学習ログ','回帰モデルを改善しました');
INSERT INTO "profiles" ("profile_id","user_id","bio") VALUES (1,1,'Web開発者です'),
 (2,2,'データサイエンティスト'),
 (3,3,'Pythonエンジニア'),
 (4,4,'バックエンドエンジニア'),
 (5,5,'フロントエンド開発が得意です'),
 (6,6,'クラウドインフラ担当'),
 (7,7,'UI/UXデザイナー'),
 (8,8,'QAエンジニアです'),
 (9,9,'セキュリティエンジニア'),
 (10,10,'数学が好きなエンジニア'),
 (11,11,'動画編集が趣味です'),
 (12,12,'機械学習モデル開発中'),
 (13,13,'ガジェットレビューを書いています');
INSERT INTO "sales" ("sales_id","item_id","employee_id","sales_date") VALUES (1,1,7,'2021-12-01'),
 (2,2,4,'2021-12-01'),
 (3,3,4,'2021-12-01'),
 (4,1,4,'2021-12-02'),
 (5,3,6,'2021-12-02'),
 (6,2,2,'2021-12-02'),
 (7,3,5,'2021-12-03'),
 (8,5,7,'2021-12-03'),
 (9,5,4,'2021-12-04'),
 (10,3,2,'2021-12-04'),
 (11,5,5,'2021-12-06'),
 (12,2,6,'2021-12-06'),
 (13,2,5,'2021-12-07'),
 (14,4,5,'2021-12-07'),
 (15,3,3,'2021-12-07'),
 (16,3,5,'2021-12-08'),
 (17,1,4,'2021-12-08'),
 (18,2,7,'2021-12-08'),
 (19,1,4,'2021-12-08'),
 (20,3,2,'2021-12-09'),
 (21,4,5,'2021-12-09'),
 (22,5,4,'2021-12-09'),
 (23,1,4,'2021-12-10'),
 (24,1,7,'2021-12-10'),
 (25,2,2,'2021-12-10'),
 (26,4,5,'2021-12-11'),
 (27,4,5,'2021-12-11'),
 (28,3,1,'2021-12-12'),
 (29,2,3,'2021-12-12'),
 (30,4,5,'2021-12-13'),
 (31,2,6,'2021-12-14'),
 (32,1,7,'2021-12-14'),
 (33,3,6,'2021-12-15'),
 (34,1,6,'2021-12-15'),
 (35,2,7,'2021-12-16'),
 (36,5,6,'2021-12-16'),
 (37,1,6,'2021-12-16'),
 (38,5,6,'2021-12-16'),
 (39,1,2,'2021-12-16'),
 (40,1,5,'2021-12-17'),
 (41,3,6,'2021-12-18'),
 (42,1,4,'2021-12-18'),
 (43,2,2,'2021-12-19'),
 (44,1,6,'2021-12-19'),
 (45,5,1,'2021-12-19'),
 (46,2,3,'2021-12-20'),
 (47,1,4,'2021-12-20'),
 (48,1,7,'2021-12-21'),
 (49,1,2,'2021-12-21'),
 (50,4,5,'2021-12-22'),
 (51,5,4,'2021-12-22'),
 (52,5,3,'2021-12-24'),
 (53,5,3,'2021-12-24'),
 (54,3,1,'2021-12-25'),
 (55,5,1,'2021-12-25'),
 (56,4,5,'2021-12-25'),
 (57,5,2,'2021-12-26'),
 (58,2,7,'2021-12-27'),
 (59,1,3,'2021-12-27'),
 (60,2,7,'2021-12-27'),
 (61,2,7,'2021-12-28'),
 (62,2,5,'2021-12-29'),
 (63,5,7,'2021-12-29'),
 (64,2,2,'2021-12-29'),
 (65,5,2,'2021-12-29'),
 (66,5,1,'2021-12-30'),
 (67,1,6,'2021-12-30'),
 (68,5,5,'2021-12-31'),
 (69,1,2,'2021-12-31'),
 (70,4,5,'2021-12-31');
INSERT INTO "tags" ("tag_id","tag_name") VALUES (1,'プログラミング'),
 (2,'Python'),
 (5,'データベース'),
 (6,'JavaScript'),
 (7,'HTML'),
 (8,'CSS'),
 (9,'Docker'),
 (10,'AI'),
 (11,'機械学習'),
 (12,'設計'),
 (13,'レビュー'),
 (14,'統計');
INSERT INTO "users" ("user_id","username") VALUES (1,'田中太郎'),
 (2,'山田次郎'),
 (3,'鈴木三郎'),
 (4,'吉田史郎'),
 (5,'佐藤五郎'),
 (6,'中村六郎'),
 (7,'小林七海'),
 (8,'加藤八郎'),
 (9,'井上九州男'),
 (10,'渡辺十郎'),
 (11,'村上優子'),
 (12,'藤田一馬'),
 (13,'高橋光'),
 (14,'石井陽子');
COMMIT;
