USE [studyASPNET]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2023-01-13 오후 2:23:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DisplayOrder] [nvarchar](20) NULL,
	[PostDate] [datetime] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notes]    Script Date: 2023-01-13 오후 2:23:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[ReadCount] [int] NOT NULL,
	[PostDate] [datetime2](7) NOT NULL,
	[Contents] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Notes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 2023-01-13 오후 2:23:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Division] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Url] [nvarchar](500) NULL,
	[FileName] [nvarchar](500) NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RegisterModel]    Script Date: 2023-01-13 오후 2:23:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegisterModel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[ConfirmPassword] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_RegisterModel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder], [PostDate]) VALUES (1, N'Apple', N'1', CAST(N'2023-01-06T15:18:20.000' AS DateTime))
INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder], [PostDate]) VALUES (2, N'삼성전자', N'2', CAST(N'2023-01-06T15:19:30.000' AS DateTime))
INSERT [dbo].[Categories] ([Id], [Name], [DisplayOrder], [PostDate]) VALUES (3, N'LG전자', N'3', CAST(N'2023-01-06T15:19:50.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Notes] ON 

INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (4, N'MINA', N'미나', N'DB 추가...', 1, CAST(N'2023-01-09T17:15:59.0534183' AS DateTime2), N'게시글 내용입니다.. DB에 들어감')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (5, N'hkihik', N'하이하이', N'하하하ㅎㅎ', 1, CAST(N'2023-01-10T12:04:02.6768849' AS DateTime2), N'<p><strong>새글</strong>입니다.</p><p>e =mc<sup>2<sup>&nbsp;</sup></sup></p><p><em><del>내용을 보죠.</del></em></p><p>이미지를 넣습니다.</p><p><a href="https://www.naver.com" target="_blank">네이버</a></p><p><img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4QBKRXhpZgAASUkqAAgAAAACAA4BAgAcAAAAJgAAABIBAwABAAAAAQAAAAAAAABCZWF1dGlmdWwgZmVsaW5lIGNhdCBhdCBob21l/+0AaFBob3Rvc2hvcCAzLjAAOEJJTQQEAAAAAABMHAJQAAlBYXJvbkFtYXQcAngAHEJlYXV0aWZ1bCBmZWxpbmUgY2F0IGF0IGhvbWUcAm4AGEdldHR5IEltYWdlcy9pU3RvY2twaG90b//hBSBodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+Cjx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iPgoJPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KCQk8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczpwaG90b3Nob3A9Imh0dHA6Ly9ucy5hZG9iZS5jb20vcGhvdG9zaG9wLzEuMC8iIHhtbG5zOklwdGM0eG1wQ29yZT0iaHR0cDovL2lwdGMub3JnL3N0ZC9JcHRjNHhtcENvcmUvMS4wL3htbG5zLyIgICB4bWxuczpHZXR0eUltYWdlc0dJRlQ9Imh0dHA6Ly94bXAuZ2V0dHlpbWFnZXMuY29tL2dpZnQvMS4wLyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxuczpwbHVzPSJodHRwOi8vbnMudXNlcGx1cy5vcmcvbGRmL3htcC8xLjAvIiAgeG1sbnM6aXB0Y0V4dD0iaHR0cDovL2lwdGMub3JnL3N0ZC9JcHRjNHhtcEV4dC8yMDA4LTAyLTI5LyIgeG1sbnM6eG1wUmlnaHRzPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvcmlnaHRzLyIgcGhvdG9zaG9wOkNyZWRpdD0iR2V0dHkgSW1hZ2VzL2lTdG9ja3Bob3RvIiBHZXR0eUltYWdlc0dJRlQ6QXNzZXRJRD0iMTA0MTk4NzUzNiIgeG1wUmln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" alt=""><br></p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (6, N'BBB', N'비비비', N'비비비 글쓰기', 11, CAST(N'2023-01-09T15:12:00.0000000' AS DateTime2), N'<p>본문 내용 입니다. ㄱㄱㄱ</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (8, N'Ashely', N'애슐리', N'시작', 8, CAST(N'2023-01-10T09:17:32.6645201' AS DateTime2), N'<p><span class="media_end_summary" style="display: block; overflow: hidden; position: relative; margin: -5px 10px 31px 1px; padding-left: 14px; font-family: HelveticaNeue-Medium, AppleSDGothicNeo-Medium, Arial, sans-serif; color: rgb(48, 48, 56); font-size: 17px; letter-spacing: -0.3px;">네이버 뉴스 스크랩</span></p><p style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><span class="end_photo_org" style="position: relative; z-index: 1; display: block; margin: 0px; padding-top: 1px; text-align: center; zoom: 1;"><div class="nbd_im_w _LAZY_LOADING_WRAP " style="clear: both; margin: 0px; padding-top: 0px;"><div class="nbd_a _LAZY_LOADING_ERROR_HIDE" id="img_a1" style="position: relative;"><img id="img1" class="_LAZY_LOADING" src="https://imgnews.pstatic.net/image/088/2023/01/09/0000792498_001_20230109205101201.jpg?type=w647" style="border: 0px; vertical-align: top; width: 700px; margin-bottom: 14px;"></div></div><span class="img_desc" style="display: block; margin: 0px 0px 20.5px; padding: 0px 5px; color: var(--color_sub_info); font-size: 15px; line-height: 21px; letter-spacing: -0.3px;">포항시 수소도시 조성 조감도. 경북도 제공</span></span></p><p><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><span style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;">포항시가 ''수소도시''로 새롭게 조성된다. 앞으로 포항시는 지역 내 수소를 적극 활용하는 미래형 도시 기반을 구축할 예정이다.</span><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><span style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;">국토교통부는 지난달 국회에서 예산 52억5천만원이 확정됨에 따라 올해 포항을 비롯해 평택, 남양주, 당진, 보령, 광양 등 6개 도시에서 수소도시 조성사업을 본격적으로 추진한다고 9일 밝혔다.</span><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><span style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;">수소도시 조성사업은 수소 에너지원을 공동주택, 건축물, 교통시설에 활용하도록 수소생산시설과 이송시설(파이프라인·튜브 트레일러), 활용시설을 구축하는 사업이다.</span><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><span style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;">앞서 국토부는 울산, 전주·완주, 안산 세 곳을 이미 시범도시로 선정해 수소 인프라를 구축하고 있다.</span><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><span style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;">이번에 수소도시로 신규 선정된 6곳에는 지자체당 4년간 400억원(국비 200억원·지방비 200억원)이 투입될 예정이다.</span><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><span style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;">내년에는 국비 52억5천만원에 같은 규모의 지방비를 더해 105억원을 투입한다.</span><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><span style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;">특히 포항시는 제철소를 통한 수소공급여건이 우수한 지역으로 블루밸리산단에 수소연료전지사업 기반시설 구축을 위한 예비타당성 조사를 추진하고 있다.</span><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><span style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;">공공주택, 공공시설 등에 수소연료전지 설치, 수소버스 보급과 함께 연계사업으로 수소충전소를 구축하고 제철소 수소생산시설과 블루밸리산단을 연결하는 약 15.4km의 수소 배관과 통합안전운영센터 등 수소도시 인프라를 설치할 예정이다.</span><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><span style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;">지역특화사업으로는 블루밸리산단 내 그린수소 생산을 위한 수전해수소생산시설 실증 등을 추진한다.</span><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><br style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;"><span style="color: rgb(48, 48, 56); font-family: HelveticaNeue, AppleSDGothicNeo-Regular, Arial, sans-serif; font-size: 17px; letter-spacing: -0.3px;">국토부 관계자는 "그간 시범사업 성과를 바탕으로 내년부터는 수소도시 조성사업이 본격적으로 추진될 계획"이라며 "또한 수소도시 관련 기술들이 개발되고 상용화되면 수소도시 조성을 통해 일자리 창출, 에너지비용 절감, 탄소배출 저감 등 경제 활성화에 기여할 뿐만 아니라 탄소중립사회로의 이행도 보다 빨라질 것으로 기대된다"고 말했다.</span><br></p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (10, N'Ashely', N'하하', N'하하', 2, CAST(N'2023-01-10T14:32:10.9961269' AS DateTime2), N'<p>타승타</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (11, N'ggg', N'ggg', N'gggg토스트', 3, CAST(N'2023-01-10T12:31:44.0754971' AS DateTime2), N'<p>토스트메세지테 스트a</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (12, N'Toast', N'Toast', N'토스트 테스트', 3, CAST(N'2023-01-10T12:30:48.7627898' AS DateTime2), N'<p>테스트</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (13, N'페이징', N'페이징', N'페이징', 0, CAST(N'2023-01-10T12:32:23.5863578' AS DateTime2), N'<p>페이징</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (14, N'MINA', N'하이하이', N'ㅎ앟마', 4, CAST(N'2023-01-10T10:36:24.2326759' AS DateTime2), N'<p>3123</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (15, N'ㅎㅁㅎ', N'ㅁㄹㅇㄴㅁ', N'ㅇㄴㅁㄹㅇㄴㅁ', 5, CAST(N'2023-01-10T10:36:31.7084065' AS DateTime2), N'<p>ㅁㅇㄴㄻㄹ</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (16, N'ㄹㄴㅇㅎ', N'ㅇㄹㄶㅇㄴ', N'ㄶㅇㄴ', 6, CAST(N'2023-01-10T10:36:35.6093293' AS DateTime2), N'<p>ㅎㅇㄴㅀㅇㄹㄴ</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (17, N'ㄴㅇㄹㅇㄴ', N'ㄴㅇㄹ', N'ㅇㄴㄹㄴ', 4, CAST(N'2023-01-10T10:36:39.5846016' AS DateTime2), N'<p>ㅇㅁㄴㄹㅇㅁㄴㄹ</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (18, N'ㅁㅇㅎㅁ', N'ㅎㄴㅇ로', N'옹ㄹ호', 1, CAST(N'2023-01-10T10:37:09.9049078' AS DateTime2), N'<p>ㅎㅇ럴호ㅓ</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (19, N'ㅁㅇㄹㅇㅁㄴㄹ', N'ㅎㅇㄹㄶㄹㅇ', N'ㅎㅇㄴㅀㅇㄹㄶ', 38, CAST(N'2023-01-10T10:37:14.2013688' AS DateTime2), N'<p>ㅇㄴㅀㄴㅇㅀㅇㄹㄶㄹㅇㄴ</p>')
INSERT [dbo].[Notes] ([Id], [UserId], [Name], [Title], [ReadCount], [PostDate], [Contents]) VALUES (20, N'abcde', N'abcde', N'사용자 아이디로 저장', 3, CAST(N'2023-01-12T10:18:05.9525810' AS DateTime2), N'<p>하하하</p>')
SET IDENTITY_INSERT [dbo].[Notes] OFF
GO
SET IDENTITY_INSERT [dbo].[Profiles] ON 

INSERT [dbo].[Profiles] ([Id], [Division], [Title], [Description], [Url], [FileName]) VALUES (5, N'Card1', N'First Skill', N'<p>C#, winform, sql server, javascript,...</p>', N'https://github.com/JongWon112/SmartFactory_MiniPrj_FinalInspection.git', N'1a7fe322-1b43-4278-babc-5a781794084a_profile02.png')
INSERT [dbo].[Profiles] ([Id], [Division], [Title], [Description], [Url], [FileName]) VALUES (9, N'Top', N'Welcome, MyFirstWebPage', N'<p>반갑반갑</p>', N'https://github.com/JongWon112', N'ddd2fc81-492c-48fd-866f-37f972a8ae90_profile01.png')
INSERT [dbo].[Profiles] ([Id], [Division], [Title], [Description], [Url], [FileName]) VALUES (10, N'Card2', N'Second Skill', N'<p>c@ winform js dadf</p>', N'https://github.com/JongWon112', N'98ba51f1-bc90-4a96-af7f-36f491ec7e05_profile03.png')
INSERT [dbo].[Profiles] ([Id], [Division], [Title], [Description], [Url], [FileName]) VALUES (12, N'Card3', N'Last Skill', N'<p>ASP.NET Core</p><p>.NET Core로 된 ASP.NET Core 개발</p>', N'https://www.naver.com', N'')
SET IDENTITY_INSERT [dbo].[Profiles] OFF
GO
/****** Object:  StoredProcedure [dbo].[USP_PagingNotes]    Script Date: 2023-01-13 오후 2:23:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		이종원
-- Create date: 2023-01-10
-- Description:	게시판 페이징용 SP
-- =============================================
CREATE   PROCEDURE [dbo].[USP_PagingNotes]
	@StartCount int, -- 페이징 시작 카운트
	@EndCount   int  -- 페이징 종료카운트
AS
BEGIN

	SET NOCOUNT ON;

	-- 페이징용 쿼리 시작
	
	SELECT *
	  FROM (
		SELECT ROW_NUMBER() OVER (ORDER BY ID DESC) AS rowNum
			  ,Id
			  ,UserId
			  ,[Name]
			  ,Title
			  ,ReadCount
			  ,PostDate
			  ,Contents
		  FROM Notes
		   ) AS Base
	WHERE Base.rowNum BETWEEN @StartCount AND @EndCount  

END
GO
