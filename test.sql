CREATE DATABASE  IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `user` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('bao anh','1234','baoanh1234@gmail.com'),(NULL,'0310','dangnam0310@gmail.com'),('dang nam','6830','dangnam6830@gmail.com'),('duc loi','4321','ducloi4321@gmail.com'),('le quang','6856','lequang6856@gmail.com'),(NULL,'5678','minhnguyet5678@gmail.com'),(NULL,'4321','nam.kd@gmail.com'),('nhat huy','123','nhathuy123@gmail.com'),(NULL,'1234','thanhnguyen@gmail.com'),('thu huyen','123456','thuhuyen123456@gmail.com'),('trung thanh','6874','trungthanh6874@gmail.com');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (5,'Le Quang','i am student','lequang6856@gmail.com'),(6,'Dang Nam','hello my course','dangnam0310@gmail.com');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goin21`
--

DROP TABLE IF EXISTS `goin21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goin21` (
  `id` int(11) NOT NULL,
  `quest` varchar(255) DEFAULT NULL,
  `ans1` varchar(255) DEFAULT NULL,
  `ans2` varchar(255) DEFAULT NULL,
  `ans3` varchar(255) DEFAULT NULL,
  `ans4` varchar(255) DEFAULT NULL,
  `da` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goin21`
--

LOCK TABLES `goin21` WRITE;
/*!40000 ALTER TABLE `goin21` DISABLE KEYS */;
INSERT INTO `goin21` VALUES (1,'交通(事故)は年々増加している','1: じこう','2: じっこ','3: じこ','4: じご','3'),(2,'この国は(豊富)なしげんに恵まれている','1: ほうふく','2:  ゆふく','3: ゆうふく','4: ほうふ','4'),(3,'この商品は、全員の方には1時から、(一般)の方には3時から販売します。','1: いっばん','2: いっぱん','3: いちはん','4: いちばん','2'),(4,'猫の(背中)は丸い。','1: せいなか','2: ぜなか','3: せちゅう','4: せなか','4'),(5,'先月だけで銀行(強盗)が4件あった。','1: ごうどう','2: ごとう','3: ごうとう','4: きょうどう','3'),(6,'優勝したチームにはすてきな賞品が(与えられた)。','1: くわえられた','2: あたえられた','3: こえられた','4: ささえられた','2'),(7,'この問題は簡単だから、すぐ(解ける)。','1: よめる','2: かける','3: とける','4: さける','3'),(8,'仕事を始めて2年。やっと(収入)が支出より多くなった。','1: しゅうにゅう','2: しゅうにゅ','3: しゅにゅう','4: しょにゅう','1'),(9,'住所(変更)の場合は旧住所も書く。','1: へんこん','2: へんこう','3: へんごう','4: へんごん','2'),(10,'ここに宝石が(埋められて)いるという。','1: とめられて','2: せめられて','3: うめられて','4: なめられて','3'),(11,'山の(頂上)で大声で叫んだ。','1: ちょうじょう','2: さんちょう','3: ちじょう','4: ちょうじょ','1'),(12,'高い参加費の研修だったが、全くよくなかった。行って(損した)。','1: とくした','2: ためした','3: そんした','4: らくした','3'),(13,'よく(似て)いると思ったら、双子だった。','1: にて','2: して','3: みて','4: えて','1'),(14,'子供のころはとても(貧しくて)、お菓子も買えなかった。','1: かなしくて','2: やましくて','3: まずしくて','4: びんしくて','3'),(15,'支払いは(済んでいる)。','1: やんで','2: すんで','3: とんで','4: かんで','2'),(16,'この(劇)には有名な歌手が出ている。','1: けき','2: きょく','3: げき','4: きょう','3'),(17,'(物価)はますます上がっている。','1: ぶつか','2: ものか','3: ぶっか','4: もっか','3'),(18,'食べすぎて(腹)が痛い。','1: おなか','2: はら','3: むね','4: あたま','1'),(19,'地震のあと長い間通行止めだった道路が、やっと今日から通行が(許可)された。','1: きょうか','2: きょか','3: きょっか','4: しょうか','2'),(20,'(普段)は近くのスーパーで買い物をする。','1: ふうたん','2: ふたん','3: ふだん','4: ふうだん','3');
/*!40000 ALTER TABLE `goin21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goin22`
--

DROP TABLE IF EXISTS `goin22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goin22` (
  `id` int(11) NOT NULL,
  `quest` varchar(255) DEFAULT NULL,
  `ans1` varchar(255) DEFAULT NULL,
  `ans2` varchar(255) DEFAULT NULL,
  `ans3` varchar(255) DEFAULT NULL,
  `ans4` varchar(255) DEFAULT NULL,
  `da` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goin22`
--

LOCK TABLES `goin22` WRITE;
/*!40000 ALTER TABLE `goin22` DISABLE KEYS */;
INSERT INTO `goin22` VALUES (1,'友人を家に(まねいた)。','1: 伯いた','2: 招いた','3: 泊いた','4: 召いた','2'),(2,'この商品は安全性が(ほしょう)されている。','1: 補証','2:  保正','3: 保証','4: 補正','3'),(3,'この商品は、全員のこの企業では、さまざまな(もよおし)を行っている。','1: 携し','2: 催し','3: 推し','4: 権し','2'),(4,'銀行に行って、お札を(こうか)に替えた。','1: 硬貨','2: 固貨','3: 硬価','4: 固価','1'),(5,'わが社の商品はここで(せいぞう)されている。','1: 製増','2: 制増','3: 制造','4: 製造','4'),(6,'ハトは平和の(しょうちょう)だと言われている。','1: 像徴','2: 象微','3: 象徴','4: 像微','3'),(7,'退院しても、しばらくの間、(はげしい)運動はしないでください。','1: 険しい','2: 激しい','3: 暴しい','4: 極しい','2'),(8,'携帯電話けいたいでんわに友達の電話番号を(とうろく)した。','1: 登録','2: 登緑','3: 答録','4: 答緑','1'),(9,'岡田おかださんを話題の映画に(さそった)。','1: 招った','2: 勧った','3: 請った','4: 誘った','4'),(10,'待ち合わせの時間を6時に(へんこう)してもらった。','1: 変改','2: 変更','3: 変換','4: 変替','2'),(11,'本日の営業は(しゅうりょう)しました。','1: 完了','2: 終了','3: 修了','4: 満了','2'),(12,'コピー用紙の枚数を(かぞえる)。','1: 揃える','2: 数える','3: 耐える','4: 鍛える','2'),(13,'花の(たね)をまく。','1: 竹','2: 根','3: 灰','4: 種','4'),(14,'日本語能力試験の(けっか)が出た。','1: 許可','2: 変化','3: 結果','4: 効果','3'),(15,'放置自転車は市が(しょぶん)します。','1: 処分','2: 当分','3: 所分','4: 書分','1'),(16,'彼女は今、(せいしん)的にかなり弱っている。','1: 精神','2: 精心','3: 性心','4: 性神','1'),(17,'長い間の努力が、やっと実を(むすんだ)。','1: 果んだ','2: 産んだ','3: 結んだ','4: 咲んだ','3'),(18,'少し、頭が(こんらん)してきたので、話を整理しましょう。','1: 混乱','2: 困惑','3: 混浴','4: 困難','1'),(19,'日本人は、よく(きんべん)だと言われる。','1: 勤便','2: 緊勉','3: 金便','4: 勤勉','4'),(20,'あの会社の社長は、うちの社員に対して (むり)ばかり言う。','1: 無里','2: 無理','3: 夢中','4: 夢利','2');
/*!40000 ALTER TABLE `goin22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goin23`
--

DROP TABLE IF EXISTS `goin23`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goin23` (
  `id` int(11) NOT NULL,
  `quest` varchar(255) DEFAULT NULL,
  `ans1` varchar(255) DEFAULT NULL,
  `ans2` varchar(255) DEFAULT NULL,
  `ans3` varchar(255) DEFAULT NULL,
  `ans4` varchar(255) DEFAULT NULL,
  `da` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goin23`
--

LOCK TABLES `goin23` WRITE;
/*!40000 ALTER TABLE `goin23` DISABLE KEYS */;
INSERT INTO `goin23` VALUES (1,'男女の結婚（＿＿＿）の違いについて調べた。','1: 観','2: 識','3: 念','4: 察','1'),(2,'ここでは（＿＿＿）水準の医療が受けられる。','1: 頂','2:  上','3: 高','4: 特','3'),(3,'今日は大学の講義で日本（＿＿＿）の経営について学んだ。','1: 状','2: 類','3: 式','4: 則','3'),(4,'開封しても、（＿＿＿）使用の物は返品可能です。','1: 外','2: 否','3: 前','4: 未','4'),(5,'受験生なので、勉強（＿＿＿）の毎日だ。','1: 漬け','2: 浸し','3: 溶け','4: 満ち','1'),(6,'彼は医学（_____）ではかなり知られた存在だ。','1: 界','2: 帯','3: 域','4: 区','1'),(7,'決勝戦で負けて、（_____）優勝に終わった。','1: 後','2: 準','3: 次','4: 副','2'),(8,'（_____）段階では詳細は決まっていないらしい。','1: 現','2: 直','3: 近','4: 当','1'),(9,'今回の大臣の訪問は（_____）公式に行われた。','1: 不','2: 未','3: 無','4: 非','4'),(10,'わが社の今年の（_____）売上は、昨年を上回った。','1: 集','2: 総','3: 合','4: 満','2'),(11,'ドライブに出かけたが、忘れ物をして途中で家に（_____）返した。','1: 引き','2: 追い','3: 取り','4: 乗り','1'),(12,'（_____）意識のう ちに、爪をかんでしまう。','1: 不','2: 未','3: 無','4: 非','1'),(13,'掃除するので、ちょっとイスを持ち(_____)ください。','1: 下げて','2: 上げて','3: 止めて','4: 込んで','2'),(14,'観客はフルートの(_____)演奏に耳を傾けた。','1: 名','2: 高','3: 有','4: 総','1'),(15,'映像と音楽を組み(_____)映画を作製します。','1: 込んで','2: 直して','3: 合わせて','4: 返して','3'),(16,'昨日の帰り、知らない男に追い(_____)て、怖い思いをした。','1: はらわれ','2: おそわれ','3: かけられ','4: さわがれ','3'),(17,'この時期になると、 5 時をすぎると、外はもう(_____)暗だ。','1: 真っ','2: 全っ','3: 総っ','4: 深っ','1'),(18,'気温が上がって花も咲きはじめ、だいぶ春(_____)なりました。','1: ように','2: こんで','3: らしく','4: そうに','3'),(19,'近所のスーパーで、日用(_____)を買った。','1: 物','2: 品','3: 貨','4: 荷','2'),(20,'コンサートが中止になったため、料金が払い(_____)れた。','1: 返さ','2: 過ごさ','3: 元さ','4: 戻さ','4');
/*!40000 ALTER TABLE `goin23` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goin24`
--

DROP TABLE IF EXISTS `goin24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goin24` (
  `id` int(11) NOT NULL,
  `quest` varchar(255) DEFAULT NULL,
  `ans1` varchar(255) DEFAULT NULL,
  `ans2` varchar(255) DEFAULT NULL,
  `ans3` varchar(255) DEFAULT NULL,
  `ans4` varchar(255) DEFAULT NULL,
  `da` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goin24`
--

LOCK TABLES `goin24` WRITE;
/*!40000 ALTER TABLE `goin24` DISABLE KEYS */;
INSERT INTO `goin24` VALUES (1,'この大学では一般向けの講座を開き、社会に学習の場を（＿＿＿）している。','1: 選出','2: 提供','3: 指示','4: 寄付','2'),(2,'今年の夏は暑さが厳きびしく、仕事から家に帰ると疲れて（＿＿＿）してしまう','1: ぐったり','2:  しっかり','3: すっきり','4: ぎっしり','1'),(3,'学生時代の友人が私の名前を忘れていたので、とても（＿＿＿）だった。','1: アウト','2: ダウン','3:  ショック','4: エラー','3'),(4,'通路に荷物を置いたら、通る人の（＿＿＿）になりますよ。','1: 面倒','2: 邪魔','3: 被害','4: 無理','2'),(5,'少し長めの上のぼり坂ざかだったが（＿＿＿）ので、それほど疲れなかった。','1: おとなしかった','2: ささやかだった','3: なだらかだった','4: よわよわしかった','3'),(6,'出席者は皆会議に積極的に参加し、意見を（＿＿＿）交換し合った。','1: 活発に','2: 円満に','3: 機敏に','4: 濃厚に','1'),(7,'列に並んでいたら、私の前に強引に（＿＿＿）きた人がいて、嫌な気分になった。','1: 当てはまって','2: 付け加えて','3: 行き着いて','4: 割り込んで','4'),(8,'日本人の平均（_____）は、男性が７９歳、女性が８６歳である。','1: 生命','2: 寿命','3: 人生','4: 一生','2'),(9,'このカードの（_____）期限は３年です。','1: 発行','2: 流行','3: 有効','4: 用効','3'),(10,'男女（ ）に仕事の機会があたえられる。','1: 分別','2: 平等','3: 流行','4: 協力','2'),(11,'友達と付き（_____）買い物に行った。','1: 合って','2: 持って','3: 回って','4: 逢って','1'),(12,'彼は自分の失敗をみんなに（_____）。','1: 頼った','2: 許した','3: わびた','4: からかった','3'),(13,'電話の（_____）は、一般的にベルだと言われている。','1: 発明者','2: 発見者','3: 後継者','4: 有名者','1'),(14,'今月の家賃の（_____）を済ませる。','1: 節約','2: 支払い','3: 引き落とし','4: 分別','2'),(15,'今週は忙しかったから、週末は家で（_____ ）テレビを見ていた。','1: のろのろ','2: のんびり','3: ぐるぐる ','4: ぐっすり','2'),(16,'マラソンでは周りの人にあわせようとしないで、（_____）で走るといい。','1: テクニック','2: フレッシュ','3: アプローチ','4: マイペース','4'),(17,'あの店はサービスがいいと（_____）だ。','1: 評判','2: 評価','3: 診断','4: 決断','1'),(18,'彼女とは久しぶりに会ったので、何時間話しても話が（_____）。','1: 枯れない','2: 限らない','3: 尽きない','4: 衰えない','3'),(19,'練習の成果が（_____）できれば、きっと優勝できるだろう。','1: 発揮','2: 発生','3: 発行','4: 発明','1'),(20,'この表現は（_____）でわかりにくい。','1: 軟弱','2: 質素','3: あいまい','4: ささやか','3');
/*!40000 ALTER TABLE `goin24` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goin25`
--

DROP TABLE IF EXISTS `goin25`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goin25` (
  `id` int(11) NOT NULL,
  `quest` varchar(255) DEFAULT NULL,
  `ans1` varchar(255) DEFAULT NULL,
  `ans2` varchar(255) DEFAULT NULL,
  `ans3` varchar(255) DEFAULT NULL,
  `ans4` varchar(255) DEFAULT NULL,
  `da` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goin25`
--

LOCK TABLES `goin25` WRITE;
/*!40000 ALTER TABLE `goin25` DISABLE KEYS */;
INSERT INTO `goin25` VALUES (1,'高橋さんはとても(愉快)な人だ。','1: 面白い','2: おしゃれな','3: 親切な','4: かわいい','1'),(2,'それは確かに(やむをえない)ことだと思う。','1: もったいない','2:  なさけない','3: つまらない','4: しかたない','4'),(3,'少し(息抜きした)ほうがいいよ。','1:  待った','2: 急いだ','3: 休んだ','4: 働いた','3'),(4,'今日はとても(ついていた)。','1: 気分が悪かった','2: 運が悪かった','3: 気分がよかった','4: 運がよかった','4'),(5,'私は(つねに)言葉遣いに気をつけている。','1: 当然','2: いつも','3: 特に','4: できるだけ','2'),(6,'完成の(合図)に、右手を勢いよくあげることになっています。','1: マーク','2: サイン','3: ノート','4: ボタン','2'),(7,'子どもは(勘定)に入れず、一部屋 4 人まで利用できます。','1: 料金が不要である','2: 使用を禁止する','3: 合計に含まれない','4: 計算ができない','3'),(8,'大臣ならば、もう少し自分の立場を( 心得る) べきではないかと思う。','1: 承認する','2: 同意する','3: 経験する','4: 考慮する','4'),(9,' こうまでなったら、もう( 観念)する しかないかもしれない。','1: 決心','2: 覚悟','3: 決意','4: 断念','2'),(10,'時間に遅れたせいか、 (そろそろ)部屋の中に入ってきた。','1: のろのろ','2: ようやく','3: しばらく','4: しずかに','2'),(11,'彼は、仕事に力を(注いだ)。','1: 集中した','2: 失った','3: 抜いた','4: 貸した','1'),(12,'今日は、とても(さわやかな)朝だ。','1: 寒い','2: 気持ちいい','3: 暑い','4: 忙しい','2'),(13,'薬を使用する場合の(目安)を教えてください。','1: 目的','2: 見当','3: 注意','4: 方法','1'),(14,'父とけんかしてしまい、それから話す(きっかけ)がなかなかつかめない。','1: 機会','2: 理由','3: 時間','4: 場所','1'),(15,' 教室はとてもさ(わがしい)。','1: 美しい','2: むしあつい','3: うるさい','4: きたな','3'),(16,'彼女に耳元で「愛してるよ」と(そっと言った)。','1: さからった','2: ささやいた','3: おがんだ','4: ちかっ','2'),(17,'(面倒)な問題が起きた。十分に考えながら解決していなければならない','1: おしい','2: 要領が悪い','3: みっともない','4: やっかいな','4'),(18,'今日は客がたくさん来て、(忙しい)一日だった。','1: 荒っぽい','2: うるさい','3: あわただしい','4: おだや','3'),(19,' (以前)、この辺りに公園があった。','1: 第一に','2: かつて','3: 先に','4: 真っ先','2'),(20,'歯が痛かったが、(がまんして)仕事を続けた。','1: こもって','2: だまって','3: ふざけて','4: こらえて','4');
/*!40000 ALTER TABLE `goin25` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ND` varchar(255) NOT NULL,
  `Ans1` varchar(255) DEFAULT NULL,
  `Ans2` varchar(255) DEFAULT NULL,
  `Ans3` varchar(255) DEFAULT NULL,
  `DA` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'溺れる','A:　ふれる','B:　おぼれる','C:　あぼれる','B'),(2,'学校','A:　がくこ','B:　がっこう','C:　がっき','B'),(3,'香水','A:　ごすい','B:　ごす','C:　こうすい','C'),(4,'国境','A:　こっか','B:　こっきょう','C:　こくか','B'),(5,'想像','A:　そうぞう','B:　そうじょ','C:　そぞ','A'),(6,'濁る','A:　すむ','B:　にぎる','C:　にごる','C'),(7,'編む','A:　すむ','B:　あむ','C:　こむ','B'),(8,'承る','A:　うけたまわる','B:　ぼる','C:　とる','A'),(9,'恋愛','A:　こいあい','B:　こあい','C:　れんあい','C'),(10,'輝く','A:　しく','B:　かがやく','C:　むく','B'),(11,'増大','A: ぞうたい','B: そうたい','C: ぞうだい','C'),(12,'地盤','A: じばん','B: ちばん','C: ちぱん','A'),(13,'包装','A: ほそう','B: ほうそう','C: ぼうそう','B'),(14,'目安','A: もくあん','B: めあん','C: めやす','C'),(15,'一休み','A: ひとやすみ','B: いちやすみ','C: ひとつやすみ','A');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-15 14:10:41
