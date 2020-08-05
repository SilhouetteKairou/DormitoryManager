USE master;
GO
/*建立空的数据库*/
/*请根据实际环境更改数据库文件和日志文件的存放路径*/
CREATE DATABASE MyStudy
ON 
( NAME = MyStudy,
    FILENAME = 'D:\MyStudy.mdf',
    SIZE = 5MB,
    MAXSIZE = 50MB,
    FILEGROWTH = 1MB )
LOG ON
( NAME = MyStudy_log,
    FILENAME = 'D:\MyStudy_log.ldf',
    SIZE = 3MB,
    MAXSIZE = 25MB,
    FILEGROWTH = 1MB )
COLLATE Chinese_PRC_CS_AS;
GO
USE MyStudy
/*分别建立Users、College等数据表的结构*/

CREATE TABLE [Users](
	[UserId] int identity PRIMARY KEY,
    [Name] [nvarchar](80) NOT NULL,
    [Password] [nvarchar](80) NOT NULL,
    [StuNumber] [nvarchar](80) NOT NULL)

CREATE TABLE [Admins](
	[AdminId] int identity PRIMARY KEY,
    [AdminNo] [nvarchar](80) NOT NULL,
    [Password] [nvarchar](80) NOT NULL)

CREATE TABLE [Colleges](
	[CollegeId] int identity PRIMARY KEY,
    [Name] [nvarchar](80) NOT NULL,
    [College] [nvarchar](255),
	[StuNumber] [nvarchar](80) NOT NULL
	)

/*在Users、Admins表中插入示例数据*/
INSERT INTO [Admins] ([AdminNo],[Password]) VALUES ('A000001','A000001');
INSERT INTO [Admins] ([AdminNo],[Password]) VALUES ('A000002','A000002');
INSERT INTO [Admins] ([AdminNo],[Password]) VALUES ('A000003','A000003');
INSERT INTO [Admins] ([AdminNo],[Password]) VALUES ('A000004','A000004');
INSERT INTO [Admins] ([AdminNo],[Password]) VALUES ('A000005','A000005');
INSERT INTO [Admins] ([AdminNo],[Password]) VALUES ('A000006','A000006');
INSERT INTO [Admins] ([AdminNo],[Password]) VALUES ('A000007','A000007');
INSERT INTO [Admins] ([AdminNo],[Password]) VALUES ('A000008','A000008');
INSERT INTO [Admins] ([AdminNo],[Password]) VALUES ('A000009','A000009');

INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('ksm', 'ksm', '01');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('tae', 'tae', '02');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('rmr', 'rmr', '03');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('sya', 'sya', '04');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('ars', 'ars', '05');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('ran', 'ran', '06');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('moc', 'moc', '07');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('aya', 'aya', '08');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('tme', 'tme', '09');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('tsg', 'tsg', '10');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('kkr', 'kkr', '11');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('kor', 'kor', '12');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('hgm', 'hgm', '13');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('fee', 'fee', '14');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('msk', 'msk', '15');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('hmr', 'hmr', '16');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('hna', 'hna', '17');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('cst', 'cst', '18');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('mya', 'mya', '19');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('eve', 'eve', '20');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('ykn', 'ykn', '21');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('syo', 'syo', '22');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('lsa', 'lsa', '23');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('ako', 'ako', '24');
INSERT INTO [Users] ([Name], [Password], [StuNumber]) VALUES ('rko', 'rko', '25');
/*在Colleges表中插入示例数据*/
INSERT INTO [MyStudy].[dbo].[Colleges]([Name],[College],[StuNumber]) VALUES ('ksm','https://www.baidu.com','01');
INSERT INTO [MyStudy].[dbo].[Colleges] ([Name],[College],[StuNumber]) VALUES ('tae','https://www.baidu.com','02');
INSERT INTO [MyStudy].[dbo].[Colleges] ([Name],[College],[StuNumber]) VALUES ('rmr','https://www.baidu.com','03');
INSERT INTO [MyStudy].[dbo].[Colleges] ([Name],[College],[StuNumber]) VALUES ('sya','https://www.baidu.com','04');
INSERT INTO [MyStudy].[dbo].[Colleges]([Name],[College],[StuNumber]) VALUES ('ars','https://www.baidu.com','05');
INSERT INTO [MyStudy].[dbo].[Colleges]([Name],[College],[StuNumber]) VALUES ('ran','https://www.baidu.com','06');
INSERT INTO [MyStudy].[dbo].[Colleges]([Name],[College],[StuNumber]) VALUES ('moc','https://www.baidu.com','07');
INSERT INTO [MyStudy].[dbo].[Colleges]([Name],[College],[StuNumber]) VALUES ('aya','https://www.baidu.com','08');
INSERT INTO [MyStudy].[dbo].[Colleges]([Name],[College],[StuNumber]) VALUES ('tme','https://www.baidu.com','09');
INSERT INTO [MyStudy].[dbo].[Colleges]([Name],[College],[StuNumber]) VALUES ('tsg','https://www.baidu.com','10');


CREATE TABLE [Provinces](
	[ProvId] int identity PRIMARY KEY,
    [ProvName] [nvarchar](80) NOT NULL,
	[ProvAB] [nvarchar](8) NOT NULL
	)

INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('北京', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('天津', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('河北', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('山西', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('内蒙古', 'B区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('辽宁', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('吉林', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('黑龙江', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('上海', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('江苏', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('浙江', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('安徽', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('福建', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('江西', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('山东', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('河南', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('湖北', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('湖南', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('广东', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('广西', 'B区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('海南', 'B区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('重庆', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('四川', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('贵州', 'B区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('云南', 'B区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('西藏', 'B区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('陕西', 'A区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('甘肃', 'B区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('青海', 'B区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('宁夏', 'B区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('新疆', 'B区');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('香港', '-');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('澳门', '-');
INSERT INTO [MyStudy].[dbo].[Provinces] ([ProvName], [ProvAB]) VALUES ('台湾', '-');

ALTER TABLE [MyStudy].[dbo].[Provinces] ADD [ProvNo] nvarchar(4);

UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '11' WHERE [ProvName] = '北京';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '12' WHERE [ProvName] = '天津';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '13' WHERE [ProvName] = '河北';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '14' WHERE [ProvName] = '山西';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '15' WHERE [ProvName] = '内蒙古';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '21' WHERE [ProvName] = '辽宁';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '22' WHERE [ProvName] = '吉林';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '23' WHERE [ProvName] = '黑龙江';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '31' WHERE [ProvName] = '上海';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '32' WHERE [ProvName] = '江苏';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '33' WHERE [ProvName] = '浙江';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '34' WHERE [ProvName] = '安徽';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '35' WHERE [ProvName] = '福建';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '36' WHERE [ProvName] = '江西';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '37' WHERE [ProvName] = '山东';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '41' WHERE [ProvName] = '河南';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '42' WHERE [ProvName] = '湖北';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '43' WHERE [ProvName] = '湖南';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '44' WHERE [ProvName] = '广东';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '45' WHERE [ProvName] = '广西';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '46' WHERE [ProvName] = '海南';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '50' WHERE [ProvName] = '重庆';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '51' WHERE [ProvName] = '四川';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '52' WHERE [ProvName] = '贵州';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '53' WHERE [ProvName] = '云南';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '54' WHERE [ProvName] = '西藏';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '61' WHERE [ProvName] = '陕西';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '62' WHERE [ProvName] = '甘肃';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '63' WHERE [ProvName] = '青海';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '64' WHERE [ProvName] = '宁夏';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '65' WHERE [ProvName] = '新疆';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '81' WHERE [ProvName] = '香港';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '91' WHERE [ProvName] = '澳门';
UPDATE [MyStudy].[dbo].[Provinces] SET [ProvNo] = '71' WHERE [ProvName] = '台湾';


CREATE TABLE [Zhx34](
	[Zhx34Id] int identity PRIMARY KEY,
    [ZhxName] [nvarchar](80) NOT NULL,
	[ZhxProv] [nvarchar](8) NOT NULL
	)

INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('北京大学', '北京');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('中国人民大学', '北京');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('清华大学', '北京');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('北京航空航天大学', '北京');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('北京理工大学', '北京');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('中国农业大学', '北京');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('北京师范大学', '北京');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('南开大学', '天津');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('天津大学', '天津');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('大连理工大学', '辽宁');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('东北大学', '辽宁');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('吉林大学', '吉林');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('哈尔滨工业大学', '黑龙江');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('复旦大学', '上海');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('同济大学', '上海');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('上海交通大学', '上海');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('南京大学', '江苏');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('东南大学', '江苏');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('浙江大学', '浙江');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('中国科学技术大学', '安徽');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('厦门大学', '福建');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('山东大学', '山东');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('武汉大学', '湖北');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('华中科技大学', '湖北');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('湖南大学', '湖南');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('中南大学', '湖南');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('中山大学', '广东');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('华南理工大学', '广东');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('四川大学', '四川');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('重庆大学', '重庆');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('电子科技大学', '四川');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('西安交通大学', '陕西');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('西北工业大学', '陕西');
INSERT INTO [MyStudy].[dbo].[Zhx34] ([ZhxName], [ZhxProv]) VALUES ('兰州大学', '甘肃');


CREATE TABLE [FirstMajors](
	[FirstMajorId] int identity PRIMARY KEY,
    [FirstMajorName] [nvarchar](80) NOT NULL,
	[FirstMajorNo] [nvarchar](8) NOT NULL
	)
INSERT INTO [MyStudy].[dbo].[FirstMajors] ([FirstMajorName], [FirstMajorNo]) VALUES ('哲学', '01');
INSERT INTO [MyStudy].[dbo].[FirstMajors] ([FirstMajorName], [FirstMajorNo]) VALUES ('经济学', '02');
INSERT INTO [MyStudy].[dbo].[FirstMajors] ([FirstMajorName], [FirstMajorNo]) VALUES ('法学', '03');
INSERT INTO [MyStudy].[dbo].[FirstMajors] ([FirstMajorName], [FirstMajorNo]) VALUES ('教育学', '04');
INSERT INTO [MyStudy].[dbo].[FirstMajors] ([FirstMajorName], [FirstMajorNo]) VALUES ('文学', '05');
INSERT INTO [MyStudy].[dbo].[FirstMajors] ([FirstMajorName], [FirstMajorNo]) VALUES ('历史学', '06');
INSERT INTO [MyStudy].[dbo].[FirstMajors] ([FirstMajorName], [FirstMajorNo]) VALUES ('理学', '07');
INSERT INTO [MyStudy].[dbo].[FirstMajors] ([FirstMajorName], [FirstMajorNo]) VALUES ('工学', '08');
INSERT INTO [MyStudy].[dbo].[FirstMajors] ([FirstMajorName], [FirstMajorNo]) VALUES ('农学', '09');
INSERT INTO [MyStudy].[dbo].[FirstMajors] ([FirstMajorName], [FirstMajorNo]) VALUES ('医学', '10');
INSERT INTO [MyStudy].[dbo].[FirstMajors] ([FirstMajorName], [FirstMajorNo]) VALUES ('军事学', '11');
INSERT INTO [MyStudy].[dbo].[FirstMajors] ([FirstMajorName], [FirstMajorNo]) VALUES ('管理学', '12');
INSERT INTO [MyStudy].[dbo].[FirstMajors] ([FirstMajorName], [FirstMajorNo]) VALUES ('艺术学', '13');


CREATE TABLE [SecondMajors](
	[SecondMajorId] int identity PRIMARY KEY,
    [SecondMajorName] [nvarchar](80) NOT NULL,
	[SecondMajorNo] [nvarchar](8) NOT NULL,
	[FirstMajorId] int NOT NULL,
	foreign key ([FirstMajorId]) references [FirstMajors]([FirstMajorId])
	)

INSERT INTO [MyStudy].[dbo].[SecondMajors] ([SecondMajorName], [SecondMajorNo],[FirstMajorId]) VALUES ('哲学', '0101',1);
INSERT INTO [MyStudy].[dbo].[SecondMajors] ([SecondMajorName], [SecondMajorNo],[FirstMajorId]) VALUES ('理论经济学', '0201',2);
INSERT INTO [MyStudy].[dbo].[SecondMajors] ([SecondMajorName], [SecondMajorNo],[FirstMajorId]) VALUES ('应用经济学', '0202',2);
INSERT INTO [MyStudy].[dbo].[SecondMajors] ([SecondMajorName], [SecondMajorNo],[FirstMajorId]) VALUES ('统计学', '0270',2);
INSERT INTO [MyStudy].[dbo].[SecondMajors] ([SecondMajorName], [SecondMajorNo],[FirstMajorId]) VALUES ('法学', '0301',3);
INSERT INTO [MyStudy].[dbo].[SecondMajors] ([SecondMajorName], [SecondMajorNo],[FirstMajorId]) VALUES ('政治学', '0302',3);
INSERT INTO [MyStudy].[dbo].[SecondMajors] ([SecondMajorName], [SecondMajorNo],[FirstMajorId]) VALUES ('社会学', '0303',3);
INSERT INTO [MyStudy].[dbo].[SecondMajors] ([SecondMajorName], [SecondMajorNo],[FirstMajorId]) VALUES ('民族学', '0304',3);
INSERT INTO [MyStudy].[dbo].[SecondMajors] ([SecondMajorName], [SecondMajorNo],[FirstMajorId]) VALUES ('马克思主义理论', '0305',3);
INSERT INTO [MyStudy].[dbo].[SecondMajors] ([SecondMajorName], [SecondMajorNo],[FirstMajorId]) VALUES ('公安学', '0306',3);

CREATE TABLE [ThirdMajors](
	[ThirdMajorId] int identity PRIMARY KEY,
    [ThirdMajorName] [nvarchar](80) NOT NULL,
	[ThirdMajorNo] [nvarchar](8) NOT NULL,
	[SecondMajorId] int NOT NULL,
	foreign key ([SecondMajorId]) references [SecondMajors]([SecondMajorId])
	)


INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('哲学', '010100',1);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('马克思主义哲学', '010101',1);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('中国哲学', '010102',1);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('外国哲学', '010103',1);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('逻辑学', '010104',1);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('伦理学', '010105',1);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('美学', '010106',1);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('宗教学', '010107',1);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('科学技术哲学', '010108',1);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('理论经济学', '020100',2);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('政治经济学', '020101',2);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('经济思想史', '020102',2);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('经济史', '020103',2);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('西方经济学', '020104',2);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('世界经济', '020105',2);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('人口、资源与环境经济学', '020106',2);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('应用经济学', '020200',3);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('国民经济学', '020201',3);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('区域经济学', '020202',3);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('财政学', '020203',3);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('金融学', '020204',3);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('产业经济学', '020205',3);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('国际贸易学', '020206',3);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('劳动经济学', '020207',3);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('统计学', '020208',3);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('数量经济学', '020209',3);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('国防经济', '020210',3);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('国防经济', '020210',3);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('统计学', '027000',4);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('法学', '030100',5);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('法学理论', '030101',5);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('法律史', '030102',5);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('宪法学与行政法学', '030103',5);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('刑法学', '030104',5);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('民商法学', '030105',5);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('诉讼法学', '030106',5);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('经济法学', '030107',5);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('环境与资源保护法学', '030108',5);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('国际法学', '030109',5);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('军事法学', '030110',5);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('政治学', '030200',6);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('政治学理论', '030201',6);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('中外政治制度', '030202',6);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('科学社会主义与国际共产主义运动', '030203',6);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('中共党史', '030204',6);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('国际政治', '030206',6);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('国际关系', '030207',6);
INSERT INTO [MyStudy].[dbo].[ThirdMajors] ([ThirdMajorName], [ThirdMajorNo],[SecondMajorId]) VALUES ('外交学', '030208',6);

CREATE TABLE [NetView](
[Id] int identity primary key,
[IPAddr] [nvarchar](80),
[IPSrc] [nvarchar](255))


GO

USE master;
GO