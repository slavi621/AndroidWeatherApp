USE [master]
GO
/****** Object:  Database [InformationUni]    Script Date: 5/28/2019 11:13:42 AM ******/
CREATE DATABASE [InformationUni]
 CONTAINMENT = NONE
 

ALTER DATABASE [InformationUni] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [InformationUni].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [InformationUni] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InformationUni] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InformationUni] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InformationUni] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InformationUni] SET ARITHABORT OFF 
GO
ALTER DATABASE [InformationUni] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InformationUni] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InformationUni] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InformationUni] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InformationUni] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InformationUni] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InformationUni] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InformationUni] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InformationUni] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InformationUni] SET  DISABLE_BROKER 
GO
ALTER DATABASE [InformationUni] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InformationUni] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InformationUni] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InformationUni] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InformationUni] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InformationUni] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InformationUni] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InformationUni] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [InformationUni] SET  MULTI_USER 
GO
ALTER DATABASE [InformationUni] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InformationUni] SET DB_CHAINING OFF 
GO
ALTER DATABASE [InformationUni] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [InformationUni] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [InformationUni] SET DELAYED_DURABILITY = DISABLED 
GO
USE [InformationUni]
GO
/****** Object:  Table [dbo].[Faculties]    Script Date: 5/28/2019 11:13:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Faculties](
	[FacultyID] [int] IDENTITY(1,1) NOT NULL,
	[Name_Faculty] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Faculties] PRIMARY KEY CLUSTERED 
(
	[FacultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


/****** Object:  Table [dbo].[Fields]    Script Date: 5/28/2019 11:13:43 AM ******/




CREATE TABLE [dbo].[Fields](
	[FieldID] [int] NOT NULL,
	[FacultyID] [int] NOT NULL,
	[Name_Field] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[FieldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[More_info]    Script Date: 5/28/2019 11:13:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[More_info](
	[DurationID] [int] NOT NULL,
	[Location] [text] NOT NULL,
	[Duration_in_years] [int] NOT NULL,
	[Duration_in_semesters] [decimal](18, 1) NULL,
	[Fee_per_semester] [int] NOT NULL,
	[Studying_type] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Specialties]    Script Date: 5/28/2019 11:13:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialties](
	[SpecialtyID] [int] NOT NULL,
	[Name_Specialty] [nvarchar](100) NOT NULL,
	[FieldID] [int] NOT NULL,
	[InfoID] [int] NOT NULL,
 CONSTRAINT [PK_Specialties_1] PRIMARY KEY CLUSTERED 
(
	[InfoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Specialty_details]    Script Date: 5/28/2019 11:13:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specialty_details](
	[InfoID] [int] NULL,
	[Name_Specialty] [nvarchar](100) NOT NULL,
	[Knowledge_gained] [text] NOT NULL,
	[Future_realization] [text] NOT NULL,
	[DurationID] [int] NOT NULL,
 CONSTRAINT [PK_Specialty_details] PRIMARY KEY CLUSTERED 
(
	[DurationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 5/28/2019 11:13:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[EGN] [bigint] NOT NULL,
	[f_Name] [nvarchar](128) NOT NULL,
	[s_Name] [nvarchar](128) NOT NULL,
	[l_Name] [nvarchar](128) NOT NULL,
	[Name_Specialty] [nvarchar](500) NOT NULL,
	[email] [nvarchar](128) NOT NULL,
	[phone_number] [bigint] NULL,
	[city] [text] NULL,
	[SpecialtyID] [int] NOT NULL,
 CONSTRAINT [PK_Student_1] PRIMARY KEY CLUSTERED 
(
	[SpecialtyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Fields]  WITH CHECK ADD  CONSTRAINT [FK_Fields_Faculties] FOREIGN KEY([FacultyID])
REFERENCES [dbo].[Faculties] ([FacultyID])
GO
ALTER TABLE [dbo].[Fields] CHECK CONSTRAINT [FK_Fields_Faculties]
GO
ALTER TABLE [dbo].[More_info]  WITH CHECK ADD  CONSTRAINT [FK_More_info_Specialty_details] FOREIGN KEY([DurationID])
REFERENCES [dbo].[Specialty_details] ([DurationID])
GO
ALTER TABLE [dbo].[More_info] CHECK CONSTRAINT [FK_More_info_Specialty_details]
GO
ALTER TABLE [dbo].[Specialties]  WITH CHECK ADD  CONSTRAINT [FK_Specialties_Fields] FOREIGN KEY([FieldID])
REFERENCES [dbo].[Fields] ([FieldID])
GO
ALTER TABLE [dbo].[Specialties] CHECK CONSTRAINT [FK_Specialties_Fields]
GO
ALTER TABLE [dbo].[Specialties]  WITH CHECK ADD  CONSTRAINT [FK_Specialties_Student] FOREIGN KEY([SpecialtyID])
REFERENCES [dbo].[Student] ([SpecialtyID])
GO
ALTER TABLE [dbo].[Specialties] CHECK CONSTRAINT [FK_Specialties_Student]
GO
ALTER TABLE [dbo].[Specialty_details]  WITH CHECK ADD  CONSTRAINT [FK_Specialty_details_Specialties] FOREIGN KEY([InfoID])
REFERENCES [dbo].[Specialties] ([InfoID])
GO
ALTER TABLE [dbo].[Specialty_details] CHECK CONSTRAINT [FK_Specialty_details_Specialties]
GO
USE [master]
GO
ALTER DATABASE [InformationUni] SET  READ_WRITE 
GO


USE [InformationUni]
GO
SET IDENTITY_INSERT [dbo].[Faculties] ON 
GO
INSERT [dbo].[Faculties] ([FacultyID], [Name_Faculty]) VALUES (1, N'Political Sciences')
GO
INSERT [dbo].[Faculties] ([FacultyID], [Name_Faculty]) VALUES (2, N'Economics')
GO
INSERT [dbo].[Faculties] ([FacultyID], [Name_Faculty]) VALUES (3, N'Administration and Management.')
GO
SET IDENTITY_INSERT [dbo].[Faculties] OFF


GO
INSERT [dbo].[Fields] ([FieldID], [FacultyID], [Name_Field]) VALUES (1, 1, N'International Relations')
GO
INSERT [dbo].[Fields] ([FieldID], [FacultyID], [Name_Field]) VALUES (2, 2, N'Economics and Business Subfield')
GO
INSERT [dbo].[Fields] ([FieldID], [FacultyID], [Name_Field]) VALUES (3, 3, N'-')
GO


INSERT [dbo].[Specialties] ([SpecialtyID], [Name_Specialty], [FieldID], [InfoID]) VALUES (1, N'International Relations', 1, 1)
GO
INSERT [dbo].[Specialties] ([SpecialtyID], [Name_Specialty], [FieldID], [InfoID]) VALUES (2,  N'Business Economics', 2, 2)
GO
INSERT [dbo].[Specialties] ([SpecialtyID], [Name_Specialty], [FieldID], [InfoID]) VALUES (3, N'Business Administration', 3, 3)
GO


INSERT [dbo].[Specialty_details] ([Name_Specialty], [Knowledge_gained], [Future_realization], [DurationID]) VALUES (N'International Relations', N'In this specialty students will be prepared with knowledge in theory  and history of international relations and foreign policy(of Bulgaria); key players in international communication; methods and techniques of analysis in these areas; issues of national and international security, multilateral diplomacy, negotiations, conflict management, in the sphere of European integration and of the Balkan relations.
Moreover Acquired knowledge and skills are a prerequisite for stable career development in: foreign-political and foreign economic activity; work in international organizations and European integration; the field of domestic politics and government.The university adopted techniques and experience of leading foreign universities. The advantage of provided very good preparation in two foreign languages, gives even better opportunity for international exchange and mobility. The diploma is recognized by universities in the USA, UK, Europe and other countries.
', N'They can work as specialists in non-state and non-profit organizations, employees in EU structures and other international organizations in Bulgaria and abroad, employees and analysts in the Bulgarian security and defense institutions, officials, foreign policy experts and advisers to central and other state bodies, researchers in research institutes and lecturers in higher schools, employees in the Ministry of Foreign Affairs and its structures in Bulgaria and abroad, commentators and experts in the mass media.', 1)
GO
INSERT [dbo].[Specialty_details] ([Name_Specialty], [Knowledge_gained], [Future_realization], [DurationID]) VALUES (N'Business Economics', N'In the Economics and Business Economics programme, you will analyse business problems using tools from both economics and business: Economics: quantitative skills, economic modelling, information management, knowledge management, network economics. Business: strategy, finance, accounting, banking, managerial economics.', N'Future realization includes financial analysts research companies, industries, stocks, bonds, and other investment vehicles for finance departments. 
Their analyses often require the advanced quantitative skills possessed by many economics majors', 2)
GO
INSERT [dbo].[Specialty_details] ([Name_Specialty], [Knowledge_gained], [Future_realization], [DurationID]) VALUES (N'Business Administration', N'Individuals with business administration degrees are being utilized in many sectors besides business, so many employers in other areas like healthcare and government are looking at people with this degree as a requirement for positions in their organizations. Students could use the knowledge they learn in business administration programs in a variety of settings and in a variety of roles, from accounting to human resources management. If the flexibility of this degree 
is what you are looking for, then you should know that there are various ways that this degree may be earned.', N'Future realization includes Chief financial officers: Account for a company’s financial reporting. They direct the organization’s financial goals, objectives, and budgets. They may oversee investments and manage assets. Chief information officers: Responsible for the overall technological direction of a company, which includes managing information technology and computer systems.
Chief operating officers: Oversee other executives who direct the activities of various departments, such as human resources and sales.Chief sustainability officers: Address sustainability issues by overseeing a corporate sustainability strategy. For example, they may manage programs or policies relating to environmental issues and ensure the organization’s compliance with related regulations.General and operations managers: Oversee operations that are too diverse to be classified into one area of management or administration. Responsibilities may include formulating policies, managing daily operations, and planning the use of materials and human resources.', 3)


