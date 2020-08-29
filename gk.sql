SET NAMES UTF8;
DROP DATABASE IF EXISTS gk;
CREATE DATABASE gk CHARSET=UTF8;
USE gk;

#创建用户表 gk_user
CREATE TABLE gk_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(50),
  upwd  VARCHAR(32)
);

/**用户信息表**/
INSERT INTO gk_user VALUES
(null,'khy','123456');

#创建COUPONS层表
CREATE TABLE coupons(
	lid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(50),#手办名称
	price DECIMAL(4,1) NOT NULL,#手办价格
	storename VARCHAR(50),
	pic VARCHAR(128)
);

/**COUPONS层表**/
INSERT INTO coupons VALUES
(null,"蕾雅大小姐优惠专属",5,"GoodSmile上海阿尼托官方旗舰店","/coupons/1.jpg"),
(null,"霞之秋诗羽专属优惠",5,"GoodSmile上海阿尼托官方旗舰店","/coupons/2.jpg"),
(null,"Navi专属优惠",10,"GoodSmile上海阿尼托官方旗舰店","/coupons/3.jpg"),
(null,"怪物猎人雕像专属优惠",5,"GoodSmile上海阿尼托官方旗舰店","/coupons/4.jpg"),
(null,"刘昴星专属优惠",5,"GoodSmile上海阿尼托官方旗舰店","/coupons/5.jpg"),
(null,"浪巫谣专属优惠",5,"GoodSmile上海阿尼托官方旗舰店","/coupons/6.jpg");

#创建鬼灭之刃系列层表
CREATE TABLE ghost(
	lid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(50),#手办名称
	pic VARCHAR(128),
	price DECIMAL(7,2) NOT NULL
);

INSERT INTO ghost VALUES
(null,"我妻善逸","/f1/1.jpg",342),
(null,"鬼灭之刃 灶门妳豆子 1/8标准","/f1/2.jpg",244),
(null,"【包邮】ARTFX J 鬼灭之刃","/f1/3.jpg",245),
(null,"【包邮】鬼灭之刃 ARTFX J","/f1/4.jpg",217),
(null,"【包邮】鬼灭之刃 ARTFX J","/f1/5.jpg",240);

#创建Fate系列层表
CREATE TABLE fate(
	lid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(50),#手办名称
	pic VARCHAR(128),
	price DECIMAL(7,2) NOT NULL
);

INSERT INTO fate VALUES
(null,"我妻善逸","/f2/1.jpg",245),
(null,"鬼灭之刃 灶门妳豆子 1/8标准","/f2/2.jpg",223),
(null,"【包邮】ARTFX J 鬼灭之刃","/f2/3.jpg",199),
(null,"【包邮】鬼灭之刃 ARTFX J","/f2/4.jpg",218),
(null,"【包邮】鬼灭之刃 ARTFX J","/f2/5.jpg",260),
(null,"POP UP PARADE Saber/阿","/f2/6.jpg",223),
(null,"【包邮】Q版角色！蚊香眼","/f2/7.jpg",245),
(null,"吉尔伽美什","/f2/8.jpg",266),
(null,"粘土Archer/吉尔伽美什 第","/f2/9.jpg",259),
(null,"【包邮】Desktop Army","/f2/10.jpg",264),
(null,"figma Archer/贞德","/f2/11.jpg",185),
(null,"粘土人 君主·埃尔梅罗II世","/f2/12.jpg",179),
(null,"罗马尼·阿基曼","/f2/13.jpg",156),
(null,"粘土人Avenger/贞德","/f2/14.jpg",155);

#创建景品层表
CREATE TABLE sega(
	lid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(50),#手办名称
	pic VARCHAR(128),
	price DECIMAL(7,2) NOT NULL
);

INSERT INTO sega VALUES
(null,"Pockekt Maquette","/f3/1.jpg",352),
(null,"【包邮】一番赏No.02索隆","/f3/2.jpg",430),
(null,"【包邮】一番赏 超级赛亚人悟","/f3/3.jpg",246),
(null,"【包邮】景品 Re:从零开始的","/f3/4.jpg",510),
(null,"【包邮】景品 樱未来 新绘插","/f3/5.jpg",438),
(null,"【包邮】一番赏 海贼王 匠之","/f3/6.jpg",185),
(null,"【包邮】一番赏 海贼王 匠之","/f3/7.jpg",305),
(null,"一番赏 海贼王 匠之","/f3/8.jpg",199),
(null,"【包邮】景品 初音未来 原创","/f3/9.jpg",234),
(null,"【包邮】一番赏 萨波","/f3/10.jpg",268),
(null,"【包邮】一番赏 A赏","/f3/11.jpg",219),
(null,"【包邮】景品 初音未来 冬季","/f3/12.jpg",133),
(null,"【包邮】景品 Re:从零开始","/f3/13.jpg",149),
(null,"【包邮】景品 初音未来 冬季","/f3/14.jpg",216),
(null,"【包邮】小柯同学","/f3/15.jpg",5000);

#创建商品列表
CREATE TABLE products(
	lid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(50),#手办名称
	subtitle VARCHAR(50),
	pic VARCHAR(128),
	price DECIMAL(7,2) NOT NULL,
	brand VARCHAR(50),#品牌
	shelf_time VARCHAR(50),#上架时间
	sold_time VARCHAR(50),#发售时间
	role_name VARCHAR(50),#角色名
	works_name VARCHAR(50),#作品名
	make VARCHAR(50),#原型制作
	make_group VARCHAR(50),#制作协力
	color VARCHAR(50),#彩色涂装
	descr VARCHAR(150),#商品说明
	produ VARCHAR(50),#生产商
	dealer VARCHAR(60),#销售商
	copyright VARCHAR(120)#版权
);

INSERT INTO products VALUES
(null,"【包邮】景品 初音未来 原创冬服ver.~Renewal~","无","/product/1.jpg",105,"TAITO","2019年10月11日","2020年1月","无","无","无","无","无","无","TAITO","SOLOYO","无"),
(null,"【aniToys 5周年福袋】","无","/product/2.jpg",345,"5周年","2019年12月24日","2020年12月","无","无","无","无","无","无","GOOD SMILE","GOOD SMILE","GOOD SMILE"),
(null,"【秒杀】蕾西亚 2011Ver.（再贩）","无","/product/3.jpg",500,"其它品牌","2020年1月7日","无","无","无","无","无","无","无","GOOD SMILE","GOOD SMILE","GOOD SMILE"),
(null,"【秒杀】我的英雄学院组合","无","/product/4.jpg",600,"寿屋","2019年12月7日","无","无","无","无","无","无","无","寿屋","SOLOYO","GOOD SMILE"),
(null,"【秒杀】一期一振","无","/product/5.jpg",500,"其它品牌","2020年1月7日","2020年1月7日","无","无","无","无","无","无","GOOD SMILE","GOOD SMILE","GOOD SMILE"),
(null,"【秒杀】Caster [Fate/EXTRA]","无","/product/6.jpg",500,"其它品牌","2020年1月7日","2020年1月7日","无","无","无","无","无","无","GOOD SMILE","GOOD SMILE","GOOD SMILE"),
(null,"【包邮】超像可动 泉新一＆米奇","Medicos的人气系列【超像可动】带来的“寄生兽 泉新一&amp,米奇”（原作版）登场！！","/product/7.jpg",180,"Medicos","2015年8月","2015年8月","泉新一&米奇","寄生兽","PROGRESS","匠工房","无","材质／PVC・ ABS 规格／上色可动手办・附各种替换配件・附底座 尺寸／泉新一：全高约16cm　米奇(大)：约4cm 包装尺寸／W14.5cm×D8.5cm×H22.9cm","株式会社メディコス･エンタテインメント","株式会社メディコス･エンタテインメント","©岩明均／講談社"),
(null,"【包邮】超像可动 迪奥·布兰德","Medicos的人气系列【超像可动】带来的“小怪兽 迪奥·布兰德（原作版）登场！！","/product/8.jpg",408,"Medicos","2015年8月","2015年8月","迪奥·布兰德","小怪兽","PROGRESS","匠工房","无","材质／PVC・ ABS 规格／上色可动手办・附各种替换配件・附底座 尺寸／迪奥：全高约16cm　布兰德(大)：约4cm 包装尺寸／W14.5cm×D8.5cm×H22.9cm","株式会社メディコス･エンタテインメント","株式会社メディコス･エンタテインメント","©岩明均／講談社"),
(null,"【包邮】超像可动 J·P·波鲁那雷夫（再贩）","Medicos的人气系列【超像可动】带来的“兽兽 J·P·波鲁那雷夫（原作版）登场！！","/product/9.jpg",300,"Medicos","2015年8月","2015年8月","J·P·波鲁那雷夫","兽兽","PROGRESS","匠工房","无","材质／PVC・ ABS 规格／上色可动手办・附各种替换配件・附底座 尺寸／波鲁那雷夫：全高约16cm　波鲁那雷夫(大)：约4cm 包装尺寸／W14.5cm×D8.5cm×H22.9cm","株式会社メディコス･エンタテインメント","株式会社メディコス･エンタテインメント","©岩明均／講談社"),
(null,"【包邮】超像可动 绿之法皇（再贩）","Medicos的人气系列【超像可动】带来的“法皇 绿之法皇（原作版）登场！！","/product/10.jpg",300,"Medicos","2015年8月","2015年8月","绿之法皇","法皇","PROGRESS","匠工房","无","材质／PVC・ ABS 规格／上色可动手办・附各种替换配件・附底座 尺寸／绿之法皇：全高约16cm　绿之法皇(大)：约4cm 包装尺寸／W14.5cm×D8.5cm×H22.9cm","株式会社メディコス･エンタテインメント","株式会社メディコス･エンタテインメント","©岩明均／講談社"),
(null,"【包邮】超像挂件 石假面挂件","「JOJO的奇妙冒险」中象征着整个故事来龙去脉原点的关键物品「石假面」以逼真挂件登场。","/product/11.jpg",80,"Medicos","无","2013年2月","石假面","「JOJO的奇妙冒险」","PROGRESS","匠工房","无","材质／PVC・ABS 规格／挂件 尺寸／约3.5cm","株式会社メディコス･エンタテインメント","株式会社メディコス･エンタテインメント","©荒木飛呂彦/集英社"),
(null,"Statue Legend 银色战车","围绕着「JOJO的奇妙冒险」作品系列制作的非可动手办系列「Statue legend」 来自JOJO第三部中的「银色战车」正式上线！","/product/12.jpg",320,"Di molto bene","2013年10月","2013年10月","银色战车","「JOJO的奇妙冒险」第3部","PROGRESS","匠工房","无","材质／PVC・ABS 规格／涂装完成手办 尺寸／全高约18cm 包装尺寸／W13cm×D10cm×H25cm"," 株式会社ディ・モールト ベネ","株式会社メディコス･エンタテインメント","©荒木飛呂彦＆LUCKY LAND COMMUNICATIONS/集英社"),
(null,"希露卡·梅连提丝","效忠于提欧的天才魔法师","/product/13.jpg",926,"Good Smile Company","2018年10月18日","2020年1月","希露卡·梅连提丝","皇帝圣印战记","コケ","无","无","Good Smile Company","ABS&PVC制 涂装完成品・1/7标准比例・附带专用底座・全高：约200mm","Good Smile Company","©2017 水野良・深遊／株式会社ＫＡＤＯＫＡＷＡ刊／エーラム魔法師協会"),
(null,"山姥切国广（附特典）","漂亮什么的……不准说！","/product/14.jpg",884,"Orange Rouge","2019年2月21日","2020年3月","山姥切国广","刀剑乱舞-ONLINE-","菜々子（マックスファクトリー）","无","无","ABS&PVC 制涂装完成品・1/8标准比例・附带专属底座・全高：220mm","Orange Rouge","Good Smile Company","©2015-2020 DMM GAMES/Nitroplus"),
(null,"白石䌷 迈向梦想的一步 Ver.","我……。我还想歌唱!","/product/15.jpg",884,"Good Smile Company","2018年10月23日","2019年12月","白石䌷","偶像大师 百万Live！剧场时光","ゆうこ～ん(knead)、にくりぼん(knead)","无","无","ABS&PVC制 涂装完成品・1/8标准比例・附带专用底座・全高：约200mm","Good Smile Company","Good Smile Company","© BANDAI NAMCO Entertainment Inc."),
(null,"冰堂美智留 泳衣Ver.","深崎暮人氏所描绘的泳装系列第4弹是期待已久的冰堂美智留","/product/16.jpg",687,"Good Smile Company","2018年11月22日","2020年1月","冰堂美智留","路人女主的养成方法","トモゴマフ","无","无","ABS&PVC 制 涂装完成品・1/７标准比例・附带专用底座・全高：约255mm","Good Smile Company","Good Smile Company","©2017丸戸史明・深崎暮人・KADOKAWAファンタジア文庫刊/冴えない♭な製作委員会"),
(null,"大包平（附特典）","我的名字是大包平，和童子切安纲并驾齐驱，是名刀中的名刀。","/product/17.jpg",884,"Orange Rouge","2019年2月28日","2020年4月","大包平","刀剑乱舞-ONLINE-","おあげ","无","无","ABS&PVC 制涂装完成品・1/8标准比例・附带专属底座・全高：约●235mm","Orange Rouge","Good Smile Company","©2015-2020 DMM GAMES/Nitroplus"),
(null,"figma 真·犯人","事件还没有结束・・・。「figma 真・犯人」隐藏于黑暗之中再度登场!","/product/18.jpg",315,"FREEing","2019年4月25日","2020年2月","犯人","名侦探柯南","无","Max Factory","无","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约140mm","FREEing","Good Smile Company","©青山剛昌／小学館・読売テレビ・TMS 1996"),
(null,"【包邮】《王者荣耀》凤凰于飞 王昭君","无","/product/19.jpg",899,"Myethos","2019年12月29日","2020年9月","王昭君","王者荣耀","无","无","无","比例：1/7,全高约310mm","Myethos","SOLOYO","无"),
(null,"POP UP PARADE Joker","POP UP PARADE『女神异闻录５』系列始动","/product/20.jpg",244,"Good Smile Company","2019年11月28日","2020年4月","Joker","女神异闻录5 动画版","デザインココ","３８６　※全角","谷本裕人","ABS&PVC制 涂装完成品・非标准比例・附带专用底座・全高：约170mm","Good Smile Company","Good Smile Company","©ATLUS ©SEGA/PERSONA5 the Animation Project"),
(null,"加藤惠～毕业Ver.～","毕业典礼造型的「加藤惠」立体化！","/product/21.jpg",1400,"ANIPLEX","2019年10月22日","2020年10月","加藤惠","路人女主的养成方法Fine","ひろし(桜前線)","无","まいもっち(鶴の館)","ABS&PVC 涂装完成品・1/7标准比例·附带专用底座·全高：约250㎜（含底座）","ANIPLEX","GOOD SMILE COMPANY","©2019 丸戸史明・深崎暮人・KADOKAWA ファンタジア文庫刊／映画も冴えない製作委員会"),
(null,"路人女主的养成方法♭ 霞之丘诗羽 ~内衣ver.~1/7标准比例手办","内衣穿扮的「霞之丘诗羽」终于登场――！","/product/22.jpg",1290,"ANIPLEX","2019年9月24日","2020年10月","霞之丘诗羽","路人女主的养成方法","橋本涼","无","渡邊 恭大","仕様；ABS&PVC制 涂装完成品・附带专用毛绒底座 全高：约130㎜（含底座）","ANIPLEX","GOOD SMILE COMPANY","©2017 丸戸史明・深崎暮人・KADOKAWA ファンタジア文庫刊／冴えない♭な製作委員会"),
(null,"命运之夜-天之杯：迷失之蝶","被暗影吞噬的无情暴君，亲眼目睹其黑化后的身姿吧！","/product/23.jpg",1600,"ANIPLEX","2020年1月1日","2020年12月","无","劇場版 Fate/stay night [Heaven's Feel]","无","无","无","仕様：ABS&PVC 塗装済み完成品・専用台座付属、 差し替え用フェイスパーツ＆前髪パーツ各1種付属 全高：約250㎜（台座含む） 仕様；ABS&PVC 涂装完成品・附专用台座 （可替换脸部配件＆刘海配件各一种） 全高：約250㎜（含台座）","アニプレックス","アニプレックス","©TYPE-MOON・ufotable・FSNPC　©TYPE-MOON"),
(null,"【包邮】Precious G.E.M.系列 CodeGeass 复活的鲁路修 L.L.＆C.C.","无","/product/24.jpg",2100,"MegaHouse","无","2020年7月","无","无","无","无","无","无","MegaHouse","SOLOYO","无"),
(null,"【包邮】Portrait.Of.Pirates 海贼王“Warriors Alliance” 路飞太郎","无","/product/25.jpg",755,"MegaHouse","无","2020年7月","无","无","无","无","无","无","MegaHouse","SOLOYO","无"),
(null,"【包邮】G.E.M.系列 鬼灭之刃 掌上祢豆子（再贩）","无","/product/26.jpg",349,"MegaHouse","无","2020年7月","无","无","无","无","无","无","MegaHouse","SOLOYO","无"),
(null,"【包邮】G.E.M.EX系列 精灵宝可梦 鬼系大集合！（附特典）","无","/product/27.jpg",755,"MegaHouse","2019年11月8日","2020年7月","鬼系宝可梦","精灵宝可梦","无","无","无","无","MegaHouse","SOLOYO","无"),
(null,"【包邮】G.E.M.系列 精灵宝可梦 玛奥＆甜舞妮（附特典）","无","/product/28.jpg",505,"MegaHouse","2019年11月8日","2020年6月","玛奥＆甜舞妮","精灵宝可梦","无","无","无","无","MegaHouse","SOLOYO","无"),
(null,"【包邮】GGG 机动武斗传G高达 深村玲（附特典）","无","/product/29.jpg",755,"MegaHouse","2019年11月8日","2020年4月","深村玲","机动武斗传G高达","无","无","无","无","MegaHouse","SOLOYO","无"),
(null,"【包邮】Portrait.Of.Pirates 海贼王“限定版”船医 马尔高","无","/product/30.jpg",755,"MegaHouse","2019年11月8日","2020年5月","马尔高","海贼王","无","无","无","无","MegaHouse","SOLOYO","无"),
(null,"【包邮】蚊香眼 搭档系列 Code Geass 反叛的鲁路修 鲁路修＆朱雀","无","/product/31.jpg",278,"MegaHouse","2019年11月8日","2020年4月","无","Code Geass 反叛的鲁路修","无","无","无","无","MegaHouse","SOLOYO","无"),
(null,"【包邮】Lucrea 游戏王怪兽之决斗GX 天上院明日香（附特典）","无","/product/32.jpg",905,"MegaHouse","2019年11月8日","2020年3月","天上院明日香","游戏王怪兽之决斗GX","无","无","无","无","MegaHouse","SOLOYO","无"),
(null,"初音未来 超歌舞伎 花街词合镜Ver.","所爱的正是对面之人。","/product/33.jpg",1314,"Good Smile Company","2018年8月31日","2019年10月","初音未来","Character Vocal Series 01 初音未来","ABS&PVC制 涂装完成品・1/7标准比例・附带专用底座・全高：约300mm","まんぞくマモル (knead)","无","无","Good Smile Company","Good Smile Company","©超歌舞伎 © LS & LG Inc. © Crypton Future Media，INC. www.piapro.net【ロゴ】"),
(null,"【包邮】新世纪福音战士新剧场版 绫波丽~黑色战斗服ver.~","无","/product/34.jpg",688,"寿屋","无","2020年7月","无","无","无","无","无","无","寿屋","SOLOYO","无"),
(null,"【包邮】新世纪福音战士 惣流·明日香·兰格雷～哥特萝莉ver.～:RE","无","/product/35.jpg",688,"寿屋","无","2020年7月","无","无","无","无","无","无","寿屋","SOLOYO","无"),
(null,"【包邮】星翼悖论 XZM-011 骑动机 索利提亚","无","/product/36.jpg",427,"寿屋","无","2020年7月","无","无","无","无","无","无","寿屋","SOLOYO","无"),
(null,"【包邮】机甲少女系列 格里芬 紫罗兰色版（附特典）","无","/product/37.jpg",307,"寿屋","无","2020年7月","无","无","无","无","无","无","寿屋","SOLOYO","无"),
(null,"【包邮】梦幻之星Online2es 珍妮（附特典）","无","/product/38.jpg",806,"寿屋","无","2020年7月","无","无","无","无","无","无","寿屋","SOLOYO","无"),
(null,"【包邮】ARMS NOTE 游泳部的后辈 ","无","/product/39.jpg",1084,"Hobby JAPAN","无","2020年10月","无","无","无","无","无","彩色PVC涂装完成品，1/7标准比列，全高约29cm（至头顶约24cm)","AMAKUNI","SOLOYO","无"),
(null,"【包邮】裤袜视界 奥墨唯子老师（限定版）","无","/product/40.jpg",900,"Union-Creative","无","2020年5月","无","无","无","无","无","无","Union-Creative","SOLOYO","无"),
(null,"【包邮】舰队Collection 铃谷【Xmas】mode（限定版）","无","/product/41.jpg",1260,"Hobby JAPAN","无","2020年10月","铃谷","舰队Collection","无","无","无","彩色PVC涂装完成品，1/7标准比列， 全高约24.5cm","AMAKUNI","SOLOYO","无"),
(null,"粘土人 Foreigner/葛饰北斋","葛饰北斋。是个不起眼的画工。","/product/42.jpg",364,"Good Smile Company","2019年12月26日","2020年6月","无","Fate/Grand Order","トイテック D.T.C","Nendoron","无","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约100mm","Good Smile Company","Good Smile Company","©TYPE-MOON / FGO PROJECT"),
(null,"粘土人 灶门祢豆子（二次受注）","作为鬼和哥哥一起与鬼战斗的少女","/product/43.jpg",357,"Good Smile Company","2019年12月26日","2020年8月","灶门祢豆子","鬼灭之刃","トイテック D.T.C","Nendoron","无","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约100mm","Good Smile Company","Good Smile Company","©吾峠呼世晴／集英社・アニプレックス・ufotable"),
(null,"粘土人 灶门炭治郎（二次受注）","手持漆黑日轮刀的鬼杀队员","/product/44.jpg",367,"Good Smile Company","2019年12月26日","2020年7月","灶门炭治郎","鬼灭之刃","トイテック D.T.C","Nendoron","无","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约100mm","Good Smile Company","Good Smile Company","©吾峠呼世晴／集英社・アニプレックス・ufotable"),
(null,"Fate/stay night 15周年纪念手办 -轨迹-","监修：武内崇、原型・概念制作：石长樱子、彩色：星名詠美 为了庆祝「Fate/stay night」15周年所推出的纪念手办","/product/45.jpg",4100,"ANIPLEX","2019年12月26日","2020年12月","轨迹","Fate/stay night","石長櫻子（植物少女園）","株式会社monolith、株式会社リボルブ","星名詠美","PVC制涂装完成品·非标准比例·附带专用底座·全高约590mm","ANIPLEX","GOOD SMILE COMPANY","©TYPE-MOON"),
(null,"figma 贞德 私服 Ver.","我是圣杯战争的裁定者，贞德。","/product/46.jpg",579,"Max Factory","2019年12月24日","2020年7月","贞德","Fate/Apocrypha","ドラゴンクラフト","浅井真紀","无","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约135mm","Maxfactory","Good Smile Company","©東出祐一郎・TYPE-MOON / FAPC"),
(null,"Saber/弗兰肯斯坦","「又热又累，夏天受够了啦～」","/product/47.jpg",372,"FREEing","2019年12月24日","2020年9月","Saber/弗兰肯斯坦","Fate/Grand Order","くうぇーる","无","ピンポイント","PVCPVC制 涂装完成品・1/12标准比例・附带专用底座・全高：约160mm","FREEing","Good Smile Company","©TYPE-MOON / FGO PROJECT"),
(null,"figma Galaxian Galaxip GFX-D001a / Galaga Fighter GFX-D002f","名作STG『Galaxian』『Galaga』的玩家机立体化！","/product/48.jpg",872,"FREEing","2019年12月26日","2020年9月","无","Galaxian / Galaga","FREEing","プラリーフ、マックスファクトリー","无","ABS制 涂装完成可动手办・非标准比例・附带专用底座・本体全长：Galaxip：约130mm、Galaga Fighter：约110mm","FREEing","Good Smile Company","GALAXIAN™＆©BANDAI NAMCO Entertainment Inc. GALAGA™＆©BANDAI NAMCO Entertainment Inc."),
(null,"【包邮】假面骑士零一 DX 扎亚变身腰带","无","/product/49.jpg",385,"万代","2019年9月17日","2019年12月","假面骑士扎亚","假面骑士零一","无","无","无","无","万代","SOLOYO","(C)2019 石森プロ・テレビ朝日・ADK EM・東映"),
(null,"【包邮】少女前线 1/8 Zas M21 白棋王后 Ver.（内附特典）","无","/product/50.jpg",868,"Hobbymax","无","2020年6月","无","无","无","无","无","无","Union-Creative","SOLOYO","无"),
(null,"【包邮】喜欢本大爷的竟然就你一个 三色院菫子","无","/product/51.jpg",685,"Union-Creative","无","2020年7月","无","无","无","无","无","无","Union-Creative","SOLOYO","无"),
(null,"ACT MODE Mio & Type15 Ver2","驭使原创灵兽进行强化的少女","/product/52.jpg",621,"Good Smile Company","2019年10月31日","2020年7月","无","NAVY FIELD 152","Mio：松村設計、Type15 Ver2：トイハウス","无","无"," Mio：ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约145mm／Type15Ver2：PS制 塑料拼装模型・非标准比例・全长：约20cm（鲨鱼型时）・全高：-","Good Smile Company","Good Smile Company","©POCO"),
(null,"粘土人 阿尔托莉雅·潘德拉贡 RACING Ver.","无","/product/53.jpg",333,"Good Smile Racing","2019年7月19日","2020年4月","阿尔托莉雅·潘德拉贡","无","カタハライタシ","ねんどろん","无","ABS&PVC 塗装済み可動フィギュア・ノンスケール・専用台座付属・全高：約100mm","GOODSMILE RACING ＆ TYPE-MOON RACING","GOOD SMILE COMPANY","©TYPE-MOON"),
(null,"【包邮】ARTFX J系列 我的英雄学院 切岛锐儿郎（附特典）","无","/product/54.jpg",510,"寿屋","无","2020年8月","无","无","无","无","无","无","寿屋","SOLOYO","无"),
(null,"【包邮】狐妖小红娘系列盒蛋-王权富贵（附特典）","无","/product/55.jpg",89,"ACTOYS","无","预计2020年6月","无","无","无","无","无","无","ACTOYS","SOLOYO","无"),
(null,"【包邮】初音未来 3rd season spring ver.","无","/product/56.jpg",105,"TAITO","无","2020年4月","无","无","无","无","无","无","TAITO","SOLOYO","无"),
(null,"粘土人 苏沐橙（附特典）","是到了靠自己的时候了！","/product/57.jpg",289,"GOOD SMILE ARTS上海","2019年12月26日","2020年6月","苏沐橙","全职高手","七兵衛","ねんどろん","无","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约100mm","Goodsmile Arts 上海","Good Smile Company","© 2017 上海阅文信息技术有限公司"),
(null,"【包邮】一番赏 鬼灭之刃 ~弐~ 灶门炭治郎","无","/product/58.jpg",240,"BANPRESTO","无","2020年4月","无","无","无","无","无","无","BANPRESTO","SOLOYO","无"),
(null,"【包邮】一番赏 鬼灭之刃 ~弐~ 富冈义勇","无","/product/59.jpg",240,"BANPRESTO","无","2020年4月","无","无","无","无","无","无","BANPRESTO","SOLOYO","无"),
(null,"【包邮】ARTFX J系列 鬼泣5 维吉尔","无","/product/60.jpg",994,"寿屋","无","2020年8月","无","无","无","无","无","无","寿屋","SOLOYO","无"),
(null,"【包邮】ARTFX DC宇宙 神奇女侠","无","/product/61.jpg",676,"寿屋","无","2020年9月","无","无","无","无","无","无","寿屋","SOLOYO","无"),
(null,"【包邮】GATE奇幻自卫队 萝莉麦丘利","无","/product/62.jpg",676,"寿屋","无","2020年9月","无","无","无","无","无","无","寿屋","SOLOYO","无"),
(null,"CFB 怪物猎人雕像 第16弹","集合了『怪物猎人世界：冰原』中登场怪物的手办最新弹。","/product/63.jpg",480,"CAPCOM","2019年12月3日","2020年5月","无","怪物猎人","无","无","无","涂装完成手办＋底座＋特典配件／材质：PVC、ABS 手办本体尺寸：全高约100～150mm／底座尺寸：约75.5×87mm(六角形)","CAPCOM","Good Smile Company","© CAPCOM CO., LTD. ALL RIGHTS RESERVED."),
(null,"时崎狂三 兔女郎Ver.","最危险的兔女郎来了！","/product/64.jpg",1745,"FREEing","2019年11月21日","2020年8月","时崎狂三","约会大作战 III","FREEing","无","无","PVC制 涂装完成品・1/4标准比例・全高：约290mm","FREEing","Good Smile Company","©2019 橘公司・つなこ／KADOKAWA／「デート・ア・ライブⅢ」製作委員会"),
(null,"粘土人 欧尔麦特","我来了！！","/product/65.jpg",345,"Good Smile Company","2019年11月21日","2020年5月","欧尔麦特","我的英雄学院","七兵衛","Nendoron","无","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：确认中","出品商：Good Smile Company","Good Smile Company","© 堀越耕平／集英社・僕のヒーローアカデミア製作委員会"),
(null,"1/64 Good Smile 初音未来 AMG 2019 Super GT ver.","集齐历代的赛车吧","/product/66.jpg",207,"Good Smile Racing","2019年11月21日","2020年4月","无","初音未来 GT Project","なし","MINIMAX","无","压铸制 涂装完成迷你车模・1/64标准比例手办・附带专用保护盒・全长：约70mm・全高：约20mm","Good Smile Racing","Good Smile Racing","© 杏仁豆腐 / Crypton Future Media, INC. www.piapro.net (piaproロゴ) directed by コヤマシゲト ”Mercedes-Benz”,(※エンブレム1), (※エンブレム2) and the design of the enclosed product are subject to intellectual property protection owned by Daimler AG. They are used by MINIMAX Import & Export Co.Ltd under license."),
(null,"1/64 GOODSMILE RACING & TYPE-MOON RACING 2019 SPA24H ver.","集齐历代的赛车吧","/product/67.jpg",207,"Good Smile Racing","2019年11月21日","2020年4月","无","GOODSMILE RACING & TYPE-MOON RACING","なし","MINIMAX","无","压铸制 涂装完成迷你车模・1/64标准比例手办・附带专用保护盒・全长：约70mm・全高：约20mm","Good Smile Racing","Good Smile Racing","©TYPE-MOON ”Mercedes-Benz”,(※エンブレム1), (※エンブレム2) and the design of the enclosed product are subject to intellectual property protection owned by Daimler AG. They are used by MINIMAX Import & Export Co.Ltd under license."),
(null,"Parfom R! 式波·明日香·兰格雷 制服Ver.","「第一少女」身着第三新东京市第一中学校服登场","/product/68.jpg",412,"Phat!","2019年10月23日","2020年8月","绫波丽","新世纪福音战士新剧场版","遠那かんし（りゅんりゅん亭）/齋藤満（Phat!）","无","七兵衛/Phat!","ABS&PVC制 涂装完成可动手办・非标准比例・附带专用底座・全高：约140mm","Phat!","Good Smile Company","©カラー"),
(null,"超像可动「岸辺露伴＆天堂之门」","无","/product/69.jpg",539,"Medicos","2019年12月19日","2020年7月","「岸辺露伴＆天堂之门」","ジョジョの奇妙な冒険","PROGRESS","无","无","PVC&ABS&尼龙/涂装完成可动手办/非标准比例，附带专用底座，配件/全高：露伴:约150ｍｍ天国之门:约65mm","MEDICOS","GOOD SMILE COMPANY","©LUCKY ＬＡＮＤ ＣＯＭＭＵＮＩＣＡＴＩＯＮＳ／集英社"),
(null,"【包邮】女神装置系列 机战少女Alice 相河爱花（附特典）","无","/product/70.jpg",363,"寿屋","无","2020年7月","无","无","无","无","无","拼装模型","寿屋","SOLOYO","无"),
(null,"【包邮】ARTFX J系列 精灵宝可梦 小光与波加曼圆企鹅","无","/product/71.jpg",544,"寿屋","无","2020年7月","无","无","无","无","无","无","寿屋","SOLOYO","无"),
(null,"【包邮】MAFEX 漫威 屠杀 漫画版","无","/product/72.jpg",479,"MEDICOM TOY","无","2020年11月","无","无","无","无","无","无","MEDICOM TOY","SOLOYO","无");

/**商品详情图片**/
CREATE TABLE product_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  lid INT,              #商品编号
  pic VARCHAR(128)             #大图片路径
);

INSERT INTO product_pic VALUES
(NULL,1,"/detailevery/1-1.jpg"),
(NULL,1,"/detailevery/1-2.jpg"),
(NULL,1,"/detailevery/1-3.jpg"),
(NULL,1,"/detailevery/1-4.jpg"),
(NULL,2,"/detailevery/2-1.jpg"),
(NULL,3,"/detailevery/3-1.jpg"),
(NULL,4,"/detailevery/4-1.jpg"),
(NULL,5,"/detailevery/5-1.jpg"),
(NULL,5,"/detailevery/5-2.jpg"),
(NULL,5,"/detailevery/5-3.jpg"),
(NULL,5,"/detailevery/5-4.jpg"),
(NULL,5,"/detailevery/5-5.jpg"),
(NULL,6,"/detailevery/6-1.jpg"),
(NULL,6,"/detailevery/6-2.jpg"),
(NULL,6,"/detailevery/6-3.jpg"),
(NULL,6,"/detailevery/6-4.jpg"),
(NULL,6,"/detailevery/6-5.jpg"),
(NULL,7,"/detailevery/7-1.jpg"),
(NULL,7,"/detailevery/7-2.jpg"),
(NULL,7,"/detailevery/7-3.jpg"),
(NULL,7,"/detailevery/7-4.jpg"),
(NULL,7,"/detailevery/7-5.jpg"),
(NULL,7,"/detailevery/7-6.jpg"),
(NULL,7,"/detailevery/7-7.jpg"),
(NULL,8,"/detailevery/8-1.jpg"),
(NULL,9,"/detailevery/9-1.jpg"),
(NULL,10,"/detailevery/10-1.jpg"),
(NULL,11,"/detailevery/11-1.jpg"),
(NULL,11,"/detailevery/11-2.jpg"),
(NULL,11,"/detailevery/11-3.jpg"),
(NULL,12,"/detailevery/12-1.jpg"),
(NULL,12,"/detailevery/12-2.jpg"),
(NULL,12,"/detailevery/12-3.jpg"),
(NULL,12,"/detailevery/12-4.jpg"),
(NULL,12,"/detailevery/12-5.jpg"),
(NULL,12,"/detailevery/12-6.jpg"),
(NULL,13,"/detailevery/13-1.jpg"),
(NULL,13,"/detailevery/13-2.jpg"),
(NULL,13,"/detailevery/13-3.jpg"),
(NULL,13,"/detailevery/13-4.jpg"),
(NULL,13,"/detailevery/13-5.jpg"),
(NULL,13,"/detailevery/13-6.jpg"),
(NULL,14,"/detailevery/14-1.jpg"),
(NULL,14,"/detailevery/14-2.jpg"),
(NULL,14,"/detailevery/14-3.jpg"),
(NULL,14,"/detailevery/14-4.jpg"),
(NULL,14,"/detailevery/14-5.jpg"),
(NULL,14,"/detailevery/14-6.jpg"),
(NULL,14,"/detailevery/14-7.jpg"),
(NULL,15,"/detailevery/15-1.jpg"),
(NULL,15,"/detailevery/15-2.jpg"),
(NULL,15,"/detailevery/15-3.jpg"),
(NULL,15,"/detailevery/15-4.jpg"),
(NULL,15,"/detailevery/15-5.jpg"),
(NULL,15,"/detailevery/15-6.jpg"),
(NULL,16,"/detailevery/16-1.jpg"),
(NULL,16,"/detailevery/16-2.jpg"),
(NULL,16,"/detailevery/16-3.jpg"),
(NULL,16,"/detailevery/16-4.jpg"),
(NULL,16,"/detailevery/16-5.jpg"),
(NULL,17,"/detailevery/17-1.jpg"),
(NULL,17,"/detailevery/17-2.jpg"),
(NULL,17,"/detailevery/17-3.jpg"),
(NULL,17,"/detailevery/17-4.jpg"),
(NULL,17,"/detailevery/17-5.jpg"),
(NULL,17,"/detailevery/17-6.jpg"),
(NULL,18,"/detailevery/18-1.jpg"),
(NULL,18,"/detailevery/18-2.jpg"),
(NULL,18,"/detailevery/18-3.jpg"),
(NULL,18,"/detailevery/18-4.jpg"),
(NULL,18,"/detailevery/18-5.jpg"),
(NULL,18,"/detailevery/18-6.jpg"),
(NULL,18,"/detailevery/18-7.jpg"),
(NULL,19,"/detailevery/19-1.jpg"),
(NULL,19,"/detailevery/19-2.jpg"),
(NULL,19,"/detailevery/19-3.jpg"),
(NULL,19,"/detailevery/19-4.jpg"),
(NULL,19,"/detailevery/19-5.jpg"),
(NULL,19,"/detailevery/19-6.jpg"),
(NULL,19,"/detailevery/19-7.jpg"),
(NULL,20,"/detailevery/20-1.jpg"),
(NULL,20,"/detailevery/20-2.jpg"),
(NULL,20,"/detailevery/20-3.jpg"),
(NULL,20,"/detailevery/20-4.jpg"),
(NULL,20,"/detailevery/20-5.jpg"),
(NULL,20,"/detailevery/20-6.jpg"),
(NULL,20,"/detailevery/20-7.jpg"),
(NULL,21,"/detailevery/21-1.jpg"),
(NULL,21,"/detailevery/21-2.jpg"),
(NULL,21,"/detailevery/21-3.jpg"),
(NULL,21,"/detailevery/21-4.jpg"),
(NULL,21,"/detailevery/21-5.jpg"),
(NULL,21,"/detailevery/21-6.jpg"),
(NULL,21,"/detailevery/21-7.jpg"),
(NULL,22,"/detailevery/22-1.jpg"),
(NULL,22,"/detailevery/22-2.jpg"),
(NULL,22,"/detailevery/22-3.jpg"),
(NULL,22,"/detailevery/22-4.jpg"),
(NULL,22,"/detailevery/22-5.jpg"),
(NULL,22,"/detailevery/22-6.jpg"),
(NULL,22,"/detailevery/22-7.jpg"),
(NULL,23,"/detailevery/23-1.jpg"),
(NULL,23,"/detailevery/23-2.jpg"),
(NULL,23,"/detailevery/23-3.jpg"),
(NULL,23,"/detailevery/23-4.jpg"),
(NULL,23,"/detailevery/23-5.jpg"),
(NULL,23,"/detailevery/23-6.jpg"),
(NULL,23,"/detailevery/23-7.jpg"),
(NULL,24,"/detailevery/24-1.jpg"),
(NULL,24,"/detailevery/24-2.jpg"),
(NULL,24,"/detailevery/24-3.jpg"),
(NULL,24,"/detailevery/24-4.jpg"),
(NULL,24,"/detailevery/24-5.jpg"),
(NULL,24,"/detailevery/24-6.jpg"),
(NULL,24,"/detailevery/24-7.jpg"),
(NULL,25,"/detailevery/25-1.jpg"),
(NULL,25,"/detailevery/25-2.jpg"),
(NULL,25,"/detailevery/25-3.jpg"),
(NULL,25,"/detailevery/25-4.jpg"),
(NULL,25,"/detailevery/25-5.jpg"),
(NULL,25,"/detailevery/25-6.jpg"),
(NULL,25,"/detailevery/25-7.jpg"),
(NULL,26,"/detailevery/26-1.jpg"),
(NULL,26,"/detailevery/26-2.jpg"),
(NULL,26,"/detailevery/26-3.jpg"),
(NULL,26,"/detailevery/26-4.jpg"),
(NULL,26,"/detailevery/26-5.jpg"),
(NULL,27,"/detailevery/27-1.jpg"),
(NULL,27,"/detailevery/27-2.jpg"),
(NULL,27,"/detailevery/27-3.jpg"),
(NULL,27,"/detailevery/27-4.jpg"),
(NULL,27,"/detailevery/27-5.jpg"),
(NULL,27,"/detailevery/27-6.jpg"),
(NULL,27,"/detailevery/27-7.jpg"),
(NULL,28,"/detailevery/28-1.jpg"),
(NULL,28,"/detailevery/28-2.jpg"),
(NULL,28,"/detailevery/28-3.jpg"),
(NULL,28,"/detailevery/28-4.jpg"),
(NULL,28,"/detailevery/28-5.jpg"),
(NULL,28,"/detailevery/28-6.jpg"),
(NULL,28,"/detailevery/28-7.jpg"),
(NULL,29,"/detailevery/29-1.jpg"),
(NULL,29,"/detailevery/29-2.jpg"),
(NULL,29,"/detailevery/29-3.jpg"),
(NULL,29,"/detailevery/29-4.jpg"),
(NULL,29,"/detailevery/29-5.jpg"),
(NULL,29,"/detailevery/29-6.jpg"),
(NULL,29,"/detailevery/29-7.jpg"),
(NULL,30,"/detailevery/30-1.jpg"),
(NULL,30,"/detailevery/30-2.jpg"),
(NULL,30,"/detailevery/30-3.jpg"),
(NULL,30,"/detailevery/30-4.jpg"),
(NULL,30,"/detailevery/30-5.jpg"),
(NULL,30,"/detailevery/30-6.jpg"),
(NULL,30,"/detailevery/30-7.jpg"),
(NULL,31,"/detailevery/31-1.jpg"),
(NULL,31,"/detailevery/31-2.jpg"),
(NULL,31,"/detailevery/31-3.jpg"),
(NULL,31,"/detailevery/31-4.jpg"),
(NULL,32,"/detailevery/32-1.jpg"),
(NULL,32,"/detailevery/32-2.jpg"),
(NULL,32,"/detailevery/32-3.jpg"),
(NULL,32,"/detailevery/32-4.jpg"),
(NULL,32,"/detailevery/32-5.jpg"),
(NULL,32,"/detailevery/32-6.jpg"),
(NULL,32,"/detailevery/32-7.jpg"),
(NULL,33,"/detailevery/33-1.jpg"),
(NULL,33,"/detailevery/33-2.jpg"),
(NULL,33,"/detailevery/33-3.jpg"),
(NULL,33,"/detailevery/33-4.jpg"),
(NULL,33,"/detailevery/33-5.jpg"),
(NULL,33,"/detailevery/33-6.jpg"),
(NULL,33,"/detailevery/33-7.jpg"),
(NULL,34,"/detailevery/34-1.jpg"),
(NULL,34,"/detailevery/34-2.jpg"),
(NULL,34,"/detailevery/34-3.jpg"),
(NULL,34,"/detailevery/34-4.jpg"),
(NULL,34,"/detailevery/34-5.jpg"),
(NULL,34,"/detailevery/34-6.jpg"),
(NULL,35,"/detailevery/35-1.jpg"),
(NULL,35,"/detailevery/35-2.jpg"),
(NULL,35,"/detailevery/35-3.jpg"),
(NULL,35,"/detailevery/35-4.jpg"),
(NULL,35,"/detailevery/35-5.jpg"),
(NULL,35,"/detailevery/35-6.jpg"),
(NULL,35,"/detailevery/35-7.jpg"),
(NULL,36,"/detailevery/36-1.jpg"),
(NULL,36,"/detailevery/36-2.jpg"),
(NULL,36,"/detailevery/36-3.jpg"),
(NULL,36,"/detailevery/36-4.jpg"),
(NULL,36,"/detailevery/36-5.jpg"),
(NULL,36,"/detailevery/36-6.jpg"),
(NULL,36,"/detailevery/36-7.jpg"),
(NULL,37,"/detailevery/37-1.jpg"),
(NULL,37,"/detailevery/37-2.jpg"),
(NULL,37,"/detailevery/37-3.jpg"),
(NULL,37,"/detailevery/37-4.jpg"),
(NULL,37,"/detailevery/37-5.jpg"),
(NULL,37,"/detailevery/37-6.jpg"),
(NULL,37,"/detailevery/37-7.jpg"),
(NULL,38,"/detailevery/38-1.jpg"),
(NULL,38,"/detailevery/38-2.jpg"),
(NULL,38,"/detailevery/38-3.jpg"),
(NULL,38,"/detailevery/38-4.jpg"),
(NULL,38,"/detailevery/38-5.jpg"),
(NULL,38,"/detailevery/38-6.jpg"),
(NULL,38,"/detailevery/38-7.jpg"),
(NULL,39,"/detailevery/39-1.jpg"),
(NULL,39,"/detailevery/39-2.jpg"),
(NULL,39,"/detailevery/39-3.jpg"),
(NULL,39,"/detailevery/39-4.jpg"),
(NULL,39,"/detailevery/39-5.jpg"),
(NULL,39,"/detailevery/39-6.jpg"),
(NULL,39,"/detailevery/39-7.jpg"),
(NULL,40,"/detailevery/40-1.jpg"),
(NULL,40,"/detailevery/40-2.jpg"),
(NULL,40,"/detailevery/40-3.jpg"),
(NULL,40,"/detailevery/40-4.jpg"),
(NULL,40,"/detailevery/40-5.jpg"),
(NULL,40,"/detailevery/40-6.jpg"),
(NULL,40,"/detailevery/40-7.jpg"),
(NULL,41,"/detailevery/41-1.jpg"),
(NULL,41,"/detailevery/41-2.jpg"),
(NULL,41,"/detailevery/41-3.jpg"),
(NULL,41,"/detailevery/41-4.jpg"),
(NULL,41,"/detailevery/41-5.jpg"),
(NULL,41,"/detailevery/41-6.jpg"),
(NULL,41,"/detailevery/41-7.jpg"),
(NULL,42,"/detailevery/42-1.jpg"),
(NULL,42,"/detailevery/42-2.jpg"),
(NULL,42,"/detailevery/42-3.jpg"),
(NULL,42,"/detailevery/42-4.jpg"),
(NULL,42,"/detailevery/42-5.jpg"),
(NULL,42,"/detailevery/42-6.jpg"),
(NULL,42,"/detailevery/42-7.jpg"),
(NULL,43,"/detailevery/43-1.jpg"),
(NULL,43,"/detailevery/43-2.jpg"),
(NULL,43,"/detailevery/43-3.jpg"),
(NULL,43,"/detailevery/43-4.jpg"),
(NULL,43,"/detailevery/43-5.jpg"),
(NULL,43,"/detailevery/43-6.jpg"),
(NULL,43,"/detailevery/43-7.jpg"),
(NULL,44,"/detailevery/44-1.jpg"),
(NULL,44,"/detailevery/44-2.jpg"),
(NULL,44,"/detailevery/44-3.jpg"),
(NULL,44,"/detailevery/44-4.jpg"),
(NULL,44,"/detailevery/44-5.jpg"),
(NULL,44,"/detailevery/44-6.jpg"),
(NULL,45,"/detailevery/45-1.jpg"),
(NULL,45,"/detailevery/45-2.jpg"),
(NULL,45,"/detailevery/45-3.jpg"),
(NULL,45,"/detailevery/45-4.jpg"),
(NULL,45,"/detailevery/45-5.jpg"),
(NULL,45,"/detailevery/45-6.jpg"),
(NULL,45,"/detailevery/45-7.jpg"),
(NULL,46,"/detailevery/46-1.jpg"),
(NULL,46,"/detailevery/46-2.jpg"),
(NULL,46,"/detailevery/46-3.jpg"),
(NULL,46,"/detailevery/46-4.jpg"),
(NULL,46,"/detailevery/46-5.jpg"),
(NULL,46,"/detailevery/46-6.jpg"),
(NULL,46,"/detailevery/46-7.jpg"),
(NULL,47,"/detailevery/47-1.jpg"),
(NULL,47,"/detailevery/47-2.jpg"),
(NULL,47,"/detailevery/47-3.jpg"),
(NULL,47,"/detailevery/47-4.jpg"),
(NULL,47,"/detailevery/47-5.jpg"),
(NULL,47,"/detailevery/47-6.jpg"),
(NULL,47,"/detailevery/47-7.jpg"),
(NULL,48,"/detailevery/48-1.jpg"),
(NULL,48,"/detailevery/48-2.jpg"),
(NULL,48,"/detailevery/48-3.jpg"),
(NULL,48,"/detailevery/48-4.jpg"),
(NULL,48,"/detailevery/48-5.jpg"),
(NULL,48,"/detailevery/48-6.jpg"),
(NULL,48,"/detailevery/48-7.jpg"),
(NULL,49,"/detailevery/49-1.jpg"),
(NULL,49,"/detailevery/49-2.jpg"),
(NULL,49,"/detailevery/49-3.jpg"),
(NULL,49,"/detailevery/49-4.jpg"),
(NULL,49,"/detailevery/49-5.jpg"),
(NULL,49,"/detailevery/49-6.jpg"),
(NULL,49,"/detailevery/49-7.jpg"),
(NULL,50,"/detailevery/50-1.jpg"),
(NULL,50,"/detailevery/50-2.jpg"),
(NULL,50,"/detailevery/50-3.jpg"),
(NULL,50,"/detailevery/50-4.jpg"),
(NULL,50,"/detailevery/50-5.jpg"),
(NULL,50,"/detailevery/50-6.jpg"),
(NULL,50,"/detailevery/50-7.jpg"),
(NULL,51,"/detailevery/51-1.jpg"),
(NULL,51,"/detailevery/51-2.jpg"),
(NULL,51,"/detailevery/51-3.jpg"),
(NULL,51,"/detailevery/51-4.jpg"),
(NULL,51,"/detailevery/51-5.jpg"),
(NULL,51,"/detailevery/51-6.jpg"),
(NULL,51,"/detailevery/51-7.jpg"),
(NULL,52,"/detailevery/52-1.jpg"),
(NULL,52,"/detailevery/52-2.jpg"),
(NULL,52,"/detailevery/52-3.jpg"),
(NULL,52,"/detailevery/52-4.jpg"),
(NULL,52,"/detailevery/52-5.jpg"),
(NULL,52,"/detailevery/52-6.jpg"),
(NULL,52,"/detailevery/52-7.jpg"),
(NULL,53,"/detailevery/53-1.jpg"),
(NULL,53,"/detailevery/53-2.jpg"),
(NULL,53,"/detailevery/53-3.jpg"),
(NULL,53,"/detailevery/53-4.jpg"),
(NULL,53,"/detailevery/53-5.jpg"),
(NULL,53,"/detailevery/53-6.jpg"),
(NULL,54,"/detailevery/54-1.jpg"),
(NULL,54,"/detailevery/54-2.jpg"),
(NULL,54,"/detailevery/54-3.jpg"),
(NULL,54,"/detailevery/54-4.jpg"),
(NULL,54,"/detailevery/54-5.jpg"),
(NULL,54,"/detailevery/54-6.jpg"),
(NULL,54,"/detailevery/54-7.jpg"),
(NULL,55,"/detailevery/55-1.jpg"),
(NULL,55,"/detailevery/55-2.jpg"),
(NULL,55,"/detailevery/55-3.jpg"),
(NULL,55,"/detailevery/55-4.jpg"),
(NULL,55,"/detailevery/55-5.jpg"),
(NULL,55,"/detailevery/55-6.jpg"),
(NULL,55,"/detailevery/55-7.jpg"),
(NULL,56,"/detailevery/56-1.jpg"),
(NULL,56,"/detailevery/56-2.jpg"),
(NULL,56,"/detailevery/56-3.jpg"),
(NULL,56,"/detailevery/56-4.jpg"),
(NULL,56,"/detailevery/56-5.jpg"),
(NULL,56,"/detailevery/56-6.jpg"),
(NULL,56,"/detailevery/56-7.jpg"),
(NULL,57,"/detailevery/57-1.jpg"),
(NULL,57,"/detailevery/57-2.jpg"),
(NULL,57,"/detailevery/57-3.jpg"),
(NULL,57,"/detailevery/57-4.jpg"),
(NULL,57,"/detailevery/57-5.jpg"),
(NULL,57,"/detailevery/57-6.jpg"),
(NULL,58,"/detailevery/58-1.jpg"),
(NULL,59,"/detailevery/59-1.jpg"),
(NULL,60,"/detailevery/60-1.jpg"),
(NULL,60,"/detailevery/60-2.jpg"),
(NULL,60,"/detailevery/60-3.jpg"),
(NULL,60,"/detailevery/60-4.jpg"),
(NULL,60,"/detailevery/60-5.jpg"),
(NULL,60,"/detailevery/60-6.jpg"),
(NULL,60,"/detailevery/60-7.jpg"),
(NULL,61,"/detailevery/61-1.jpg"),
(NULL,61,"/detailevery/61-2.jpg"),
(NULL,61,"/detailevery/61-3.jpg"),
(NULL,61,"/detailevery/61-4.jpg"),
(NULL,61,"/detailevery/61-5.jpg"),
(NULL,61,"/detailevery/61-6.jpg"),
(NULL,61,"/detailevery/61-7.jpg"),
(NULL,62,"/detailevery/62-1.jpg"),
(NULL,63,"/detailevery/63-1.jpg"),
(NULL,63,"/detailevery/63-2.jpg"),
(NULL,63,"/detailevery/63-3.jpg"),
(NULL,63,"/detailevery/63-4.jpg"),
(NULL,63,"/detailevery/63-5.jpg"),
(NULL,63,"/detailevery/63-6.jpg"),
(NULL,63,"/detailevery/63-7.jpg"),
(NULL,64,"/detailevery/64-1.jpg"),
(NULL,64,"/detailevery/64-2.jpg"),
(NULL,64,"/detailevery/64-3.jpg"),
(NULL,64,"/detailevery/64-4.jpg"),
(NULL,64,"/detailevery/64-5.jpg"),
(NULL,64,"/detailevery/64-6.jpg"),
(NULL,64,"/detailevery/64-7.jpg"),
(NULL,65,"/detailevery/65-1.jpg"),
(NULL,65,"/detailevery/65-2.jpg"),
(NULL,65,"/detailevery/65-3.jpg"),
(NULL,65,"/detailevery/65-4.jpg"),
(NULL,65,"/detailevery/65-5.jpg"),
(NULL,65,"/detailevery/65-6.jpg"),
(NULL,65,"/detailevery/65-7.jpg"),
(NULL,66,"/detailevery/66-1.jpg"),
(NULL,66,"/detailevery/66-2.jpg"),
(NULL,66,"/detailevery/66-3.jpg"),
(NULL,66,"/detailevery/66-4.jpg"),
(NULL,66,"/detailevery/66-5.jpg"),
(NULL,66,"/detailevery/66-6.jpg"),
(NULL,67,"/detailevery/67-1.jpg"),
(NULL,67,"/detailevery/67-2.jpg"),
(NULL,67,"/detailevery/67-3.jpg"),
(NULL,67,"/detailevery/67-4.jpg"),
(NULL,67,"/detailevery/67-5.jpg"),
(NULL,67,"/detailevery/67-6.jpg"),
(NULL,68,"/detailevery/68-1.jpg"),
(NULL,69,"/detailevery/69-1.jpg"),
(NULL,69,"/detailevery/69-2.jpg"),
(NULL,69,"/detailevery/69-3.jpg"),
(NULL,69,"/detailevery/69-4.jpg"),
(NULL,69,"/detailevery/69-5.jpg"),
(NULL,69,"/detailevery/69-6.jpg"),
(NULL,69,"/detailevery/69-7.jpg"),
(NULL,70,"/detailevery/70-1.jpg"),
(NULL,70,"/detailevery/70-2.jpg"),
(NULL,70,"/detailevery/70-3.jpg"),
(NULL,70,"/detailevery/70-4.jpg"),
(NULL,70,"/detailevery/70-5.jpg"),
(NULL,70,"/detailevery/70-6.jpg"),
(NULL,70,"/detailevery/70-7.jpg"),
(NULL,71,"/detailevery/71-1.jpg"),
(NULL,72,"/detailevery/72-2.jpg");

CREATE TABLE gk_cart(
	id INT PRIMARY KEY AUTO_INCREMENT,
	lid INT,
	pic VARCHAR(255),
	title VARCHAR(255),
	price DECIMAL(10,2),
	count INT,
	uid INT
);

CREATE TABLE gk_order(
	id INT PRIMARY KEY AUTO_INCREMENT,
	lid INT,
	pic VARCHAR(255),
	title VARCHAR(255),
	price DECIMAL(10,2),
	count INT,
	uid INT
);