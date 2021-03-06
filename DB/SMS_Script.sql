USE [SMS_NEW]
GO
/****** Object:  Table [dbo].[Achivement]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Achivement](
	[AchivementId] [int] NOT NULL,
	[StudentId] [int] NULL,
	[Title] [varchar](450) NULL,
	[Description] [nvarchar](max) NULL,
	[AchivementDate] [datetime] NULL,
 CONSTRAINT [PK_Achivement] PRIMARY KEY CLUSTERED 
(
	[AchivementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Articles]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[ArticleId] [int] NOT NULL,
	[Title] [nvarchar](400) NULL,
	[Abstract] [nvarchar](max) NULL,
	[PublishedDate] [datetime] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Articles] PRIMARY KEY CLUSTERED 
(
	[ArticleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assignments]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignments](
	[AssignmentID] [int] NOT NULL,
	[AssignmentTitle] [varchar](150) NULL,
	[Cono] [varchar](10) NULL,
	[AssignmentDescription] [varchar](max) NULL,
	[DateCreated] [varchar](50) NULL,
 CONSTRAINT [PK_Assignments] PRIMARY KEY CLUSTERED 
(
	[AssignmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[AttendanceId] [int] IDENTITY(1,1) NOT NULL,
	[AttendanceDate] [datetime] NOT NULL,
	[StudentId] [int] NOT NULL,
	[AttendFlag] [bit] NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[AttendanceId] ASC,
	[AttendanceDate] ASC,
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BanckAccountAudit]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanckAccountAudit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Messages] [varchar](max) NULL,
	[DateCreated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankAccount]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccount](
	[Accountnum] [int] IDENTITY(1,1) NOT NULL,
	[FName] [varchar](50) NULL,
	[Amount] [float] NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK__BankAcco__B1DB3FD4DFC9B8FF] PRIMARY KEY CLUSTERED 
(
	[Accountnum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calendar]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calendar](
	[CalendarId] [int] NOT NULL,
	[CalendarDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CalendarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[cono] [varchar](10) NOT NULL,
	[Cotitle] [varchar](50) NULL,
	[CrHr] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseReferences]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseReferences](
	[Cono] [varchar](10) NOT NULL,
	[ReferenceId] [int] NOT NULL,
 CONSTRAINT [PK_CourseReferences] PRIMARY KEY CLUSTERED 
(
	[Cono] ASC,
	[ReferenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseSyllubus]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseSyllubus](
	[SyllabusId] [int] NOT NULL,
	[Cono] [varchar](10) NOT NULL,
	[Title] [nvarchar](150) NULL,
	[Description] [nvarchar](max) NULL,
	[DateCreated] [datetime] NULL,
 CONSTRAINT [PK_CourseSyllubus] PRIMARY KEY CLUSTERED 
(
	[SyllabusId] ASC,
	[Cono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentId] [int] NOT NULL,
	[DepartmentName] [varchar](max) NULL,
	[FacultyId] [int] NULL,
 CONSTRAINT [PK__Departme__B2079BED9CD68CC4] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] NULL,
	[FName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[ManagerId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Errorlog]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Errorlog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ErrorNumber] [varchar](50) NULL,
	[ErrorSeveri] [varchar](50) NULL,
	[ErrorState] [varchar](50) NULL,
	[ErrorLine] [int] NULL,
	[ErrorMessage] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Events]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[EventId] [int] NOT NULL,
	[EventName] [nvarchar](150) NULL,
	[Description] [nvarchar](max) NULL,
	[SemesterId] [int] NULL,
	[EventDate] [datetime] NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamSchedule]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamSchedule](
	[ExamId] [int] NOT NULL,
	[Cono] [varchar](10) NULL,
	[SemesterId] [int] NULL,
	[ExamDate] [datetime] NULL,
	[Decsription] [nvarchar](max) NULL,
 CONSTRAINT [PK_ExamSchedule] PRIMARY KEY CLUSTERED 
(
	[ExamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExtraCurriculum]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExtraCurriculum](
	[ExtraCurriculumId] [int] NOT NULL,
	[Title] [nvarchar](150) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_ExtraCurriculum] PRIMARY KEY CLUSTERED 
(
	[ExtraCurriculumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[FacultyId] [int] NOT NULL,
	[FacultyName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[FacultyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacultyBackup]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacultyBackup](
	[FacultyId] [int] NULL,
	[FacultyName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FemaleandMalefromDept1and2]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FemaleandMalefromDept1and2](
	[StudentId] [int] NULL,
	[FName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[DOB] [datetime] NULL,
	[DepartmentId] [int] NULL,
	[Gender] [varchar](1) NULL,
	[Email] [varchar](50) NULL,
	[SSN] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinancialAid]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialAid](
	[FinancialAidId] [int] NOT NULL,
	[AidTitle] [varchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_FinancialAid] PRIMARY KEY CLUSTERED 
(
	[FinancialAidId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[first10studentsGrade]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[first10studentsGrade](
	[StudentID] [int] NOT NULL,
	[Mark] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[Cono] [varchar](10) NOT NULL,
	[StudentId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
	[Mark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Cono] ASC,
	[StudentId] ASC,
	[SemesterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HighestEductionLevel]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HighestEductionLevel](
	[EducaionLevelID] [int] NOT NULL,
	[EducationLevel] [varchar](50) NULL,
 CONSTRAINT [PK_HighestEductionLevel] PRIMARY KEY CLUSTERED 
(
	[EducaionLevelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeRoomTeacher]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeRoomTeacher](
	[InstructorId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
 CONSTRAINT [PK_HomeRoomTeacher] PRIMARY KEY CLUSTERED 
(
	[InstructorId] ASC,
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[InstructorId] [int] NOT NULL,
	[FName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[Gender] [char](1) NULL,
	[DepartmentId] [int] NULL,
	[EducationLevelId] [int] NULL,
	[DOB] [datetime] NULL,
	[Reportto] [int] NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InstructorCourse]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstructorCourse](
	[Cono] [varchar](10) NOT NULL,
	[InstructorId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_InstructorCourse] PRIMARY KEY CLUSTERED 
(
	[Cono] ASC,
	[InstructorId] ASC,
	[SemesterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaleandFemaleStudents]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaleandFemaleStudents](
	[StudentId] [varchar](50) NULL,
	[FName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[DepartmentId] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[SSN] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notice]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notice](
	[NoticeId] [int] NOT NULL,
	[NoticeDate] [datetime] NULL,
	[Description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[NoticeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] NOT NULL,
	[OrderDate] [date] NULL,
	[ProductCode] [varchar](50) NOT NULL,
	[Quantity] [numeric](9, 2) NULL,
	[UnitPrice] [numeric](9, 2) NULL,
 CONSTRAINT [PK__Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParentandGuardian]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentandGuardian](
	[PartentGuardianId] [int] NOT NULL,
	[StudentId] [int] NULL,
	[ParentFName] [varchar](50) NULL,
	[ParentLName] [varchar](50) NULL,
	[ParentAddress] [varchar](50) NULL,
	[ParentCity] [varchar](50) NULL,
	[ParentPhone] [varchar](50) NULL,
	[ParentEmail] [varchar](50) NULL,
 CONSTRAINT [PK_ParentandGuardian] PRIMARY KEY CLUSTERED 
(
	[PartentGuardianId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[PaymentMethodId] [int] NOT NULL,
	[PaymentMethod] [varchar](50) NULL,
 CONSTRAINT [PK_PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[PaymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[ProjectId] [int] NOT NULL,
	[Cono] [varchar](10) NULL,
	[ProjectTitle] [nvarchar](450) NULL,
	[ProjectDescription] [nvarchar](max) NULL,
	[CretaedDate] [datetime] NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Readmission]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Readmission](
	[ReadmissionId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[Cono] [varchar](10) NULL,
	[ReadmissionDate] [datetime] NULL,
	[SemesterId] [int] NULL,
 CONSTRAINT [PK_Readmission] PRIMARY KEY CLUSTERED 
(
	[ReadmissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[References]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[References](
	[ReferenceId] [int] NOT NULL,
	[ReferenceTitle] [nvarchar](150) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_References] PRIMARY KEY CLUSTERED 
(
	[ReferenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SampleDatafromTwoTables]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SampleDatafromTwoTables](
	[StudentId] [int] NULL,
	[FName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[DOB] [datetime] NULL,
	[DepartmentId] [int] NULL,
	[Gender] [varchar](1) NULL,
	[Email] [varchar](50) NULL,
	[SSN] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolType]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolType](
	[SchoolTypeId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolType] [varchar](150) NULL,
 CONSTRAINT [PK_SchoolType] PRIMARY KEY CLUSTERED 
(
	[SchoolTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semester](
	[SemesterId] [int] NOT NULL,
	[SemesterName] [varchar](50) NULL,
	[Year] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SemesterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMS_2021]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMS_2021](
	[StudentId] [int] NULL,
	[FirstName] [varchar](50) NULL,
	[LasName] [varchar](50) NULL,
	[DOB] [datetime] NULL,
	[DepartmentId] [int] NULL,
	[Gender] [varchar](1) NULL,
	[Email] [varchar](50) NULL,
	[SSN] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMSAudit]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSAudit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Messages] [varchar](max) NULL,
	[CretaedDate] [datetime] NULL,
	[CUser] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stident_backup]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stident_backup](
	[StudentId] [int] NOT NULL,
	[FName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[DOB] [datetime] NULL,
	[DepartmentId] [int] NULL,
	[Gender] [char](1) NULL,
	[Email] [varchar](50) NULL,
	[SSN] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] NOT NULL,
	[FName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[DOB] [datetime] NULL,
	[DepartmentId] [int] NULL,
	[Gender] [char](1) NULL,
	[Email] [varchar](50) NULL,
	[SSN] [varchar](50) NULL,
 CONSTRAINT [PK__Student__32C52B994AF370AB] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_2021]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_2021](
	[StudentId] [int] NULL,
	[FullName] [varchar](101) NULL,
	[DOB] [datetime] NULL,
	[DepartmentId] [int] NULL,
	[Gender] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentArticle]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentArticle](
	[ArticleId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[Approved] [bit] NULL,
 CONSTRAINT [PK_StudentArticle] PRIMARY KEY CLUSTERED 
(
	[ArticleId] ASC,
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentAssignment]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAssignment](
	[StudentId] [int] NOT NULL,
	[AssignmentId] [int] NOT NULL,
	[AssignedDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[Submitted] [bit] NULL,
 CONSTRAINT [PK_StudentAssignment] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC,
	[AssignmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentBackUp]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentBackUp](
	[FName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[DOB] [datetime] NULL,
	[Gender] [varchar](1) NULL,
	[DepartmentName] [varchar](max) NULL,
	[FacultyName] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentBehaviour]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentBehaviour](
	[BehaviourId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DateRecorded] [datetime] NULL,
 CONSTRAINT [PK_StudentBehaviour] PRIMARY KEY CLUSTERED 
(
	[BehaviourId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentDatawarehouse]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentDatawarehouse](
	[StudentId] [int] NULL,
	[FName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[DOB] [datetime] NULL,
	[DepartmentId] [int] NULL,
	[Gender] [varchar](1) NULL,
	[Email] [varchar](50) NULL,
	[SSN] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentDroppedOut]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentDroppedOut](
	[StudentId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
	[Cono] [varchar](10) NOT NULL,
	[DroppedOutDate] [datetime] NULL,
	[Description] [nvarchar](150) NULL,
 CONSTRAINT [PK_StudentDroppedOut] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC,
	[SemesterId] ASC,
	[Cono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentDW]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentDW](
	[StudentId] [varchar](50) NULL,
	[FName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[DepartmentId] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[SSN] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentExtraCurriculum]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentExtraCurriculum](
	[StudentId] [int] NOT NULL,
	[ExtraCurriculumId] [int] NOT NULL,
	[Pass] [bit] NULL,
 CONSTRAINT [PK_StudentExtraCurriculum] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC,
	[ExtraCurriculumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentFinancialAid]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentFinancialAid](
	[FinancialAidId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
	[Amout] [float] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_StudentFinancialAid] PRIMARY KEY CLUSTERED 
(
	[FinancialAidId] ASC,
	[StudentId] ASC,
	[SemesterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentFromCSV]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentFromCSV](
	[StudentId] [int] NULL,
	[FIrstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[DateBirth] [datetime] NULL,
	[DepartmentId] [int] NULL,
	[Gender] [varchar](1) NULL,
	[Email] [varchar](50) NULL,
	[SSN] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentHealth]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentHealth](
	[HealthId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[DateRecorded] [datetime] NULL,
 CONSTRAINT [PK_StudentHealth] PRIMARY KEY CLUSTERED 
(
	[HealthId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentPrevSchoolHistory]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentPrevSchoolHistory](
	[StudentId] [int] NOT NULL,
	[SchoolTypeId] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_StudentPrevSchoolHistory] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC,
	[SchoolTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentProject]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentProject](
	[StudentId] [int] NOT NULL,
	[ProjectId] [int] NOT NULL,
	[AssignedDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[Submitted] [bit] NULL,
 CONSTRAINT [PK_StudentProject] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC,
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentTardy]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentTardy](
	[TardyId] [int] NOT NULL,
	[TardyDate] [datetime] NOT NULL,
	[StudentId] [int] NOT NULL,
	[HoursLatefor] [float] NULL,
 CONSTRAINT [PK_StudentTardy] PRIMARY KEY CLUSTERED 
(
	[TardyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentTests]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentTests](
	[TestId] [int] NOT NULL,
	[Cono] [varchar](10) NOT NULL,
	[StudentId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
	[Mark] [int] NULL,
 CONSTRAINT [PK_StudentTests] PRIMARY KEY CLUSTERED 
(
	[TestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestEmployee]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestEmployee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestEmployee2]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestEmployee2](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[testindex]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testindex](
	[Id] [int] NOT NULL,
	[FName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[testMaskedTable]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testMaskedTable](
	[Id] [int] NOT NULL,
	[FName] [varchar](50) MASKED WITH (FUNCTION = 'partial(1, "xxx", 0)') NULL,
	[LName] [varchar](50) COLLATE Latin1_General_BIN2 ENCRYPTED WITH (COLUMN_ENCRYPTION_KEY = [CEK_Auto2], ENCRYPTION_TYPE = Deterministic, ALGORITHM = 'AEAD_AES_256_CBC_HMAC_SHA_256') NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tution]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tution](
	[TutionId] [int] NOT NULL,
	[StudentId] [int] NULL,
	[Cono] [varchar](10) NULL,
	[Amount] [money] NULL,
	[DueDate] [datetime] NULL,
	[PaymentId] [int] NULL,
 CONSTRAINT [PK_Tution] PRIMARY KEY CLUSTERED 
(
	[TutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YayobeEmployee]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YayobeEmployee](
	[Id] [int] NULL,
	[FName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[FathersFName] [dbo].[pname] NULL,
	[FathersLName] [dbo].[pname] NULL,
	[MomsFName] [dbo].[pname] NULL,
	[MomsLName] [dbo].[pname] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YayobegBank]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YayobegBank](
	[AccountNumber] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YayobeStudent]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YayobeStudent](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[FName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YayobeStudentAudit]    Script Date: 2022-01-02 5:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YayobeStudentAudit](
	[MessageDescription] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BanckAccountAudit] ON 

INSERT [dbo].[BanckAccountAudit] ([Id], [Messages], [DateCreated]) VALUES (1, N'DESKTOP-V15U451\Yoseph is trying to update or deletedata', CAST(N'2021-05-29T17:55:03.123' AS DateTime))
INSERT [dbo].[BanckAccountAudit] ([Id], [Messages], [DateCreated]) VALUES (2, N'DESKTOP-V15U451\Yoseph is trying to update or deletedata', CAST(N'2021-05-29T17:55:12.177' AS DateTime))
SET IDENTITY_INSERT [dbo].[BanckAccountAudit] OFF
SET IDENTITY_INSERT [dbo].[BankAccount] ON 

INSERT [dbo].[BankAccount] ([Accountnum], [FName], [Amount], [DateCreated]) VALUES (1, N'Yoseph', 5000, CAST(N'2021-05-29T17:43:54.850' AS DateTime))
INSERT [dbo].[BankAccount] ([Accountnum], [FName], [Amount], [DateCreated]) VALUES (2, N'Abebe', 5600, CAST(N'2021-05-29T17:43:54.850' AS DateTime))
INSERT [dbo].[BankAccount] ([Accountnum], [FName], [Amount], [DateCreated]) VALUES (3, N'Desta', 6000, CAST(N'2021-05-29T17:43:54.850' AS DateTime))
INSERT [dbo].[BankAccount] ([Accountnum], [FName], [Amount], [DateCreated]) VALUES (4, N'Hirut', 80000, CAST(N'2021-05-29T17:43:54.850' AS DateTime))
INSERT [dbo].[BankAccount] ([Accountnum], [FName], [Amount], [DateCreated]) VALUES (5, N'TestUser1', 5000, CAST(N'2021-06-05T18:38:40.650' AS DateTime))
SET IDENTITY_INSERT [dbo].[BankAccount] OFF
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE101', N'Accounting & Finance', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE102', N'Aeronautical & Manufacturing Engineering', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE103', N'Agriculture & Forestry', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE104', N'American Studies', 4)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE105', N'Anatomy & Physiology', 4)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE106', N'Anthropology', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE107', N'Archaeology', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE108', N'Architecture', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE109', N'Art & Design', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE110', N'Aural & Oral Sciences', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE111', N'Biological Sciences', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE112', N'Building', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE113', N'Business & Management Studies', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE114', N'Celtic Studies', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE115', N'Chemical Engineering', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE116', N'Chemistry', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE117', N'Civil Engineering', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE118', N'Classics & Ancient History', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE119', N'Communication & Media Studies', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE120', N'Complementary Medicine', 4)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE121', N'Computer Science', 4)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE122', N'Counselling', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE123', N'Creative Writing', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE124', N'Criminology', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE125', N'Dentistry', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE126', N'Drama, Dance & Cinematics', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE127', N'East & South Asian Studies', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE128', N'Economics', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE129', N'Education', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE130', N'Electrical & Electronic Engineering', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE131', N'English', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE132', N'Fashion', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE133', N'Film Making', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE134', N'Food Science', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE135', N'Forensic Science', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE136', N'French', 4)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE137', N'Geography & Environmental Sciences', 4)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE138', N'Geology', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE139', N'General Engineering', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE140', N'German', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE141', N'History', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE142', N'History of Art, Architecture & Design', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE143', N'Hospitality, Leisure, Recreation & Tourism', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE144', N'Iberian Languages/Hispanic Studies', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE145', N'Italian', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE146', N'Land & Property Management', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE147', N'Law', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE148', N'Librarianship & Information Management', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE149', N'Linguistics', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE150', N'Marketing', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE151', N'Materials Technology', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE152', N'Mathematics', 4)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE153', N'Mechanical Engineering', 4)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE154', N'Medical Technology', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE155', N'Medicine', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE156', N'Middle Eastern & African Studies', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE157', N'Music', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE158', N'Nursing', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE159', N'Occupational Therapy', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE160', N'Optometry, Ophthalmology & Orthoptics', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE161', N'Pharmacology & Pharmacy', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE162', N'Philosophy', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE163', N'Physics and Astronomy', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE164', N'Physiotherapy', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE165', N'Politics', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE166', N'Psychology', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE167', N'Robotics', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE168', N'Russian & East European Languages', 4)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE169', N'Social Policy', 4)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE170', N'Social Work', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE171', N'Sociology', 2)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE172', N'Sports Science', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE173', N'Theology & Religious Studies', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE174', N'Town & Country Planning and Landscape Design', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE175', N'Veterinary Medicine', 3)
INSERT [dbo].[Course] ([cono], [Cotitle], [CrHr]) VALUES (N'COURSE176', N'Youth Work', 3)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (1, N'Civil Engineering', 1)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (2, N'Electrical Engineering', 1)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (3, N'Chemical Engineering', 1)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (4, N'Mechanical Engineerng', 1)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (5, N'ComputerEngineering', 1)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (6, N'Tectile Engineering', 1)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (7, N'Chemistry', 2)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (8, N'Physics', 2)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (9, N'Mathematics', 2)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (10, N'Statistics', 2)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (11, N'Biology', 2)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (12, N'Geology', 2)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (13, N' Industrial Chemistry', 2)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (14, N'Zoology', 2)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (15, N'Veterinary Biomedical Science', 3)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (16, N'Veterinary Clinical', 3)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (17, N'Population Medicine', 3)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (18, N'Physiotherapy', 4)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (19, N'Nursing', 4)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (20, N'Biochemistry', 5)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (21, N'Library', 6)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (22, N' Archival & Information', 6)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (23, N'Studies (LARIS)', 6)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (24, N'Agriculture', 7)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (25, N'Animal Science', 7)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (26, N'Agric. Econs.', 7)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (27, N'Agronomy', 7)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (28, N'Crop Protection & Env.Biology', 7)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (29, N'Agric', 7)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (30, N'Forestry', 7)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (31, N'Wildlife & Fisheries', 7)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (32, N'Geography', 8)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (33, N'History', 8)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (34, N'Sociology', 8)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (35, N'Phylosophy', 8)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (36, N'Educational Administration', 10)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (37, N'Business Education', 10)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (38, N'Technical Vocational', 10)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (39, N'Clinical', 9)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (40, N'Medical Chemistry', 9)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (41, N'Pharmacy', 9)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId]) VALUES (43, N'Pharmacy -YK', 9)
INSERT [dbo].[Employee] ([EmployeeId], [FName], [LName], [ManagerId]) VALUES (1, N'Yoseph', N'Kassaye', 100)
INSERT [dbo].[Employee] ([EmployeeId], [FName], [LName], [ManagerId]) VALUES (2, N'Addis', N'Abebe', 2333)
INSERT [dbo].[Employee] ([EmployeeId], [FName], [LName], [ManagerId]) VALUES (3, N'Wosssen', N'TestLName', 2555)
INSERT [dbo].[Employee] ([EmployeeId], [FName], [LName], [ManagerId]) VALUES (4, N'Aster', N'TestLName', 5665)
INSERT [dbo].[Employee] ([EmployeeId], [FName], [LName], [ManagerId]) VALUES (5, N'Hirut', N'TetsLName', 5656)
INSERT [dbo].[Employee] ([EmployeeId], [FName], [LName], [ManagerId]) VALUES (6, N'Beza', N'TestLName', 565)
SET IDENTITY_INSERT [dbo].[Errorlog] ON 

INSERT [dbo].[Errorlog] ([Id], [ErrorNumber], [ErrorSeveri], [ErrorState], [ErrorLine], [ErrorMessage]) VALUES (1, N'8134', N'16', N'1', 7, N'Divide by zero error encountered.')
SET IDENTITY_INSERT [dbo].[Errorlog] OFF
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (1, N'Faculty of Technology')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (2, N'Faculty of Science')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (3, N'Faculty of Veterinary Medicine')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (4, N'Faculty of Clinical Science and Dentistry Yayobe')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (5, N'Faculty of Basic Medical Sciences')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (6, N'Faculty of Education')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (7, N'Faculty Agriculture & Forestry')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (8, N'Faculty of the Social Science')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (9, N'Faculty of Pharmacy')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (10, N'Education')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (11, N'Test FacultyId')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (12, N'YosephFaculty')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (13, N'Girum School')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (22, N'Technocal')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (23, N'Ethiopian Study')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (25, N'Eng')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (26, N'Test Faculty')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (27, N'Test Faculty')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (28, N'Ameha Faculty')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (29, N'test YKFaculty')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (30, N'Test Abrham Faculty')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (31, N'Test YKFaculty')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (32, N'Test YKFaculty')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (33, N'Test YKFaculty')
INSERT [dbo].[Faculty] ([FacultyId], [FacultyName]) VALUES (34, N'Test Faculty')
INSERT [dbo].[FacultyBackup] ([FacultyId], [FacultyName]) VALUES (1, N'Faculty of Technology')
INSERT [dbo].[FacultyBackup] ([FacultyId], [FacultyName]) VALUES (2, N'Faculty of Science')
INSERT [dbo].[FacultyBackup] ([FacultyId], [FacultyName]) VALUES (3, N'Faculty of Veterinary Medicine')
INSERT [dbo].[FacultyBackup] ([FacultyId], [FacultyName]) VALUES (4, N'Faculty of Clinical Science and Dentistry')
INSERT [dbo].[FacultyBackup] ([FacultyId], [FacultyName]) VALUES (5, N'Faculty of Basic Medical Sciences')
INSERT [dbo].[FacultyBackup] ([FacultyId], [FacultyName]) VALUES (6, N'Faculty of Education')
INSERT [dbo].[FacultyBackup] ([FacultyId], [FacultyName]) VALUES (7, N'Faculty Agriculture & Forestry')
INSERT [dbo].[FacultyBackup] ([FacultyId], [FacultyName]) VALUES (8, N'Faculty of the Social Science')
INSERT [dbo].[FacultyBackup] ([FacultyId], [FacultyName]) VALUES (9, N'Faculty of Pharmacy')
INSERT [dbo].[FacultyBackup] ([FacultyId], [FacultyName]) VALUES (10, N'Education')
INSERT [dbo].[FacultyBackup] ([FacultyId], [FacultyName]) VALUES (11, N'Test FacultyId')
INSERT [dbo].[FacultyBackup] ([FacultyId], [FacultyName]) VALUES (12, N'YosephFaculty')
INSERT [dbo].[FacultyBackup] ([FacultyId], [FacultyName]) VALUES (13, N'Girum School')
INSERT [dbo].[FacultyBackup] ([FacultyId], [FacultyName]) VALUES (22, N'Technocal')
INSERT [dbo].[FacultyBackup] ([FacultyId], [FacultyName]) VALUES (23, N'Ethiopian Study')
INSERT [dbo].[FacultyBackup] ([FacultyId], [FacultyName]) VALUES (25, N'Eng')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (3, N'Bekele', N'Paki', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1117')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (5, N'Ephrem', N'Steel', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1119')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (35, N'Desirae', N'Astra', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1149')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (36, N'Yoshi', N'Lani', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1150')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (64, N'Stuart', N'Olympia', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1178')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (66, N'Phelan', N'Charity', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1180')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (32, N'Clark', N'Kennan', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1145')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (33, N'Abebech', N'Josephine', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1146')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (62, N'Deacon', N'Buckminster', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1175')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (106, N'Abebe', N'Desta', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1219')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (107, N'Abebe', N'Ayele', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1220')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (108, N'Test1', N'Test2', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1221')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (32, N'Clark', N'Kennan', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1145')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (33, N'Abebech', N'Josephine', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1146')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (62, N'Deacon', N'Buckminster', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1175')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (106, N'Abebe', N'Desta', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1219')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (107, N'Abebe', N'Ayele', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1220')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (108, N'Test1', N'Test2', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1221')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (3, N'Bekele', N'Paki', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1117')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (5, N'Ephrem', N'Steel', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1119')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (35, N'Desirae', N'Astra', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1149')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (36, N'Yoshi', N'Lani', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1150')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (64, N'Stuart', N'Olympia', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1178')
INSERT [dbo].[FemaleandMalefromDept1and2] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (66, N'Phelan', N'Charity', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1180')
INSERT [dbo].[first10studentsGrade] ([StudentID], [Mark]) VALUES (1, 76)
INSERT [dbo].[first10studentsGrade] ([StudentID], [Mark]) VALUES (1, 78)
INSERT [dbo].[first10studentsGrade] ([StudentID], [Mark]) VALUES (1, 56)
INSERT [dbo].[first10studentsGrade] ([StudentID], [Mark]) VALUES (1, 56)
INSERT [dbo].[first10studentsGrade] ([StudentID], [Mark]) VALUES (1, 87)
INSERT [dbo].[first10studentsGrade] ([StudentID], [Mark]) VALUES (1, 80)
INSERT [dbo].[first10studentsGrade] ([StudentID], [Mark]) VALUES (1, 71)
INSERT [dbo].[first10studentsGrade] ([StudentID], [Mark]) VALUES (2, 61)
INSERT [dbo].[first10studentsGrade] ([StudentID], [Mark]) VALUES (2, 0)
INSERT [dbo].[first10studentsGrade] ([StudentID], [Mark]) VALUES (2, 0)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE101', 1, 1, 87)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE101', 6, 1, 66)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE101', 103, 1, 90)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE102', 1, 1, 56)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE102', 7, 1, 66)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE103', 1, 1, 56)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE103', 8, 2, 66)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE104', 1, 1, 78)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE104', 9, 2, 76)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE105', 1, 2, 76)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE105', 10, 2, 76)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE106', 1, 2, 80)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE106', 11, 3, 76)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE107', 1, 2, 71)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE107', 12, 3, 23)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE108', 2, 3, 61)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE108', 13, 1, 69)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE109', 2, 3, 14)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE109', 14, 1, 15)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE110', 2, 1, 16)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE110', 15, 1, 65)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE111', 2, 1, 81)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE111', 16, 1, 66)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE112', 2, 1, 89)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE112', 17, 2, 66)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE113', 3, 1, 83)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE113', 18, 2, 76)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE114', 3, 2, 86)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE114', 19, 2, 76)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE115', 3, 2, 89)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE115', 20, 2, 59)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE116', 3, 2, 100)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE116', 21, 3, 100)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE117', 4, 2, 100)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE117', 22, 3, 100)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE118', 4, 3, 78)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE118', 23, 3, 76)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE119', 4, 3, 69)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE119', 24, 2, 76)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE120', 5, 3, 76)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE120', 25, 2, 76)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE121', 5, 1, 56)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE121', 26, 2, 76)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE122', 5, 1, 56)
INSERT [dbo].[Grade] ([Cono], [StudentId], [SemesterId], [Mark]) VALUES (N'COURSE122', 27, 3, 66)
INSERT [dbo].[HighestEductionLevel] ([EducaionLevelID], [EducationLevel]) VALUES (1, N'Certificate')
INSERT [dbo].[HighestEductionLevel] ([EducaionLevelID], [EducationLevel]) VALUES (2, N'Diploma')
INSERT [dbo].[HighestEductionLevel] ([EducaionLevelID], [EducationLevel]) VALUES (3, N'BSc')
INSERT [dbo].[HighestEductionLevel] ([EducaionLevelID], [EducationLevel]) VALUES (4, N'MSc')
INSERT [dbo].[HighestEductionLevel] ([EducaionLevelID], [EducationLevel]) VALUES (5, N'PhD')
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (1, N'Halla', N'Sonia', N'M', 1, 1, CAST(N'1970-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (2, N'Keely', N'Leigh', N'F', 1, 2, CAST(N'1971-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (3, N'Brett', N'Paki', N'M', 1, 3, CAST(N'1972-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (4, N'Dale', N'Regan', N'F', 2, 4, CAST(N'1973-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (5, N'Jena', N'Steel', N'M', 2, 5, CAST(N'1974-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (6, N'Brent', N'Lacey', N'F', 2, 1, CAST(N'1975-01-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (7, N'Gray', N'Jennifer', N'M', 3, 2, CAST(N'1976-01-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (8, N'Alec', N'Isabella', N'M', 3, 3, CAST(N'1977-01-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (9, N'Roth', N'Ila', N'F', 3, 4, CAST(N'1978-01-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (10, N'Hiroko', N'Inga', N'M', 4, 5, CAST(N'1979-01-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (11, N'Miranda', N'Flynn', N'F', 4, 1, CAST(N'1980-01-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (12, N'Orla', N'Oren', N'M', 4, 2, CAST(N'1981-01-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (13, N'Tara', N'Quynn', N'F', 5, 3, CAST(N'1982-01-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (14, N'Regan', N'Maile', N'M', 5, 4, CAST(N'1983-01-01T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (15, N'Elton', N'Armand', N'M', 6, 5, CAST(N'1984-01-01T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (16, N'Kennan', N'Kirestin', N'F', 7, 1, CAST(N'1985-01-01T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (17, N'Martha', N'Lila', N'M', 8, 2, CAST(N'1986-01-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (18, N'Omar', N'Vance', N'F', 9, 3, CAST(N'1987-01-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (19, N'Zachery', N'Wyatt', N'M', 10, 4, CAST(N'1988-01-01T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (20, N'Zia', N'Vincent', N'F', 11, 5, CAST(N'1989-01-01T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (21, N'Salvador', N'Merritt', N'M', 12, 1, CAST(N'1990-01-01T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (22, N'Nadine', N'Harper', N'M', 13, 2, CAST(N'1991-01-01T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (23, N'Pamela', N'Driscoll', N'F', 3, 3, CAST(N'1992-01-01T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (24, N'Boris', N'Kadeem', N'M', 4, 4, CAST(N'1993-01-01T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (25, N'Damon', N'Peter', N'F', 5, 5, CAST(N'1994-01-01T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (26, N'Shana', N'Kalia', N'M', 6, 1, CAST(N'1995-01-01T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (27, N'Hedy', N'Cruz', N'F', 35, 2, CAST(N'1996-01-01T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (28, N'Wallace', N'Tad', N'M', 35, 3, CAST(N'1997-01-01T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (29, N'Wallace', N'Brittany', N'M', 12, 4, CAST(N'1998-01-01T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (30, N'Constance', N'Igor', N'F', 12, 5, CAST(N'1999-01-01T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (31, N'Solomon', N'Athena', N'M', 1, 1, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (32, N'Clark', N'Kennan', N'F', 1, 2, CAST(N'2001-01-01T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (33, N'Donna', N'Josephine', N'M', 1, 3, CAST(N'2002-01-01T00:00:00.000' AS DateTime), 11)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (34, N'Wylie', N'Hedwig', N'F', 2, 4, CAST(N'2003-01-01T00:00:00.000' AS DateTime), 13)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (35, N'Desirae', N'Astra', N'M', 2, 5, CAST(N'2004-01-01T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (36, N'Yoshi', N'Lani', N'M', 2, 1, CAST(N'2005-01-01T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (37, N'Sigourney', N'Jessamine', N'F', 3, 2, CAST(N'2006-01-01T00:00:00.000' AS DateTime), 16)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (38, N'Sara', N'Carson', N'M', 3, 3, CAST(N'2007-01-01T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (39, N'Nyssa', N'Oliver', N'F', 3, 4, CAST(N'2008-01-01T00:00:00.000' AS DateTime), 19)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (40, N'Francesca', N'Sopoline', N'M', 4, 5, CAST(N'2009-01-01T00:00:00.000' AS DateTime), 20)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (41, N'Autumn', N'Remedios', N'F', 4, 1, CAST(N'2010-01-01T00:00:00.000' AS DateTime), 25)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (42, N'Amity', N'Destiny', N'M', 4, 2, CAST(N'2011-01-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (43, N'Tanner', N'Rahim', N'M', 5, 3, CAST(N'1970-01-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (44, N'Cyrus', N'Berk', N'F', 5, 4, CAST(N'1971-01-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (45, N'Cooper', N'Christopher', N'M', 6, 5, CAST(N'1972-01-01T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (46, N'Marah', N'Raya', N'F', 7, 1, CAST(N'1973-01-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (47, N'Kelly', N'Sebastian', N'M', 8, 2, CAST(N'1974-01-01T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (48, N'Mechelle', N'Valentine', N'F', 9, 3, CAST(N'1975-01-01T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (49, N'Denise', N'Ray', N'M', 10, 4, CAST(N'1976-01-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (50, N'Ivan', N'Marcia', N'M', 11, 5, CAST(N'1977-01-01T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (51, N'Olga', N'Selma', N'F', 12, 1, CAST(N'1978-01-01T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (52, N'Imani', N'Tarik', N'M', 13, 2, CAST(N'1979-01-01T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (53, N'Quon', N'Rana', N'F', 3, 3, CAST(N'1980-01-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (54, N'Berk', N'Rana', N'M', 4, 4, CAST(N'1981-01-01T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (55, N'Ferdinand', N'Kyra', N'F', 5, 5, CAST(N'1982-01-01T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (56, N'Tatiana', N'Iliana', N'M', 6, 1, CAST(N'1983-01-01T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (57, N'Amanda', N'Phyllis', N'M', 35, 2, CAST(N'1984-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (58, N'Mohammad', N'Hamish', N'F', 35, 3, CAST(N'1985-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (59, N'Dorian', N'Alexis', N'M', 12, 4, CAST(N'1986-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (60, N'Rama', N'Chaim', N'F', 12, 5, CAST(N'1987-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (61, N'Velma', N'Otto', N'M', 1, 1, CAST(N'1988-01-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (62, N'Deacon', N'Buckminster', N'F', 1, 2, CAST(N'1989-01-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (63, N'Jacqueline', N'Myles', N'M', 1, 3, CAST(N'1990-01-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (64, N'Stuart', N'Olympia', N'M', 2, 4, CAST(N'1991-01-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (65, N'Sheila', N'Astra', N'F', 2, 5, CAST(N'1992-01-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (66, N'Phelan', N'Charity', N'M', 2, 1, CAST(N'1993-01-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (67, N'Dale', N'Fiona', N'F', 3, 2, CAST(N'1994-01-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (68, N'Kessie', N'Connor', N'M', 3, 3, CAST(N'1995-01-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (69, N'Talon', N'Odysseus', N'F', 3, 4, CAST(N'1996-01-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (70, N'Sade', N'Jason', N'M', 4, 5, CAST(N'1997-01-01T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (71, N'Aiko', N'Burke', N'M', 4, 1, CAST(N'1998-01-01T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (72, N'Isaiah', N'Yetta', N'F', 4, 2, CAST(N'1999-01-01T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (73, N'Darryl', N'Tiger', N'M', 5, 3, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (74, N'Astra', N'Grant', N'F', 5, 4, CAST(N'2001-01-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (75, N'Quin', N'Aaron', N'M', 6, 5, CAST(N'2002-01-01T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (76, N'Taylor', N'Zeus', N'F', 7, 1, CAST(N'2003-01-01T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (77, N'Merritt', N'Aiko', N'M', 8, 2, CAST(N'2004-01-01T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (78, N'Denise', N'Kirk', N'M', 9, 3, CAST(N'2005-01-01T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (79, N'Eden', N'Amal', N'F', 10, 4, CAST(N'2006-01-01T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (80, N'Grant', N'Graiden', N'M', 11, 5, CAST(N'2007-01-01T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (81, N'Stephanie', N'Gloria', N'F', 12, 1, CAST(N'2008-01-01T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (82, N'Nell', N'Kimberly', N'M', 13, 2, CAST(N'2009-01-01T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (83, N'Colby', N'Norman', N'F', 3, 3, CAST(N'2010-01-01T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (84, N'Ivor', N'Iliana', N'M', 4, 4, CAST(N'2011-01-01T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (85, N'Evan', N'Stewart', N'M', 5, 5, CAST(N'1970-01-01T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (86, N'Lewis', N'Daphne', N'F', 6, 1, CAST(N'1971-01-01T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (87, N'Rooney', N'Conan', N'M', 35, 2, CAST(N'1972-01-01T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (88, N'Martena', N'Aristotle', N'F', 35, 3, CAST(N'1973-01-01T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (89, N'Xena', N'Alvin', N'M', 12, 4, CAST(N'1974-01-01T00:00:00.000' AS DateTime), 11)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (90, N'Melodie', N'Scarlett', N'F', 12, 5, CAST(N'1975-01-01T00:00:00.000' AS DateTime), 13)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (91, N'Ginger', N'Shaine', N'M', 17, 1, CAST(N'1976-01-01T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (92, N'Stacey', N'Chaney', N'M', 18, 2, CAST(N'1977-01-01T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (93, N'Dante', N'Phoebe', N'F', 18, 3, CAST(N'1978-01-01T00:00:00.000' AS DateTime), 16)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (94, N'Lamar', N'Chastity', N'M', 19, 4, CAST(N'1979-01-01T00:00:00.000' AS DateTime), 15)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (95, N'Alexis', N'Michael', N'F', 19, 5, CAST(N'1980-01-01T00:00:00.000' AS DateTime), 19)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (96, N'Ivana', N'Damon', N'M', 20, 1, CAST(N'1981-01-01T00:00:00.000' AS DateTime), 20)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (97, N'Callie', N'Macon', N'F', 21, 2, CAST(N'1982-01-01T00:00:00.000' AS DateTime), 25)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (98, N'Amanda', N'Jorden', N'M', 21, 3, CAST(N'1983-01-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (99, N'Kamal', N'Fiona', N'M', 22, 4, CAST(N'1984-01-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Instructor] ([InstructorId], [FName], [LName], [Gender], [DepartmentId], [EducationLevelId], [DOB], [Reportto]) VALUES (100, N'Ciara', N'Axel', N'F', 23, 5, CAST(N'1985-01-01T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE101', 1, 1, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE101', 6, 1, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE102', 1, 1, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE102', 7, 1, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE103', 1, 1, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE103', 8, 2, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE104', 1, 1, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE104', 9, 2, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE105', 1, 2, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE105', 10, 2, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE106', 1, 2, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE106', 11, 3, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE107', 1, 2, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE107', 12, 3, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE108', 2, 3, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE108', 13, 1, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE109', 2, 3, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE109', 14, 1, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE110', 2, 1, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE110', 15, 1, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE111', 2, 1, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE111', 16, 1, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE112', 2, 1, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE112', 17, 2, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE113', 3, 1, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE113', 18, 2, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE114', 3, 2, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE114', 19, 2, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE115', 3, 2, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE115', 20, 2, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE116', 3, 2, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE116', 21, 3, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE117', 4, 2, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE117', 22, 3, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE118', 4, 3, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE118', 23, 3, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE119', 4, 3, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE119', 24, 2, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE120', 5, 3, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE120', 25, 2, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE121', 5, 1, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE121', 26, 2, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE122', 5, 1, NULL)
INSERT [dbo].[InstructorCourse] ([Cono], [InstructorId], [SemesterId], [Description]) VALUES (N'COURSE122', 27, 3, NULL)
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [ProductCode], [Quantity], [UnitPrice]) VALUES (202003, CAST(N'2020-10-04' AS Date), N'PD0001', CAST(1.00 AS Numeric(9, 2)), CAST(10.50 AS Numeric(9, 2)))
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [ProductCode], [Quantity], [UnitPrice]) VALUES (202003, CAST(N'2020-10-04' AS Date), N'PD0002', CAST(2.00 AS Numeric(9, 2)), CAST(100.75 AS Numeric(9, 2)))
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [ProductCode], [Quantity], [UnitPrice]) VALUES (202003, CAST(N'2020-10-04' AS Date), N'PD0010', CAST(1.50 AS Numeric(9, 2)), CAST(20.00 AS Numeric(9, 2)))
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (1, N'Aster', N'Bekele', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 14, N'F', NULL, N'1127')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (2, N'Keely', N'Leigh', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 14, N'F', NULL, N'1128')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (3, N'Bekele', N'Paki', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1117')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (4, N'Asnakech', N'Regan', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 2, N'F', NULL, N'1118')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (5, N'Ephrem', N'Steel', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1119')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (6, N'Feven', N'Lacey', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 2, N'F', NULL, N'1120')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (7, N'TSeganesh', N'Jennifer', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1122')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (8, N'Tsegaw', N'Isabella', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 3, N'M', NULL, N'1123')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (9, N'Yabsera', N'Ila', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1124')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (10, N'Hiroko', N'Inga', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1126')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (11, N'Miranda', N'Flynn', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 4, N'F', NULL, N'1127')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (12, N'Orla', N'Oren', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1128')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (13, N'Tara', N'Quynn', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1130')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (14, N'Regan', N'Maile', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 5, N'M', NULL, N'1131')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (15, N'Elton', N'Armand', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1133')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (16, N'Asnakech', N'Kirestin', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 7, N'F', NULL, N'1135')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (17, N'Martha', N'Lila', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 8, N'M', NULL, N'1137')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (18, N'Omar', N'Vance', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 9, N'F', NULL, N'1139')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (19, N'Zachery', N'Wyatt', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 10, N'M', NULL, N'1141')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (20, N'Zia', N'Vincent', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 11, N'F', NULL, N'1143')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (21, N'Salvador', N'Merritt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 12, N'M', NULL, N'1145')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (22, N'Nadine', N'Harper', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 13, N'M', NULL, N'1147')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (23, N'Pamela', N'Driscoll', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1138')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (24, N'Boris', N'Kadeem', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1140')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (25, N'Asnakech', N'Peter', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1142')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (26, N'Shana', N'Kalia', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1144')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (27, N'Hedy', N'Cruz', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 35, N'F', NULL, N'1174')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (28, N'Wallace', N'Tad', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 35, N'M', NULL, N'1175')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (29, N'Wallace', N'Brittany', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 12, N'M', NULL, N'1153')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (30, N'Constance', N'Igor', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1154')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (31, N'Solomon', N'Athena', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1144')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (32, N'Clark', N'Kennan', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'F', NULL, N'1145')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (33, N'Abebech', N'Josephine', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 1, N'F', NULL, N'1146')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (34, N'Wylie', N'Hedwig', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 2, N'F', NULL, N'1148')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (35, N'Desirae', N'Astra', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1149')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (36, N'Yoshi', N'Lani', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1150')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (37, N'Sigourney', N'Jessamine', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1152')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (38, N'Sara', N'Carson', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 3, N'M', NULL, N'1153')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (39, N'Nyssa', N'Oliver', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1154')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (40, N'Francesca', N'Sopoline', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1156')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (41, N'Autumn', N'Remedios', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 4, N'F', NULL, N'1157')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (42, N'Amity', N'Destiny', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1158')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (43, N'Tanner', N'Rahim', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', NULL, N'1160')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (44, N'Cyrus', N'Berk', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1161')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (45, N'Cooper', N'Christopher', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1163')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (46, N'Marah', N'Raya', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 7, N'F', NULL, N'1165')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (47, N'Kelly', N'Sebastian', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 8, N'M', NULL, N'1167')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (48, N'Mechelle', N'Valentine', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 9, N'F', NULL, N'1169')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (49, N'Denise', N'Ray', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 10, N'M', NULL, N'1171')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (50, N'Ivan', N'Marcia', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 11, N'M', NULL, N'1173')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (51, N'Olga', N'Selma', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1175')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (52, N'Imani', N'Tarik', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 13, N'M', NULL, N'1177')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (53, N'Quon', N'Rana', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1168')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (54, N'Berk', N'Rana', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1170')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (55, N'Ferdinand', N'Kyra', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1172')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (56, N'Tatiana', N'Iliana', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1174')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (57, N'Amanda', N'Phyllis', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 35, N'M', NULL, N'1204')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (58, N'Mohammad', N'Hamish', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 35, N'F', NULL, N'1205')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (59, N'Dorian', N'Alexis', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 12, N'M', NULL, N'1183')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (60, N'Rama', N'Chaim', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1184')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (61, N'Velma', N'Otto', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1174')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (62, N'Deacon', N'Buckminster', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 1, N'F', NULL, N'1175')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (63, N'Jacqueline', N'Myles', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1176')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (64, N'Stuart', N'Olympia', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1178')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (65, N'Sheila', N'Astra', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 2, N'F', NULL, N'1179')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (66, N'Phelan', N'Charity', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1180')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (67, N'Dale', N'Fiona', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1182')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (68, N'Kessie', N'Connor', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 3, N'M', NULL, N'1183')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (69, N'Talon', N'Odysseus', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1184')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (70, N'Sade', N'Jason', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1186')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (71, N'Yoseph', N'Burke', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1187')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (72, N'Isaiah', N'Yetta', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 4, N'F', NULL, N'1188')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (73, N'Darryl', N'Tiger', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 5, N'M', NULL, N'1190')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (74, N'Astra', N'Grant', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1191')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (75, N'Quin', N'Aaron', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1193')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (76, N'Taylor', N'Zeus', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 7, N'F', NULL, N'1195')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (77, N'Merritt', N'Aiko', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 8, N'M', NULL, N'1197')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (78, N'Denise', N'Kirk', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 9, N'M', NULL, N'1199')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (79, N'Eden', N'Amal', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 10, N'F', NULL, N'1201')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (80, N'Grant', N'Graiden', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 11, N'M', NULL, N'1203')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (81, N'Stephanie', N'Gloria', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1205')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (82, N'Nell', N'Kimberly', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 13, N'M', NULL, N'1207')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (83, N'Colby', N'Norman', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1198')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (84, N'Ivor', N'Iliana', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1200')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (85, N'Evan', N'Stewart', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', NULL, N'1202')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (86, N'Lewis', N'Daphne', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 6, N'F', NULL, N'1204')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (87, N'Rooney', N'Conan', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 35, N'M', NULL, N'1234')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (88, N'Martena', N'Aristotle', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 35, N'F', NULL, N'1235')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (89, N'Xena', N'Alvin', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 12, N'M', NULL, N'1213')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (90, N'Melodie', N'Scarlett', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1214')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (91, N'Ginger', N'Shaine', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 17, N'M', NULL, N'1220')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (92, N'Stacey', N'Chaney', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 18, N'M', NULL, N'1222')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (93, N'Dante', N'Phoebe', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 18, N'F', NULL, N'1223')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (94, N'Lamar', N'Chastity', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 19, N'M', NULL, N'1225')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (95, N'Alexis', N'Michael', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 19, N'F', NULL, N'1226')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (96, N'Ivana', N'Damon', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 20, N'M', NULL, N'1228')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (97, N'Callie', N'Macon', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 21, N'F', NULL, N'1230')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (98, N'Amanda', N'Jorden', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 21, N'M', NULL, N'1231')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (99, N'Kamal', N'Fiona', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 22, N'M', NULL, N'1233')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (100, N'Ciara', N'Axel', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 23, N'F', NULL, N'1235')
GO
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (101, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1214')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (102, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1215')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (103, N'Abebe', N'Cherinet', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', NULL, N'1216')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (104, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', NULL, N'1217')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (105, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', NULL, N'1218')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (106, N'Abebe', N'Desta', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', NULL, N'1219')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (107, N'Abebe', N'Ayele', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', NULL, N'1220')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (108, N'Test1', N'Test2', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', NULL, N'1221')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (109, N'Test3', N'TestLName', CAST(N'2020-09-09T17:35:30.327' AS DateTime), 1, N'M', N'test@test.com', N'1222')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (110, N'Test3', N'TestLName', CAST(N'2020-09-09T17:36:37.180' AS DateTime), 1, N'M', N'test@test.com', N'1223')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (111, N'Test4', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1224')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (112, N'Test5', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1225')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (113, N'Test6', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1226')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (114, N'Test7', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1227')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (115, N'Test8', N'TestLName', CAST(N'2020-09-09T17:41:13.573' AS DateTime), 1, N'M', N'test@test.com', N'1228')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (116, N'Yoseph', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1229')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (117, N'Hadas', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1230')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (300, N'Abenet', N'Bekele', NULL, 1, N'M', NULL, N'1413')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (301, N'Abrham', N'Gebeyehu', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (302, N'Abebe', N'Desta', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (303, N'Abebe', N'Desta', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (304, N'Abebe', N'Desta', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (305, N'Abebe', N'Desta', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (1, N'Aster', N'Bekele', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 14, N'F', NULL, N'1127')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (2, N'Keely', N'Leigh', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 14, N'F', NULL, N'1128')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (3, N'Bekele', N'Paki', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1117')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (4, N'Asnakech', N'Regan', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 2, N'F', NULL, N'1118')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (5, N'Ephrem', N'Steel', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1119')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (6, N'Feven', N'Lacey', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 2, N'F', NULL, N'1120')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (7, N'TSeganesh', N'Jennifer', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1122')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (8, N'Tsegaw', N'Isabella', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 3, N'M', NULL, N'1123')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (9, N'Yabsera', N'Ila', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1124')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (10, N'Hiroko', N'Inga', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1126')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (11, N'Miranda', N'Flynn', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 4, N'F', NULL, N'1127')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (12, N'Orla', N'Oren', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1128')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (13, N'Tara', N'Quynn', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1130')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (14, N'Regan', N'Maile', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 5, N'M', NULL, N'1131')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (15, N'Elton', N'Armand', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1133')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (16, N'Asnakech', N'Kirestin', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 7, N'F', NULL, N'1135')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (17, N'Martha', N'Lila', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 8, N'M', NULL, N'1137')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (18, N'Omar', N'Vance', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 9, N'F', NULL, N'1139')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (19, N'Zachery', N'Wyatt', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 10, N'M', NULL, N'1141')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (20, N'Zia', N'Vincent', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 11, N'F', NULL, N'1143')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (21, N'Salvador', N'Merritt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 12, N'M', NULL, N'1145')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (22, N'Nadine', N'Harper', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 13, N'M', NULL, N'1147')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (23, N'Pamela', N'Driscoll', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1138')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (24, N'Boris', N'Kadeem', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1140')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (25, N'Asnakech', N'Peter', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1142')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (26, N'Shana', N'Kalia', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1144')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (27, N'Hedy', N'Cruz', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 35, N'F', NULL, N'1174')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (28, N'Wallace', N'Tad', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 35, N'M', NULL, N'1175')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (29, N'Wallace', N'Brittany', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 12, N'M', NULL, N'1153')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (30, N'Constance', N'Igor', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1154')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (31, N'Solomon', N'Athena', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1144')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (32, N'Clark', N'Kennan', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'F', NULL, N'1145')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (33, N'Abebech', N'Josephine', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 1, N'F', NULL, N'1146')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (34, N'Wylie', N'Hedwig', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 2, N'F', NULL, N'1148')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (35, N'Desirae', N'Astra', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1149')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (36, N'Yoshi', N'Lani', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1150')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (37, N'Sigourney', N'Jessamine', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1152')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (38, N'Sara', N'Carson', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 3, N'M', NULL, N'1153')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (39, N'Nyssa', N'Oliver', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1154')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (40, N'Francesca', N'Sopoline', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1156')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (41, N'Autumn', N'Remedios', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 4, N'F', NULL, N'1157')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (42, N'Amity', N'Destiny', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1158')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (43, N'Tanner', N'Rahim', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', NULL, N'1160')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (44, N'Cyrus', N'Berk', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1161')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (45, N'Cooper', N'Christopher', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1163')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (46, N'Marah', N'Raya', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 7, N'F', NULL, N'1165')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (47, N'Kelly', N'Sebastian', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 8, N'M', NULL, N'1167')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (48, N'Mechelle', N'Valentine', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 9, N'F', NULL, N'1169')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (49, N'Denise', N'Ray', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 10, N'M', NULL, N'1171')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (50, N'Ivan', N'Marcia', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 11, N'M', NULL, N'1173')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (51, N'Olga', N'Selma', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1175')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (52, N'Imani', N'Tarik', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 13, N'M', NULL, N'1177')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (53, N'Quon', N'Rana', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1168')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (54, N'Berk', N'Rana', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1170')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (55, N'Ferdinand', N'Kyra', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1172')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (56, N'Tatiana', N'Iliana', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1174')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (57, N'Amanda', N'Phyllis', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 35, N'M', NULL, N'1204')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (58, N'Mohammad', N'Hamish', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 35, N'F', NULL, N'1205')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (59, N'Dorian', N'Alexis', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 12, N'M', NULL, N'1183')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (60, N'Rama', N'Chaim', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1184')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (61, N'Velma', N'Otto', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1174')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (62, N'Deacon', N'Buckminster', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 1, N'F', NULL, N'1175')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (63, N'Jacqueline', N'Myles', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1176')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (64, N'Stuart', N'Olympia', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1178')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (65, N'Sheila', N'Astra', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 2, N'F', NULL, N'1179')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (66, N'Phelan', N'Charity', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1180')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (67, N'Dale', N'Fiona', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1182')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (68, N'Kessie', N'Connor', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 3, N'M', NULL, N'1183')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (69, N'Talon', N'Odysseus', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1184')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (70, N'Sade', N'Jason', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1186')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (71, N'Yoseph', N'Burke', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1187')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (72, N'Isaiah', N'Yetta', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 4, N'F', NULL, N'1188')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (73, N'Darryl', N'Tiger', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 5, N'M', NULL, N'1190')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (74, N'Astra', N'Grant', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1191')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (75, N'Quin', N'Aaron', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1193')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (76, N'Taylor', N'Zeus', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 7, N'F', NULL, N'1195')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (77, N'Merritt', N'Aiko', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 8, N'M', NULL, N'1197')
GO
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (78, N'Denise', N'Kirk', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 9, N'M', NULL, N'1199')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (79, N'Eden', N'Amal', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 10, N'F', NULL, N'1201')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (80, N'Grant', N'Graiden', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 11, N'M', NULL, N'1203')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (81, N'Stephanie', N'Gloria', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1205')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (82, N'Nell', N'Kimberly', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 13, N'M', NULL, N'1207')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (83, N'Colby', N'Norman', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1198')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (84, N'Ivor', N'Iliana', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1200')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (85, N'Evan', N'Stewart', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', NULL, N'1202')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (86, N'Lewis', N'Daphne', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 6, N'F', NULL, N'1204')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (87, N'Rooney', N'Conan', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 35, N'M', NULL, N'1234')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (88, N'Martena', N'Aristotle', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 35, N'F', NULL, N'1235')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (89, N'Xena', N'Alvin', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 12, N'M', NULL, N'1213')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (90, N'Melodie', N'Scarlett', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1214')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (91, N'Ginger', N'Shaine', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 17, N'M', NULL, N'1220')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (92, N'Stacey', N'Chaney', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 18, N'M', NULL, N'1222')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (93, N'Dante', N'Phoebe', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 18, N'F', NULL, N'1223')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (94, N'Lamar', N'Chastity', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 19, N'M', NULL, N'1225')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (95, N'Alexis', N'Michael', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 19, N'F', NULL, N'1226')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (96, N'Ivana', N'Damon', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 20, N'M', NULL, N'1228')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (97, N'Callie', N'Macon', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 21, N'F', NULL, N'1230')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (98, N'Amanda', N'Jorden', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 21, N'M', NULL, N'1231')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (99, N'Kamal', N'Fiona', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 22, N'M', NULL, N'1233')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (100, N'Ciara', N'Axel', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 23, N'F', NULL, N'1235')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (101, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1214')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (102, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1215')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (103, N'Abebe', N'Cherinet', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', NULL, N'1216')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (104, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', NULL, N'1217')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (105, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', NULL, N'1218')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (106, N'Abebe', N'Desta', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', NULL, N'1219')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (107, N'Abebe', N'Ayele', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', NULL, N'1220')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (108, N'Test1', N'Test2', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', NULL, N'1221')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (109, N'Test3', N'TestLName', CAST(N'2020-09-09T17:35:30.327' AS DateTime), 1, N'M', N'test@test.com', N'1222')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (110, N'Test3', N'TestLName', CAST(N'2020-09-09T17:36:37.180' AS DateTime), 1, N'M', N'test@test.com', N'1223')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (111, N'Test4', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1224')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (112, N'Test5', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1225')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (113, N'Test6', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1226')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (114, N'Test7', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1227')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (115, N'Test8', N'TestLName', CAST(N'2020-09-09T17:41:13.573' AS DateTime), 1, N'M', N'test@test.com', N'1228')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (116, N'Yoseph', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1229')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (117, N'Hadas', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1230')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (300, N'Abenet', N'Bekele', NULL, 1, N'M', NULL, N'1413')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (301, N'Abrham', N'Gebeyehu', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (302, N'Abebe', N'Desta', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (303, N'Abebe', N'Desta', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (304, N'Abebe', N'Desta', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[SampleDatafromTwoTables] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (305, N'Abebe', N'Desta', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[Semester] ([SemesterId], [SemesterName], [Year]) VALUES (1, N'First Semester', 2019)
INSERT [dbo].[Semester] ([SemesterId], [SemesterName], [Year]) VALUES (2, N'Second Semester', 2019)
INSERT [dbo].[Semester] ([SemesterId], [SemesterName], [Year]) VALUES (3, N'Third Semester', 2019)
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (1, N'          Halla', N'Bekele', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 14, N'M', N'', N'1127')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (2, N'Keely', N'Leigh', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 14, N'F', N'', N'1128')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (3, N'    Bekele', N'Paki', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1117')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (4, N'Asnakech', N'Regan', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1118')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (5, N'Ephrem', N'Steel', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1119')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (6, N'Feven', N'Lacey', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1120')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (7, N'TSeganesh', N'Jennifer', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1122')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (8, N'Tsegaw', N'Isabella', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1123')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (9, N'Yabsera', N'Ila', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1124')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (10, N'Hiroko', N'Inga', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1126')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (11, N'Miranda', N'Flynn', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1127')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (12, N'Orla', N'Oren', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1128')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (13, N'Tara', N'Quynn', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1130')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (14, N'Regan', N'Maile', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1131')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (15, N'Elton', N'Armand', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1133')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (16, N'Asnakech', N'Kirestin', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1135')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (17, N'Martha', N'Lila', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1137')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (18, N'Omar', N'Vance', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 9, N'F', N'', N'1139')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (19, N'Zachery', N'Wyatt', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 10, N'M', N'', N'1141')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (20, N'Zia', N'Vincent', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 11, N'F', N'', N'1143')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (21, N'Salvador', N'Merritt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1145')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (22, N'Nadine', N'Harper', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1147')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (23, N'Pamela', N'Driscoll', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1138')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (24, N'Boris', N'Kadeem', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1140')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (25, N'Asnakech', N'Peter', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1142')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (26, N'Shana', N'Kalia', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1144')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (27, N'Hedy', N'Cruz', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1174')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (28, N'Wallace', N'Tad', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1175')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (29, N'Wallace', N'Brittany', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1153')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (30, N'Constance', N'Igor', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1154')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (31, N'Solomon', N'Athena', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1144')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (32, N'Clark', N'Kennan', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1145')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (33, N'Abebech', N'Josephine', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1146')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (34, N'Wylie', N'Hedwig', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1148')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (35, N'Desirae', N'Astra', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1149')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (36, N'Yoshi', N'Lani', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1150')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (37, N'Sigourney', N'Jessamine', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1152')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (38, N'Sara', N'Carson', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1153')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (39, N'Nyssa', N'Oliver', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1154')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (40, N'Francesca', N'Sopoline', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1156')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (41, N'Autumn', N'Remedios', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1157')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (42, N'Amity', N'Destiny', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1158')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (43, N'Tanner', N'Rahim', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1160')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (44, N'Cyrus', N'Berk', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1161')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (45, N'Cooper', N'Christopher', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1163')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (46, N'Marah', N'Raya', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1165')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (47, N'Kelly', N'Sebastian', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1167')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (48, N'Mechelle', N'Valentine', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 9, N'F', N'', N'1169')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (49, N'Denise', N'Ray', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 10, N'M', N'', N'1171')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (50, N'Ivan', N'Marcia', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 11, N'M', N'', N'1173')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (51, N'Olga', N'Selma', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1175')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (52, N'Imani', N'Tarik', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1177')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (53, N'Quon', N'Rana', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1168')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (54, N'Berk', N'Rana', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1170')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (55, N'Ferdinand', N'Kyra', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1172')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (56, N'Tatiana', N'Iliana', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1174')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (57, N'Amanda', N'Phyllis', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1204')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (58, N'Mohammad', N'Hamish', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1205')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (59, N'Dorian', N'Alexis', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1183')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (60, N'Rama', N'Chaim', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1184')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (61, N'Velma', N'Otto', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1174')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (62, N'Deacon', N'Buckminster', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1175')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (63, N'Jacqueline', N'Myles', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1176')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (64, N'Stuart', N'Olympia', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1178')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (65, N'Sheila', N'Astra', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1179')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (66, N'Phelan', N'Charity', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1180')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (67, N'Dale', N'Fiona', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1182')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (68, N'Kessie', N'Connor', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1183')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (69, N'Talon', N'Odysseus', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1184')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (70, N'Sade', N'Jason', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1186')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (71, N'Yoseph', N'Burke', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1187')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (72, N'Isaiah', N'Yetta', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1188')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (73, N'Darryl', N'Tiger', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1190')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (74, N'Astra', N'Grant', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1191')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (75, N'Quin', N'Aaron', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1193')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (76, N'Taylor', N'Zeus', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1195')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (77, N'Merritt', N'Aiko', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1197')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (78, N'Denise', N'Kirk', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 9, N'M', N'', N'1199')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (79, N'Eden', N'Amal', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 10, N'F', N'', N'1201')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (80, N'Grant', N'Graiden', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 11, N'M', N'', N'1203')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (81, N'Stephanie', N'Gloria', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1205')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (82, N'Nell', N'Kimberly', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1207')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (83, N'Colby', N'Norman', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1198')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (84, N'Ivor', N'Iliana', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1200')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (85, N'Evan', N'Stewart', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1202')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (86, N'Lewis', N'Daphne', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 6, N'F', N'', N'1204')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (87, N'Rooney', N'Conan', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1234')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (88, N'Martena', N'Aristotle', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1235')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (89, N'Xena', N'Alvin', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1213')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (90, N'Melodie', N'Scarlett', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1214')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (91, N'Ginger', N'Shaine', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 17, N'M', N'', N'1220')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (92, N'Stacey', N'Chaney', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 18, N'M', N'', N'1222')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (93, N'Dante', N'Phoebe', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 18, N'F', N'', N'1223')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (94, N'Lamar', N'Chastity', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 19, N'M', N'', N'1225')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (95, N'Alexis', N'Michael', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 19, N'F', N'', N'1226')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (96, N'Ivana', N'Damon', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 20, N'M', N'', N'1228')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (97, N'Callie', N'Macon', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 21, N'F', N'', N'1230')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (98, N'Amanda', N'Jorden', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 21, N'M', N'', N'1231')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (99, N'Kamal', N'Fiona', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 22, N'M', N'', N'1233')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (100, N'Ciara', N'Axel', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 23, N'F', N'', N'1235')
GO
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (101, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', N'', N'1214')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (102, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', N'', N'1215')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (103, N'Abebe', N'Cherinet', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1216')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (104, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1217')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (105, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1218')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (106, N'Abebe', N'Desta', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1219')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (107, N'Abebe', N'Ayele', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1220')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (108, N'Test1', N'Test2', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1221')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (109, N'Test3', N'TestLName', CAST(N'2020-09-09T17:35:30.327' AS DateTime), 1, N'M', N'test@test.com', N'1222')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (110, N'Test3', N'TestLName', CAST(N'2020-09-09T17:36:37.180' AS DateTime), 1, N'M', N'test@test.com', N'1223')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (111, N'Test4', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1224')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (112, N'Test5', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1225')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (113, N'Test6', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1226')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (114, N'Test7', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1227')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (115, N'Test8', N'TestLName', CAST(N'2020-09-09T17:41:13.573' AS DateTime), 1, N'M', N'test@test.com', N'1228')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (116, N'Yoseph', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1229')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (117, N'Hadas', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1230')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (300, N'Abenet', N'Bekele', CAST(N'1753-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1413')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (1, N'          Halla', N'Bekele', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 14, N'M', N'', N'1127')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (2, N'Keely', N'Leigh', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 14, N'F', N'', N'1128')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (3, N'    Bekele', N'Paki', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1117')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (4, N'Asnakech', N'Regan', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1118')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (5, N'Ephrem', N'Steel', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1119')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (6, N'Feven', N'Lacey', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1120')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (7, N'TSeganesh', N'Jennifer', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1122')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (8, N'Tsegaw', N'Isabella', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1123')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (9, N'Yabsera', N'Ila', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1124')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (10, N'Hiroko', N'Inga', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1126')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (11, N'Miranda', N'Flynn', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1127')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (12, N'Orla', N'Oren', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1128')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (13, N'Tara', N'Quynn', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1130')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (14, N'Regan', N'Maile', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1131')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (15, N'Elton', N'Armand', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1133')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (16, N'Asnakech', N'Kirestin', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1135')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (17, N'Martha', N'Lila', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1137')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (18, N'Omar', N'Vance', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 9, N'F', N'', N'1139')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (19, N'Zachery', N'Wyatt', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 10, N'M', N'', N'1141')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (20, N'Zia', N'Vincent', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 11, N'F', N'', N'1143')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (21, N'Salvador', N'Merritt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1145')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (22, N'Nadine', N'Harper', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1147')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (23, N'Pamela', N'Driscoll', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1138')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (24, N'Boris', N'Kadeem', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1140')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (25, N'Asnakech', N'Peter', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1142')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (26, N'Shana', N'Kalia', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1144')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (27, N'Hedy', N'Cruz', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1174')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (28, N'Wallace', N'Tad', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1175')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (29, N'Wallace', N'Brittany', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1153')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (30, N'Constance', N'Igor', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1154')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (31, N'Solomon', N'Athena', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1144')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (32, N'Clark', N'Kennan', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1145')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (33, N'Abebech', N'Josephine', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1146')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (34, N'Wylie', N'Hedwig', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1148')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (35, N'Desirae', N'Astra', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1149')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (36, N'Yoshi', N'Lani', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1150')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (37, N'Sigourney', N'Jessamine', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1152')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (38, N'Sara', N'Carson', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1153')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (39, N'Nyssa', N'Oliver', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1154')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (40, N'Francesca', N'Sopoline', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1156')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (41, N'Autumn', N'Remedios', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1157')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (42, N'Amity', N'Destiny', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1158')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (43, N'Tanner', N'Rahim', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1160')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (44, N'Cyrus', N'Berk', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1161')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (45, N'Cooper', N'Christopher', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1163')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (46, N'Marah', N'Raya', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1165')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (47, N'Kelly', N'Sebastian', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1167')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (48, N'Mechelle', N'Valentine', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 9, N'F', N'', N'1169')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (49, N'Denise', N'Ray', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 10, N'M', N'', N'1171')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (50, N'Ivan', N'Marcia', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 11, N'M', N'', N'1173')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (51, N'Olga', N'Selma', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1175')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (52, N'Imani', N'Tarik', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1177')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (53, N'Quon', N'Rana', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1168')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (54, N'Berk', N'Rana', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1170')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (55, N'Ferdinand', N'Kyra', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1172')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (56, N'Tatiana', N'Iliana', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1174')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (57, N'Amanda', N'Phyllis', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1204')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (58, N'Mohammad', N'Hamish', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1205')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (59, N'Dorian', N'Alexis', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1183')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (60, N'Rama', N'Chaim', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1184')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (61, N'Velma', N'Otto', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1174')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (62, N'Deacon', N'Buckminster', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1175')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (63, N'Jacqueline', N'Myles', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1176')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (64, N'Stuart', N'Olympia', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1178')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (65, N'Sheila', N'Astra', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1179')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (66, N'Phelan', N'Charity', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1180')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (67, N'Dale', N'Fiona', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1182')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (68, N'Kessie', N'Connor', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1183')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (69, N'Talon', N'Odysseus', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1184')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (70, N'Sade', N'Jason', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1186')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (71, N'Yoseph', N'Burke', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1187')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (72, N'Isaiah', N'Yetta', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1188')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (73, N'Darryl', N'Tiger', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1190')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (74, N'Astra', N'Grant', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1191')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (75, N'Quin', N'Aaron', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1193')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (76, N'Taylor', N'Zeus', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1195')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (77, N'Merritt', N'Aiko', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1197')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (78, N'Denise', N'Kirk', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 9, N'M', N'', N'1199')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (79, N'Eden', N'Amal', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 10, N'F', N'', N'1201')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (80, N'Grant', N'Graiden', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 11, N'M', N'', N'1203')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (81, N'Stephanie', N'Gloria', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1205')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (82, N'Nell', N'Kimberly', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1207')
GO
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (83, N'Colby', N'Norman', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1198')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (84, N'Ivor', N'Iliana', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1200')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (85, N'Evan', N'Stewart', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1202')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (86, N'Lewis', N'Daphne', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 6, N'F', N'', N'1204')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (87, N'Rooney', N'Conan', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1234')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (88, N'Martena', N'Aristotle', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1235')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (89, N'Xena', N'Alvin', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1213')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (90, N'Melodie', N'Scarlett', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1214')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (91, N'Ginger', N'Shaine', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 17, N'M', N'', N'1220')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (92, N'Stacey', N'Chaney', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 18, N'M', N'', N'1222')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (93, N'Dante', N'Phoebe', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 18, N'F', N'', N'1223')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (94, N'Lamar', N'Chastity', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 19, N'M', N'', N'1225')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (95, N'Alexis', N'Michael', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 19, N'F', N'', N'1226')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (96, N'Ivana', N'Damon', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 20, N'M', N'', N'1228')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (97, N'Callie', N'Macon', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 21, N'F', N'', N'1230')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (98, N'Amanda', N'Jorden', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 21, N'M', N'', N'1231')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (99, N'Kamal', N'Fiona', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 22, N'M', N'', N'1233')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (100, N'Ciara', N'Axel', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 23, N'F', N'', N'1235')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (101, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', N'', N'1214')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (102, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', N'', N'1215')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (103, N'Abebe', N'Cherinet', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1216')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (104, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1217')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (105, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1218')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (106, N'Abebe', N'Desta', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1219')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (107, N'Abebe', N'Ayele', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1220')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (108, N'Test1', N'Test2', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1221')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (109, N'Test3', N'TestLName', CAST(N'2020-09-09T17:35:30.327' AS DateTime), 1, N'M', N'test@test.com', N'1222')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (110, N'Test3', N'TestLName', CAST(N'2020-09-09T17:36:37.180' AS DateTime), 1, N'M', N'test@test.com', N'1223')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (111, N'Test4', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1224')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (112, N'Test5', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1225')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (113, N'Test6', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1226')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (114, N'Test7', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1227')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (115, N'Test8', N'TestLName', CAST(N'2020-09-09T17:41:13.573' AS DateTime), 1, N'M', N'test@test.com', N'1228')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (116, N'Yoseph', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1229')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (117, N'Hadas', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1230')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (300, N'Abenet', N'Bekele', CAST(N'1753-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1413')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (1, N'          Halla', N'Bekele', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 14, N'M', N'', N'1127')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (2, N'Keely', N'Leigh', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 14, N'F', N'', N'1128')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (3, N'    Bekele', N'Paki', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1117')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (4, N'Asnakech', N'Regan', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1118')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (5, N'Ephrem', N'Steel', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1119')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (6, N'Feven', N'Lacey', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1120')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (7, N'TSeganesh', N'Jennifer', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1122')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (8, N'Tsegaw', N'Isabella', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1123')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (9, N'Yabsera', N'Ila', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1124')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (10, N'Hiroko', N'Inga', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1126')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (11, N'Miranda', N'Flynn', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1127')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (12, N'Orla', N'Oren', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1128')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (13, N'Tara', N'Quynn', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1130')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (14, N'Regan', N'Maile', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1131')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (15, N'Elton', N'Armand', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1133')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (16, N'Asnakech', N'Kirestin', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1135')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (17, N'Martha', N'Lila', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1137')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (18, N'Omar', N'Vance', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 9, N'F', N'', N'1139')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (19, N'Zachery', N'Wyatt', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 10, N'M', N'', N'1141')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (20, N'Zia', N'Vincent', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 11, N'F', N'', N'1143')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (21, N'Salvador', N'Merritt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1145')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (22, N'Nadine', N'Harper', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1147')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (23, N'Pamela', N'Driscoll', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1138')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (24, N'Boris', N'Kadeem', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1140')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (25, N'Asnakech', N'Peter', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1142')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (26, N'Shana', N'Kalia', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1144')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (27, N'Hedy', N'Cruz', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1174')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (28, N'Wallace', N'Tad', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1175')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (29, N'Wallace', N'Brittany', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1153')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (30, N'Constance', N'Igor', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1154')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (31, N'Solomon', N'Athena', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1144')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (32, N'Clark', N'Kennan', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1145')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (33, N'Abebech', N'Josephine', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1146')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (34, N'Wylie', N'Hedwig', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1148')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (35, N'Desirae', N'Astra', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1149')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (36, N'Yoshi', N'Lani', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1150')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (37, N'Sigourney', N'Jessamine', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1152')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (38, N'Sara', N'Carson', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1153')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (39, N'Nyssa', N'Oliver', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1154')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (40, N'Francesca', N'Sopoline', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1156')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (41, N'Autumn', N'Remedios', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1157')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (42, N'Amity', N'Destiny', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1158')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (43, N'Tanner', N'Rahim', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1160')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (44, N'Cyrus', N'Berk', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1161')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (45, N'Cooper', N'Christopher', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1163')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (46, N'Marah', N'Raya', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1165')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (47, N'Kelly', N'Sebastian', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1167')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (48, N'Mechelle', N'Valentine', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 9, N'F', N'', N'1169')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (49, N'Denise', N'Ray', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 10, N'M', N'', N'1171')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (50, N'Ivan', N'Marcia', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 11, N'M', N'', N'1173')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (51, N'Olga', N'Selma', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1175')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (52, N'Imani', N'Tarik', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1177')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (53, N'Quon', N'Rana', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1168')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (54, N'Berk', N'Rana', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1170')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (55, N'Ferdinand', N'Kyra', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1172')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (56, N'Tatiana', N'Iliana', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1174')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (57, N'Amanda', N'Phyllis', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1204')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (58, N'Mohammad', N'Hamish', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1205')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (59, N'Dorian', N'Alexis', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1183')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (60, N'Rama', N'Chaim', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1184')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (61, N'Velma', N'Otto', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1174')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (62, N'Deacon', N'Buckminster', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1175')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (63, N'Jacqueline', N'Myles', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1176')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (64, N'Stuart', N'Olympia', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1178')
GO
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (65, N'Sheila', N'Astra', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1179')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (66, N'Phelan', N'Charity', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1180')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (67, N'Dale', N'Fiona', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1182')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (68, N'Kessie', N'Connor', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1183')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (69, N'Talon', N'Odysseus', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1184')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (70, N'Sade', N'Jason', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1186')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (71, N'Yoseph', N'Burke', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1187')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (72, N'Isaiah', N'Yetta', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1188')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (73, N'Darryl', N'Tiger', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1190')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (74, N'Astra', N'Grant', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1191')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (75, N'Quin', N'Aaron', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1193')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (76, N'Taylor', N'Zeus', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1195')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (77, N'Merritt', N'Aiko', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1197')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (78, N'Denise', N'Kirk', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 9, N'M', N'', N'1199')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (79, N'Eden', N'Amal', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 10, N'F', N'', N'1201')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (80, N'Grant', N'Graiden', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 11, N'M', N'', N'1203')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (81, N'Stephanie', N'Gloria', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1205')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (82, N'Nell', N'Kimberly', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1207')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (83, N'Colby', N'Norman', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1198')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (84, N'Ivor', N'Iliana', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1200')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (85, N'Evan', N'Stewart', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1202')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (86, N'Lewis', N'Daphne', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 6, N'F', N'', N'1204')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (87, N'Rooney', N'Conan', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1234')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (88, N'Martena', N'Aristotle', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1235')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (89, N'Xena', N'Alvin', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1213')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (90, N'Melodie', N'Scarlett', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1214')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (91, N'Ginger', N'Shaine', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 17, N'M', N'', N'1220')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (92, N'Stacey', N'Chaney', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 18, N'M', N'', N'1222')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (93, N'Dante', N'Phoebe', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 18, N'F', N'', N'1223')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (94, N'Lamar', N'Chastity', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 19, N'M', N'', N'1225')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (95, N'Alexis', N'Michael', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 19, N'F', N'', N'1226')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (96, N'Ivana', N'Damon', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 20, N'M', N'', N'1228')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (97, N'Callie', N'Macon', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 21, N'F', N'', N'1230')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (98, N'Amanda', N'Jorden', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 21, N'M', N'', N'1231')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (99, N'Kamal', N'Fiona', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 22, N'M', N'', N'1233')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (100, N'Ciara', N'Axel', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 23, N'F', N'', N'1235')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (101, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', N'', N'1214')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (102, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', N'', N'1215')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (103, N'Abebe', N'Cherinet', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1216')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (104, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1217')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (105, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1218')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (106, N'Abebe', N'Desta', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1219')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (107, N'Abebe', N'Ayele', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1220')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (108, N'Test1', N'Test2', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1221')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (109, N'Test3', N'TestLName', CAST(N'2020-09-09T17:35:30.327' AS DateTime), 1, N'M', N'test@test.com', N'1222')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (110, N'Test3', N'TestLName', CAST(N'2020-09-09T17:36:37.180' AS DateTime), 1, N'M', N'test@test.com', N'1223')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (111, N'Test4', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1224')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (112, N'Test5', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1225')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (113, N'Test6', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1226')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (114, N'Test7', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1227')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (115, N'Test8', N'TestLName', CAST(N'2020-09-09T17:41:13.573' AS DateTime), 1, N'M', N'test@test.com', N'1228')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (116, N'Yoseph', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1229')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (117, N'Hadas', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1230')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (300, N'Abenet', N'Bekele', CAST(N'1753-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1413')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (1, N'          Halla', N'Bekele', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 14, N'M', N'', N'1127')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (2, N'Keely', N'Leigh', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 14, N'F', N'', N'1128')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (3, N'    Bekele', N'Paki', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1117')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (4, N'Asnakech', N'Regan', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1118')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (5, N'Ephrem', N'Steel', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1119')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (6, N'Feven', N'Lacey', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1120')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (7, N'TSeganesh', N'Jennifer', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1122')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (8, N'Tsegaw', N'Isabella', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1123')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (9, N'Yabsera', N'Ila', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1124')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (10, N'Hiroko', N'Inga', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1126')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (11, N'Miranda', N'Flynn', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1127')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (12, N'Orla', N'Oren', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1128')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (13, N'Tara', N'Quynn', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1130')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (14, N'Regan', N'Maile', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1131')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (15, N'Elton', N'Armand', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1133')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (16, N'Asnakech', N'Kirestin', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1135')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (17, N'Martha', N'Lila', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1137')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (18, N'Omar', N'Vance', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 9, N'F', N'', N'1139')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (19, N'Zachery', N'Wyatt', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 10, N'M', N'', N'1141')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (20, N'Zia', N'Vincent', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 11, N'F', N'', N'1143')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (21, N'Salvador', N'Merritt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1145')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (22, N'Nadine', N'Harper', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1147')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (23, N'Pamela', N'Driscoll', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1138')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (24, N'Boris', N'Kadeem', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1140')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (25, N'Asnakech', N'Peter', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1142')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (26, N'Shana', N'Kalia', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1144')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (27, N'Hedy', N'Cruz', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1174')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (28, N'Wallace', N'Tad', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1175')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (29, N'Wallace', N'Brittany', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1153')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (30, N'Constance', N'Igor', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1154')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (31, N'Solomon', N'Athena', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1144')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (32, N'Clark', N'Kennan', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1145')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (33, N'Abebech', N'Josephine', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1146')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (34, N'Wylie', N'Hedwig', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1148')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (35, N'Desirae', N'Astra', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1149')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (36, N'Yoshi', N'Lani', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1150')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (37, N'Sigourney', N'Jessamine', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1152')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (38, N'Sara', N'Carson', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1153')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (39, N'Nyssa', N'Oliver', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1154')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (40, N'Francesca', N'Sopoline', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1156')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (41, N'Autumn', N'Remedios', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1157')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (42, N'Amity', N'Destiny', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1158')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (43, N'Tanner', N'Rahim', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1160')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (44, N'Cyrus', N'Berk', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1161')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (45, N'Cooper', N'Christopher', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1163')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (46, N'Marah', N'Raya', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1165')
GO
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (47, N'Kelly', N'Sebastian', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1167')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (48, N'Mechelle', N'Valentine', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 9, N'F', N'', N'1169')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (49, N'Denise', N'Ray', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 10, N'M', N'', N'1171')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (50, N'Ivan', N'Marcia', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 11, N'M', N'', N'1173')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (51, N'Olga', N'Selma', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1175')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (52, N'Imani', N'Tarik', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1177')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (53, N'Quon', N'Rana', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1168')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (54, N'Berk', N'Rana', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1170')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (55, N'Ferdinand', N'Kyra', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1172')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (56, N'Tatiana', N'Iliana', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1174')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (57, N'Amanda', N'Phyllis', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1204')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (58, N'Mohammad', N'Hamish', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1205')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (59, N'Dorian', N'Alexis', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1183')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (60, N'Rama', N'Chaim', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1184')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (61, N'Velma', N'Otto', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1174')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (62, N'Deacon', N'Buckminster', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1175')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (63, N'Jacqueline', N'Myles', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1176')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (64, N'Stuart', N'Olympia', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1178')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (65, N'Sheila', N'Astra', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1179')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (66, N'Phelan', N'Charity', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1180')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (67, N'Dale', N'Fiona', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1182')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (68, N'Kessie', N'Connor', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1183')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (69, N'Talon', N'Odysseus', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1184')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (70, N'Sade', N'Jason', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1186')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (71, N'Yoseph', N'Burke', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1187')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (72, N'Isaiah', N'Yetta', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1188')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (73, N'Darryl', N'Tiger', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1190')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (74, N'Astra', N'Grant', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1191')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (75, N'Quin', N'Aaron', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1193')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (76, N'Taylor', N'Zeus', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1195')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (77, N'Merritt', N'Aiko', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1197')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (78, N'Denise', N'Kirk', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 9, N'M', N'', N'1199')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (79, N'Eden', N'Amal', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 10, N'F', N'', N'1201')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (80, N'Grant', N'Graiden', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 11, N'M', N'', N'1203')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (81, N'Stephanie', N'Gloria', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1205')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (82, N'Nell', N'Kimberly', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1207')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (83, N'Colby', N'Norman', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1198')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (84, N'Ivor', N'Iliana', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1200')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (85, N'Evan', N'Stewart', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1202')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (86, N'Lewis', N'Daphne', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 6, N'F', N'', N'1204')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (87, N'Rooney', N'Conan', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1234')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (88, N'Martena', N'Aristotle', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1235')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (89, N'Xena', N'Alvin', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1213')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (90, N'Melodie', N'Scarlett', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1214')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (91, N'Ginger', N'Shaine', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 17, N'M', N'', N'1220')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (92, N'Stacey', N'Chaney', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 18, N'M', N'', N'1222')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (93, N'Dante', N'Phoebe', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 18, N'F', N'', N'1223')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (94, N'Lamar', N'Chastity', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 19, N'M', N'', N'1225')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (95, N'Alexis', N'Michael', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 19, N'F', N'', N'1226')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (96, N'Ivana', N'Damon', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 20, N'M', N'', N'1228')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (97, N'Callie', N'Macon', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 21, N'F', N'', N'1230')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (98, N'Amanda', N'Jorden', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 21, N'M', N'', N'1231')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (99, N'Kamal', N'Fiona', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 22, N'M', N'', N'1233')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (100, N'Ciara', N'Axel', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 23, N'F', N'', N'1235')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (101, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', N'', N'1214')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (102, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', N'', N'1215')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (103, N'Abebe', N'Cherinet', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1216')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (104, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1217')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (105, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1218')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (106, N'Abebe', N'Desta', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1219')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (107, N'Abebe', N'Ayele', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1220')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (108, N'Test1', N'Test2', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1221')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (109, N'Test3', N'TestLName', CAST(N'2020-09-09T17:35:30.327' AS DateTime), 1, N'M', N'test@test.com', N'1222')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (110, N'Test3', N'TestLName', CAST(N'2020-09-09T17:36:37.180' AS DateTime), 1, N'M', N'test@test.com', N'1223')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (111, N'Test4', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1224')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (112, N'Test5', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1225')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (113, N'Test6', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1226')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (114, N'Test7', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1227')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (115, N'Test8', N'TestLName', CAST(N'2020-09-09T17:41:13.573' AS DateTime), 1, N'M', N'test@test.com', N'1228')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (116, N'Yoseph', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1229')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (117, N'Hadas', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1230')
INSERT [dbo].[SMS_2021] ([StudentId], [FirstName], [LasName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (300, N'Abenet', N'Bekele', CAST(N'1753-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1413')
SET IDENTITY_INSERT [dbo].[SMSAudit] ON 

INSERT [dbo].[SMSAudit] ([Id], [Messages], [CretaedDate], [CUser]) VALUES (1, N'Data Inserted', CAST(N'2021-10-10T15:25:26.790' AS DateTime), NULL)
INSERT [dbo].[SMSAudit] ([Id], [Messages], [CretaedDate], [CUser]) VALUES (2, N'Data Inserted', CAST(N'2021-10-10T15:29:19.457' AS DateTime), N'dbo')
INSERT [dbo].[SMSAudit] ([Id], [Messages], [CretaedDate], [CUser]) VALUES (3, N'Data Inserted', CAST(N'2021-10-10T15:31:29.537' AS DateTime), N'DESKTOP-V15U451\Yoseph')
INSERT [dbo].[SMSAudit] ([Id], [Messages], [CretaedDate], [CUser]) VALUES (4, N'Tried to Delete data', CAST(N'2021-10-10T15:35:19.987' AS DateTime), N'DESKTOP-V15U451\Yoseph')
INSERT [dbo].[SMSAudit] ([Id], [Messages], [CretaedDate], [CUser]) VALUES (5, N'Tried to Delete data', CAST(N'2021-10-10T15:36:29.370' AS DateTime), N'DESKTOP-V15U451\Yoseph')
INSERT [dbo].[SMSAudit] ([Id], [Messages], [CretaedDate], [CUser]) VALUES (6, N'Tried to Delete data', CAST(N'2021-10-10T15:37:15.413' AS DateTime), N'DESKTOP-V15U451\Yoseph')
INSERT [dbo].[SMSAudit] ([Id], [Messages], [CretaedDate], [CUser]) VALUES (7, N'Tried to Delete data', CAST(N'2021-10-10T15:37:18.833' AS DateTime), N'DESKTOP-V15U451\Yoseph')
INSERT [dbo].[SMSAudit] ([Id], [Messages], [CretaedDate], [CUser]) VALUES (8, N'Tried to Delete data', CAST(N'2021-10-10T15:37:21.120' AS DateTime), N'DESKTOP-V15U451\Yoseph')
INSERT [dbo].[SMSAudit] ([Id], [Messages], [CretaedDate], [CUser]) VALUES (9, N'Data Inserted', CAST(N'2021-10-10T15:38:04.440' AS DateTime), N'DESKTOP-V15U451\Yoseph')
SET IDENTITY_INSERT [dbo].[SMSAudit] OFF
INSERT [dbo].[stident_backup] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (1, N'Halla', N'Bekele', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 14, N'M', NULL, N'1127')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (1, N'Aster', N'Bekele', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 14, N'F', NULL, N'1127')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (2, N'Keely', N'Leigh', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 14, N'F', NULL, N'1128')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (3, N'Bekele', N'Paki', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1117')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (4, N'Asnakech', N'Regan', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 2, N'F', NULL, N'1118')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (5, N'Ephrem', N'Steel', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1119')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (6, N'Feven', N'Lacey', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 2, N'F', NULL, N'1120')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (7, N'TSeganesh', N'Jennifer', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1122')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (8, N'Tsegaw', N'Isabella', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 3, N'M', NULL, N'1123')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (9, N'Yabsera', N'Ila', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1124')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (10, N'Hiroko', N'Inga', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1126')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (11, N'Miranda', N'Flynn', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 4, N'F', NULL, N'1127')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (12, N'Orla', N'Oren', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1128')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (13, N'Tara', N'Quynn', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1130')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (14, N'Regan', N'Maile', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 5, N'M', NULL, N'1131')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (15, N'Elton', N'Armand', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1133')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (16, N'Asnakech', N'Kirestin', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 7, N'F', NULL, N'1135')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (17, N'Martha', N'Lila', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 8, N'M', NULL, N'1137')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (18, N'Omar', N'Vance', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 9, N'F', NULL, N'1139')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (19, N'Zachery', N'Wyatt', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 10, N'M', NULL, N'1141')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (20, N'Zia', N'Vincent', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 11, N'F', NULL, N'1143')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (21, N'Salvador', N'Merritt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 12, N'M', NULL, N'1145')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (22, N'Nadine', N'Harper', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 13, N'M', NULL, N'1147')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (23, N'Pamela', N'Driscoll', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1138')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (24, N'Boris', N'Kadeem', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1140')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (25, N'Asnakech', N'Peter', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1142')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (26, N'Shana', N'Kalia', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1144')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (27, N'Hedy', N'Cruz', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 35, N'F', NULL, N'1174')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (28, N'Wallace', N'Tad', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 35, N'M', NULL, N'1175')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (29, N'Wallace', N'Brittany', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 12, N'M', NULL, N'1153')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (30, N'Constance', N'Igor', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1154')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (31, N'Solomon', N'Athena', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1144')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (32, N'Clark', N'Kennan', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'F', NULL, N'1145')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (33, N'Abebech', N'Josephine', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 1, N'F', NULL, N'1146')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (34, N'Wylie', N'Hedwig', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 2, N'F', NULL, N'1148')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (35, N'Desirae', N'Astra', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1149')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (36, N'Yoshi', N'Lani', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1150')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (37, N'Sigourney', N'Jessamine', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1152')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (38, N'Sara', N'Carson', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 3, N'M', NULL, N'1153')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (39, N'Nyssa', N'Oliver', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1154')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (40, N'Francesca', N'Sopoline', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1156')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (41, N'Autumn', N'Remedios', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 4, N'F', NULL, N'1157')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (42, N'Amity', N'Destiny', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1158')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (43, N'Tanner', N'Rahim', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', NULL, N'1160')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (44, N'Cyrus', N'Berk', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1161')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (45, N'Cooper', N'Christopher', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1163')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (46, N'Marah', N'Raya', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 7, N'F', NULL, N'1165')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (47, N'Kelly', N'Sebastian', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 8, N'M', NULL, N'1167')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (48, N'Mechelle', N'Valentine', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 9, N'F', NULL, N'1169')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (49, N'Denise', N'Ray', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 10, N'M', NULL, N'1171')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (50, N'Ivan', N'Marcia', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 11, N'M', NULL, N'1173')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (51, N'Olga', N'Selma', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1175')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (52, N'Imani', N'Tarik', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 13, N'M', NULL, N'1177')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (53, N'Quon', N'Rana', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1168')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (54, N'Berk', N'Rana', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1170')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (55, N'Ferdinand', N'Kyra', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1172')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (56, N'Tatiana', N'Iliana', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1174')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (57, N'Amanda', N'Phyllis', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 35, N'M', NULL, N'1204')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (58, N'Mohammad', N'Hamish', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 35, N'F', NULL, N'1205')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (59, N'Dorian', N'Alexis', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 12, N'M', NULL, N'1183')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (60, N'Rama', N'Chaim', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1184')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (61, N'Velma', N'Otto', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1174')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (62, N'Deacon', N'Buckminster', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 1, N'F', NULL, N'1175')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (63, N'Jacqueline', N'Myles', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1176')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (64, N'Stuart', N'Olympia', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1178')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (65, N'Sheila', N'Astra', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 2, N'F', NULL, N'1179')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (66, N'Phelan', N'Charity', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1180')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (67, N'Dale', N'Fiona', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1182')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (68, N'Kessie', N'Connor', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 3, N'M', NULL, N'1183')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (69, N'Talon', N'Odysseus', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1184')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (70, N'Sade', N'Jason', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1186')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (71, N'Yoseph', N'Burke', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1187')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (72, N'Isaiah', N'Yetta', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 4, N'F', NULL, N'1188')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (73, N'Darryl', N'Tiger', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 5, N'M', NULL, N'1190')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (74, N'Astra', N'Grant', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1191')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (75, N'Quin', N'Aaron', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1193')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (76, N'Taylor', N'Zeus', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 7, N'F', NULL, N'1195')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (77, N'Merritt', N'Aiko', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 8, N'M', NULL, N'1197')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (78, N'Denise', N'Kirk', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 9, N'M', NULL, N'1199')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (79, N'Eden', N'Amal', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 10, N'F', NULL, N'1201')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (80, N'Grant', N'Graiden', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 11, N'M', NULL, N'1203')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (81, N'Stephanie', N'Gloria', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1205')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (82, N'Nell', N'Kimberly', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 13, N'M', NULL, N'1207')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (83, N'Colby', N'Norman', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1198')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (84, N'Ivor', N'Iliana', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1200')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (85, N'Evan', N'Stewart', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', NULL, N'1202')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (86, N'Lewis', N'Daphne', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 6, N'F', NULL, N'1204')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (87, N'Rooney', N'Conan', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 35, N'M', NULL, N'1234')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (88, N'Martena', N'Aristotle', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 35, N'F', NULL, N'1235')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (89, N'Xena', N'Alvin', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 12, N'M', NULL, N'1213')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (90, N'Melodie', N'Scarlett', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1214')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (91, N'Ginger', N'Shaine', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 17, N'M', NULL, N'1220')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (92, N'Stacey', N'Chaney', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 18, N'M', NULL, N'1222')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (93, N'Dante', N'Phoebe', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 18, N'F', NULL, N'1223')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (94, N'Lamar', N'Chastity', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 19, N'M', NULL, N'1225')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (95, N'Alexis', N'Michael', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 19, N'F', NULL, N'1226')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (96, N'Ivana', N'Damon', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 20, N'M', NULL, N'1228')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (97, N'Callie', N'Macon', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 21, N'F', NULL, N'1230')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (98, N'Amanda', N'Jorden', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 21, N'M', NULL, N'1231')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (99, N'Kamal', N'Fiona', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 22, N'M', NULL, N'1233')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (100, N'Ciara', N'Axel', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 23, N'F', NULL, N'1235')
GO
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (101, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1214')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (102, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1215')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (103, N'Abebe', N'Cherinet', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', NULL, N'1216')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (104, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', NULL, N'1217')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (105, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', NULL, N'1218')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (107, N'Abebe', N'Ayele', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', NULL, N'1220')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (108, N'Test1', N'Test2', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', NULL, N'1221')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (109, N'Test3', N'TestLName', CAST(N'2020-09-09T17:35:30.327' AS DateTime), 1, N'M', N'test@test.com', N'1222')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (110, N'Test3', N'TestLName', CAST(N'2020-09-09T17:36:37.180' AS DateTime), 1, N'M', N'test@test.com', N'1223')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (111, N'Test4', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1224')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (112, N'Test5', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1225')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (113, N'Test6', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1226')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (114, N'Test7', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1227')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (115, N'Test8', N'TestLName', CAST(N'2020-09-09T17:41:13.573' AS DateTime), 1, N'M', N'test@test.com', N'1228')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (116, N'Yoseph', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1229')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (117, N'Hadas', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1230')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (300, N'Abenet', N'Bekele', NULL, 1, N'M', NULL, N'1413')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (301, N'Abrham', N'Gebeyehu', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (302, N'Abebe', N'Desta', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (303, N'Abebe', N'Desta', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (304, N'Abebe', N'Desta', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[Student] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (305, N'Abebe', N'Desta', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (1, N'          Halla Bekele', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 14, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (2, N'Keely Leigh', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 14, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (3, N'    Bekele Paki', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 2, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (4, N'Asnakech Regan', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 2, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (5, N'Ephrem Steel', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 2, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (6, N'Feven Lacey', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 2, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (7, N'TSeganesh Jennifer', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (8, N'Tsegaw Isabella', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 3, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (9, N'Yabsera Ila', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (10, N'Hiroko Inga', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (11, N'Miranda Flynn', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 4, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (12, N'Orla Oren', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (13, N'Tara Quynn', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (14, N'Regan Maile', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 5, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (15, N'Elton Armand', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 6, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (16, N'Asnakech Kirestin', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 7, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (17, N'Martha Lila', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 8, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (18, N'Omar Vance', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 9, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (19, N'Zachery Wyatt', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 10, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (20, N'Zia Vincent', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 11, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (21, N'Salvador Merritt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 12, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (22, N'Nadine Harper', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 13, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (23, N'Pamela Driscoll', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (24, N'Boris Kadeem', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (25, N'Asnakech Peter', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 5, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (26, N'Shana Kalia', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 6, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (27, N'Hedy Cruz', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 35, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (28, N'Wallace Tad', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 35, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (29, N'Wallace Brittany', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 12, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (30, N'Constance Igor', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 12, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (31, N'Solomon Athena', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (32, N'Clark Kennan', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (33, N'Abebech Josephine', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (34, N'Wylie Hedwig', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 2, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (35, N'Desirae Astra', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 2, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (36, N'Yoshi Lani', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 2, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (37, N'Sigourney Jessamine', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (38, N'Sara Carson', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 3, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (39, N'Nyssa Oliver', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (40, N'Francesca Sopoline', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (41, N'Autumn Remedios', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 4, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (42, N'Amity Destiny', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (43, N'Tanner Rahim', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (44, N'Cyrus Berk', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 5, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (45, N'Cooper Christopher', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 6, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (46, N'Marah Raya', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 7, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (47, N'Kelly Sebastian', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 8, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (48, N'Mechelle Valentine', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 9, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (49, N'Denise Ray', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 10, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (50, N'Ivan Marcia', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 11, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (51, N'Olga Selma', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 12, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (52, N'Imani Tarik', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 13, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (53, N'Quon Rana', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (54, N'Berk Rana', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (55, N'Ferdinand Kyra', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (56, N'Tatiana Iliana', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 6, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (57, N'Amanda Phyllis', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 35, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (58, N'Mohammad Hamish', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 35, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (59, N'Dorian Alexis', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 12, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (60, N'Rama Chaim', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 12, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (61, N'Velma Otto', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (62, N'Deacon Buckminster', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (63, N'Jacqueline Myles', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (64, N'Stuart Olympia', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 2, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (65, N'Sheila Astra', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 2, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (66, N'Phelan Charity', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 2, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (67, N'Dale Fiona', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (68, N'Kessie Connor', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 3, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (69, N'Talon Odysseus', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (70, N'Sade Jason', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (71, N'Yoseph Burke', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (72, N'Isaiah Yetta', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 4, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (73, N'Darryl Tiger', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 5, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (74, N'Astra Grant', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 5, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (75, N'Quin Aaron', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 6, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (76, N'Taylor Zeus', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 7, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (77, N'Merritt Aiko', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 8, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (78, N'Denise Kirk', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 9, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (79, N'Eden Amal', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 10, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (80, N'Grant Graiden', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 11, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (81, N'Stephanie Gloria', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 12, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (82, N'Nell Kimberly', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 13, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (83, N'Colby Norman', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (84, N'Ivor Iliana', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (85, N'Evan Stewart', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (86, N'Lewis Daphne', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 6, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (87, N'Rooney Conan', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 35, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (88, N'Martena Aristotle', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 35, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (89, N'Xena Alvin', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 12, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (90, N'Melodie Scarlett', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 12, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (91, N'Ginger Shaine', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 17, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (92, N'Stacey Chaney', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 18, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (93, N'Dante Phoebe', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 18, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (94, N'Lamar Chastity', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 19, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (95, N'Alexis Michael', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 19, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (96, N'Ivana Damon', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 20, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (97, N'Callie Macon', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 21, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (98, N'Amanda Jorden', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 21, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (99, N'Kamal Fiona', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 22, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (100, N'Ciara Axel', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 23, N'F')
GO
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (101, N'Yoseph Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (102, N'Yoseph Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (103, N'Abebe Cherinet', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (104, N'Aster Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (105, N'Aster Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (106, N'Abebe Desta', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (107, N'Abebe Ayele', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (108, N'Test1 Test2', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (109, N'Test3 TestLName', CAST(N'2020-09-09T17:35:30.327' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (110, N'Test3 TestLName', CAST(N'2020-09-09T17:36:37.180' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (111, N'Test4 TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (112, N'Test5 TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (113, N'Test6 TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (114, N'Test7 TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (115, N'Test8 TestLName', CAST(N'2020-09-09T17:41:13.573' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (116, N'Yoseph Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (117, N'Hadas Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (300, N'Abenet Bekele', NULL, 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (1, N'          Halla Bekele', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 14, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (2, N'Keely Leigh', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 14, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (3, N'    Bekele Paki', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 2, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (4, N'Asnakech Regan', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 2, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (5, N'Ephrem Steel', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 2, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (6, N'Feven Lacey', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 2, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (7, N'TSeganesh Jennifer', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (8, N'Tsegaw Isabella', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 3, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (9, N'Yabsera Ila', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (10, N'Hiroko Inga', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (11, N'Miranda Flynn', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 4, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (12, N'Orla Oren', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (13, N'Tara Quynn', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (14, N'Regan Maile', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 5, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (15, N'Elton Armand', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 6, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (16, N'Asnakech Kirestin', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 7, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (17, N'Martha Lila', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 8, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (18, N'Omar Vance', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 9, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (19, N'Zachery Wyatt', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 10, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (20, N'Zia Vincent', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 11, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (21, N'Salvador Merritt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 12, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (22, N'Nadine Harper', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 13, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (23, N'Pamela Driscoll', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (24, N'Boris Kadeem', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (25, N'Asnakech Peter', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 5, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (26, N'Shana Kalia', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 6, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (27, N'Hedy Cruz', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 35, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (28, N'Wallace Tad', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 35, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (29, N'Wallace Brittany', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 12, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (30, N'Constance Igor', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 12, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (31, N'Solomon Athena', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (32, N'Clark Kennan', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (33, N'Abebech Josephine', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (34, N'Wylie Hedwig', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 2, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (35, N'Desirae Astra', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 2, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (36, N'Yoshi Lani', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 2, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (37, N'Sigourney Jessamine', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (38, N'Sara Carson', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 3, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (39, N'Nyssa Oliver', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (40, N'Francesca Sopoline', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (41, N'Autumn Remedios', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 4, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (42, N'Amity Destiny', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (43, N'Tanner Rahim', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (44, N'Cyrus Berk', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 5, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (45, N'Cooper Christopher', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 6, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (46, N'Marah Raya', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 7, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (47, N'Kelly Sebastian', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 8, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (48, N'Mechelle Valentine', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 9, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (49, N'Denise Ray', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 10, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (50, N'Ivan Marcia', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 11, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (51, N'Olga Selma', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 12, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (52, N'Imani Tarik', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 13, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (53, N'Quon Rana', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (54, N'Berk Rana', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (55, N'Ferdinand Kyra', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (56, N'Tatiana Iliana', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 6, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (57, N'Amanda Phyllis', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 35, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (58, N'Mohammad Hamish', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 35, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (59, N'Dorian Alexis', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 12, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (60, N'Rama Chaim', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 12, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (61, N'Velma Otto', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (62, N'Deacon Buckminster', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (63, N'Jacqueline Myles', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (64, N'Stuart Olympia', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 2, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (65, N'Sheila Astra', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 2, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (66, N'Phelan Charity', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 2, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (67, N'Dale Fiona', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (68, N'Kessie Connor', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 3, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (69, N'Talon Odysseus', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (70, N'Sade Jason', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (71, N'Yoseph Burke', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (72, N'Isaiah Yetta', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 4, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (73, N'Darryl Tiger', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 5, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (74, N'Astra Grant', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 5, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (75, N'Quin Aaron', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 6, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (76, N'Taylor Zeus', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 7, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (77, N'Merritt Aiko', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 8, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (78, N'Denise Kirk', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 9, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (79, N'Eden Amal', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 10, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (80, N'Grant Graiden', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 11, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (81, N'Stephanie Gloria', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 12, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (82, N'Nell Kimberly', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 13, N'M')
GO
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (83, N'Colby Norman', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (84, N'Ivor Iliana', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (85, N'Evan Stewart', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (86, N'Lewis Daphne', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 6, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (87, N'Rooney Conan', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 35, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (88, N'Martena Aristotle', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 35, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (89, N'Xena Alvin', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 12, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (90, N'Melodie Scarlett', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 12, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (91, N'Ginger Shaine', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 17, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (92, N'Stacey Chaney', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 18, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (93, N'Dante Phoebe', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 18, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (94, N'Lamar Chastity', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 19, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (95, N'Alexis Michael', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 19, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (96, N'Ivana Damon', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 20, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (97, N'Callie Macon', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 21, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (98, N'Amanda Jorden', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 21, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (99, N'Kamal Fiona', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 22, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (100, N'Ciara Axel', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 23, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (101, N'Yoseph Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (102, N'Yoseph Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (103, N'Abebe Cherinet', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (104, N'Aster Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (105, N'Aster Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (106, N'Abebe Desta', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (107, N'Abebe Ayele', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (108, N'Test1 Test2', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (109, N'Test3 TestLName', CAST(N'2020-09-09T17:35:30.327' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (110, N'Test3 TestLName', CAST(N'2020-09-09T17:36:37.180' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (111, N'Test4 TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (112, N'Test5 TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (113, N'Test6 TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (114, N'Test7 TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (115, N'Test8 TestLName', CAST(N'2020-09-09T17:41:13.573' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (116, N'Yoseph Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (117, N'Hadas Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (300, N'Abenet Bekele', NULL, 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (1, N'          Halla Bekele', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 14, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (2, N'Keely Leigh', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 14, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (3, N'    Bekele Paki', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 2, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (4, N'Asnakech Regan', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 2, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (5, N'Ephrem Steel', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 2, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (6, N'Feven Lacey', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 2, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (7, N'TSeganesh Jennifer', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (8, N'Tsegaw Isabella', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 3, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (9, N'Yabsera Ila', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (10, N'Hiroko Inga', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (11, N'Miranda Flynn', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 4, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (12, N'Orla Oren', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (13, N'Tara Quynn', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (14, N'Regan Maile', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 5, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (15, N'Elton Armand', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 6, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (16, N'Asnakech Kirestin', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 7, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (17, N'Martha Lila', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 8, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (18, N'Omar Vance', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 9, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (19, N'Zachery Wyatt', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 10, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (20, N'Zia Vincent', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 11, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (21, N'Salvador Merritt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 12, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (22, N'Nadine Harper', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 13, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (23, N'Pamela Driscoll', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (24, N'Boris Kadeem', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (25, N'Asnakech Peter', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 5, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (26, N'Shana Kalia', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 6, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (27, N'Hedy Cruz', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 35, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (28, N'Wallace Tad', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 35, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (29, N'Wallace Brittany', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 12, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (30, N'Constance Igor', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 12, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (31, N'Solomon Athena', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (32, N'Clark Kennan', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (33, N'Abebech Josephine', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (34, N'Wylie Hedwig', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 2, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (35, N'Desirae Astra', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 2, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (36, N'Yoshi Lani', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 2, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (37, N'Sigourney Jessamine', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (38, N'Sara Carson', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 3, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (39, N'Nyssa Oliver', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (40, N'Francesca Sopoline', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (41, N'Autumn Remedios', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 4, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (42, N'Amity Destiny', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (43, N'Tanner Rahim', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (44, N'Cyrus Berk', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 5, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (45, N'Cooper Christopher', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 6, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (46, N'Marah Raya', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 7, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (47, N'Kelly Sebastian', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 8, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (48, N'Mechelle Valentine', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 9, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (49, N'Denise Ray', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 10, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (50, N'Ivan Marcia', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 11, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (51, N'Olga Selma', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 12, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (52, N'Imani Tarik', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 13, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (53, N'Quon Rana', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (54, N'Berk Rana', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (55, N'Ferdinand Kyra', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (56, N'Tatiana Iliana', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 6, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (57, N'Amanda Phyllis', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 35, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (58, N'Mohammad Hamish', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 35, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (59, N'Dorian Alexis', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 12, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (60, N'Rama Chaim', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 12, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (61, N'Velma Otto', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (62, N'Deacon Buckminster', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (63, N'Jacqueline Myles', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (64, N'Stuart Olympia', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 2, N'M')
GO
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (65, N'Sheila Astra', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 2, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (66, N'Phelan Charity', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 2, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (67, N'Dale Fiona', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (68, N'Kessie Connor', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 3, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (69, N'Talon Odysseus', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (70, N'Sade Jason', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (71, N'Yoseph Burke', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (72, N'Isaiah Yetta', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 4, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (73, N'Darryl Tiger', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 5, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (74, N'Astra Grant', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 5, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (75, N'Quin Aaron', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 6, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (76, N'Taylor Zeus', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 7, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (77, N'Merritt Aiko', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 8, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (78, N'Denise Kirk', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 9, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (79, N'Eden Amal', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 10, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (80, N'Grant Graiden', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 11, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (81, N'Stephanie Gloria', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 12, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (82, N'Nell Kimberly', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 13, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (83, N'Colby Norman', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 3, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (84, N'Ivor Iliana', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (85, N'Evan Stewart', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (86, N'Lewis Daphne', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 6, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (87, N'Rooney Conan', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 35, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (88, N'Martena Aristotle', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 35, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (89, N'Xena Alvin', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 12, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (90, N'Melodie Scarlett', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 12, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (91, N'Ginger Shaine', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 17, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (92, N'Stacey Chaney', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 18, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (93, N'Dante Phoebe', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 18, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (94, N'Lamar Chastity', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 19, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (95, N'Alexis Michael', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 19, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (96, N'Ivana Damon', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 20, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (97, N'Callie Macon', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 21, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (98, N'Amanda Jorden', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 21, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (99, N'Kamal Fiona', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 22, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (100, N'Ciara Axel', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 23, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (101, N'Yoseph Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (102, N'Yoseph Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (103, N'Abebe Cherinet', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (104, N'Aster Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (105, N'Aster Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (106, N'Abebe Desta', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (107, N'Abebe Ayele', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (108, N'Test1 Test2', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (109, N'Test3 TestLName', CAST(N'2020-09-09T17:35:30.327' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (110, N'Test3 TestLName', CAST(N'2020-09-09T17:36:37.180' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (111, N'Test4 TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (112, N'Test5 TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (113, N'Test6 TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (114, N'Test7 TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (115, N'Test8 TestLName', CAST(N'2020-09-09T17:41:13.573' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (116, N'Yoseph Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (117, N'Hadas Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M')
INSERT [dbo].[Student_2021] ([StudentId], [FullName], [DOB], [DepartmentId], [Gender]) VALUES (300, N'Abenet Bekele', NULL, 1, N'M')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Halla', N'Bekele', CAST(N'1970-01-01T00:00:00.000' AS DateTime), N'M', N'Zoology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Keely', N'Leigh', CAST(N'1971-01-01T00:00:00.000' AS DateTime), N'F', N'Zoology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Bekele', N'Paki', CAST(N'1972-01-01T00:00:00.000' AS DateTime), N'M', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Asnakech', N'Regan', CAST(N'1973-01-01T00:00:00.000' AS DateTime), N'F', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Ephrem', N'Steel', CAST(N'1974-01-01T00:00:00.000' AS DateTime), N'M', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Feven', N'Lacey', CAST(N'1975-01-01T00:00:00.000' AS DateTime), N'F', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'TSeganesh', N'Jennifer', CAST(N'1976-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Tsegaw', N'Isabella', CAST(N'1977-01-01T00:00:00.000' AS DateTime), N'M', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Yabsera', N'Ila', CAST(N'1978-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Hiroko', N'Inga', CAST(N'1979-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Miranda', N'Flynn', CAST(N'1980-01-01T00:00:00.000' AS DateTime), N'F', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Orla', N'Oren', CAST(N'1981-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Tara', N'Quynn', CAST(N'1982-01-01T00:00:00.000' AS DateTime), N'F', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Regan', N'Maile', CAST(N'1983-01-01T00:00:00.000' AS DateTime), N'M', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Elton', N'Armand', CAST(N'1984-01-01T00:00:00.000' AS DateTime), N'M', N'Tectile Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Asnakech', N'Kirestin', CAST(N'1985-01-01T00:00:00.000' AS DateTime), N'F', N'Chemistry', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Martha', N'Lila', CAST(N'1986-01-01T00:00:00.000' AS DateTime), N'M', N'Physics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Omar', N'Vance', CAST(N'1987-01-01T00:00:00.000' AS DateTime), N'F', N'Mathematics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Zachery', N'Wyatt', CAST(N'1988-01-01T00:00:00.000' AS DateTime), N'M', N'Statistics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Zia', N'Vincent', CAST(N'1989-01-01T00:00:00.000' AS DateTime), N'F', N'Biology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Salvador', N'Merritt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'M', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Nadine', N'Harper', CAST(N'1991-01-01T00:00:00.000' AS DateTime), N'M', N' Industrial Chemistry', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Pamela', N'Driscoll', CAST(N'1992-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Boris', N'Kadeem', CAST(N'1993-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Asnakech', N'Peter', CAST(N'1994-01-01T00:00:00.000' AS DateTime), N'F', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Shana', N'Kalia', CAST(N'1995-01-01T00:00:00.000' AS DateTime), N'M', N'Tectile Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Hedy', N'Cruz', CAST(N'1996-01-01T00:00:00.000' AS DateTime), N'F', N'Phylosophy', N'Faculty of the Social Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Wallace', N'Tad', CAST(N'1997-01-01T00:00:00.000' AS DateTime), N'M', N'Phylosophy', N'Faculty of the Social Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Wallace', N'Brittany', CAST(N'1998-01-01T00:00:00.000' AS DateTime), N'M', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Constance', N'Igor', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'F', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Solomon', N'Athena', CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Clark', N'Kennan', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'F', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Abebech', N'Josephine', CAST(N'2002-01-01T00:00:00.000' AS DateTime), N'F', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Wylie', N'Hedwig', CAST(N'2003-01-01T00:00:00.000' AS DateTime), N'F', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Desirae', N'Astra', CAST(N'2004-01-01T00:00:00.000' AS DateTime), N'M', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Yoshi', N'Lani', CAST(N'2005-01-01T00:00:00.000' AS DateTime), N'M', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Sigourney', N'Jessamine', CAST(N'2006-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Sara', N'Carson', CAST(N'2007-01-01T00:00:00.000' AS DateTime), N'M', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Nyssa', N'Oliver', CAST(N'2008-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Francesca', N'Sopoline', CAST(N'2009-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Autumn', N'Remedios', CAST(N'2010-01-01T00:00:00.000' AS DateTime), N'F', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Amity', N'Destiny', CAST(N'2011-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Tanner', N'Rahim', CAST(N'1970-01-01T00:00:00.000' AS DateTime), N'M', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Cyrus', N'Berk', CAST(N'1971-01-01T00:00:00.000' AS DateTime), N'F', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Cooper', N'Christopher', CAST(N'1972-01-01T00:00:00.000' AS DateTime), N'M', N'Tectile Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Marah', N'Raya', CAST(N'1973-01-01T00:00:00.000' AS DateTime), N'F', N'Chemistry', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Kelly', N'Sebastian', CAST(N'1974-01-01T00:00:00.000' AS DateTime), N'M', N'Physics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Mechelle', N'Valentine', CAST(N'1975-01-01T00:00:00.000' AS DateTime), N'F', N'Mathematics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Denise', N'Ray', CAST(N'1976-01-01T00:00:00.000' AS DateTime), N'M', N'Statistics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Ivan', N'Marcia', CAST(N'1977-01-01T00:00:00.000' AS DateTime), N'M', N'Biology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Olga', N'Selma', CAST(N'1978-01-01T00:00:00.000' AS DateTime), N'F', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Imani', N'Tarik', CAST(N'1979-01-01T00:00:00.000' AS DateTime), N'M', N' Industrial Chemistry', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Quon', N'Rana', CAST(N'1980-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Berk', N'Rana', CAST(N'1981-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Ferdinand', N'Kyra', CAST(N'1982-01-01T00:00:00.000' AS DateTime), N'F', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Tatiana', N'Iliana', CAST(N'1983-01-01T00:00:00.000' AS DateTime), N'M', N'Tectile Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Amanda', N'Phyllis', CAST(N'1984-01-01T00:00:00.000' AS DateTime), N'M', N'Phylosophy', N'Faculty of the Social Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Mohammad', N'Hamish', CAST(N'1985-01-01T00:00:00.000' AS DateTime), N'F', N'Phylosophy', N'Faculty of the Social Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Dorian', N'Alexis', CAST(N'1986-01-01T00:00:00.000' AS DateTime), N'M', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Rama', N'Chaim', CAST(N'1987-01-01T00:00:00.000' AS DateTime), N'F', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Velma', N'Otto', CAST(N'1988-01-01T00:00:00.000' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Deacon', N'Buckminster', CAST(N'1989-01-01T00:00:00.000' AS DateTime), N'F', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Jacqueline', N'Myles', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Stuart', N'Olympia', CAST(N'1991-01-01T00:00:00.000' AS DateTime), N'M', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Sheila', N'Astra', CAST(N'1992-01-01T00:00:00.000' AS DateTime), N'F', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Phelan', N'Charity', CAST(N'1993-01-01T00:00:00.000' AS DateTime), N'M', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Dale', N'Fiona', CAST(N'1994-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Kessie', N'Connor', CAST(N'1995-01-01T00:00:00.000' AS DateTime), N'M', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Talon', N'Odysseus', CAST(N'1996-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Sade', N'Jason', CAST(N'1997-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Yoseph', N'Burke', CAST(N'1998-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Isaiah', N'Yetta', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'F', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Darryl', N'Tiger', CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'M', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Astra', N'Grant', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'F', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Quin', N'Aaron', CAST(N'2002-01-01T00:00:00.000' AS DateTime), N'M', N'Tectile Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Taylor', N'Zeus', CAST(N'2003-01-01T00:00:00.000' AS DateTime), N'F', N'Chemistry', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Merritt', N'Aiko', CAST(N'2004-01-01T00:00:00.000' AS DateTime), N'M', N'Physics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Denise', N'Kirk', CAST(N'2005-01-01T00:00:00.000' AS DateTime), N'M', N'Mathematics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Eden', N'Amal', CAST(N'2006-01-01T00:00:00.000' AS DateTime), N'F', N'Statistics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Grant', N'Graiden', CAST(N'2007-01-01T00:00:00.000' AS DateTime), N'M', N'Biology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Stephanie', N'Gloria', CAST(N'2008-01-01T00:00:00.000' AS DateTime), N'F', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Nell', N'Kimberly', CAST(N'2009-01-01T00:00:00.000' AS DateTime), N'M', N' Industrial Chemistry', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Colby', N'Norman', CAST(N'2010-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Ivor', N'Iliana', CAST(N'2011-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Evan', N'Stewart', CAST(N'1970-01-01T00:00:00.000' AS DateTime), N'M', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Lewis', N'Daphne', CAST(N'1971-01-01T00:00:00.000' AS DateTime), N'F', N'Tectile Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Rooney', N'Conan', CAST(N'1972-01-01T00:00:00.000' AS DateTime), N'M', N'Phylosophy', N'Faculty of the Social Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Martena', N'Aristotle', CAST(N'1973-01-01T00:00:00.000' AS DateTime), N'F', N'Phylosophy', N'Faculty of the Social Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Xena', N'Alvin', CAST(N'1974-01-01T00:00:00.000' AS DateTime), N'M', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Melodie', N'Scarlett', CAST(N'1975-01-01T00:00:00.000' AS DateTime), N'F', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Ginger', N'Shaine', CAST(N'1976-01-01T00:00:00.000' AS DateTime), N'M', N'Population Medicine', N'Faculty of Veterinary Medicine')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Stacey', N'Chaney', CAST(N'1977-01-01T00:00:00.000' AS DateTime), N'M', N'Physiotherapy', N'Faculty of Clinical Science and Dentistry')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Dante', N'Phoebe', CAST(N'1978-01-01T00:00:00.000' AS DateTime), N'F', N'Physiotherapy', N'Faculty of Clinical Science and Dentistry')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Lamar', N'Chastity', CAST(N'1979-01-01T00:00:00.000' AS DateTime), N'M', N'Nursing', N'Faculty of Clinical Science and Dentistry')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Alexis', N'Michael', CAST(N'1980-01-01T00:00:00.000' AS DateTime), N'F', N'Nursing', N'Faculty of Clinical Science and Dentistry')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Ivana', N'Damon', CAST(N'1981-01-01T00:00:00.000' AS DateTime), N'M', N'Biochemistry', N'Faculty of Basic Medical Sciences')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Callie', N'Macon', CAST(N'1982-01-01T00:00:00.000' AS DateTime), N'F', N'Library', N'Faculty of Education')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Amanda', N'Jorden', CAST(N'1983-01-01T00:00:00.000' AS DateTime), N'M', N'Library', N'Faculty of Education')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Kamal', N'Fiona', CAST(N'1984-01-01T00:00:00.000' AS DateTime), N'M', N' Archival & Information', N'Faculty of Education')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Ciara', N'Axel', CAST(N'1985-01-01T00:00:00.000' AS DateTime), N'F', N'Studies (LARIS)', N'Faculty of Education')
GO
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Abebe', N'Cherinet', CAST(N'2020-09-01T17:57:38.017' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Abebe', N'Desta', CAST(N'2020-09-01T17:57:38.017' AS DateTime), N'F', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Abebe', N'Ayele', CAST(N'2020-09-01T17:57:38.017' AS DateTime), N'F', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Test1', N'Test2', CAST(N'2020-09-01T17:57:38.017' AS DateTime), N'F', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Test3', N'TestLName', CAST(N'2020-09-09T17:35:30.327' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Test3', N'TestLName', CAST(N'2020-09-09T17:36:37.180' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Test4', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Test5', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Test6', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Test7', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Test8', N'TestLName', CAST(N'2020-09-09T17:41:13.573' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Yoseph', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Hadas', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Abenet', N'Bekele', NULL, N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Halla', N'Bekele', CAST(N'1970-01-01T00:00:00.000' AS DateTime), N'M', N'Zoology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Keely', N'Leigh', CAST(N'1971-01-01T00:00:00.000' AS DateTime), N'F', N'Zoology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Bekele', N'Paki', CAST(N'1972-01-01T00:00:00.000' AS DateTime), N'M', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Asnakech', N'Regan', CAST(N'1973-01-01T00:00:00.000' AS DateTime), N'F', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Ephrem', N'Steel', CAST(N'1974-01-01T00:00:00.000' AS DateTime), N'M', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Feven', N'Lacey', CAST(N'1975-01-01T00:00:00.000' AS DateTime), N'F', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'TSeganesh', N'Jennifer', CAST(N'1976-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Tsegaw', N'Isabella', CAST(N'1977-01-01T00:00:00.000' AS DateTime), N'M', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Yabsera', N'Ila', CAST(N'1978-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Hiroko', N'Inga', CAST(N'1979-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Miranda', N'Flynn', CAST(N'1980-01-01T00:00:00.000' AS DateTime), N'F', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Orla', N'Oren', CAST(N'1981-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Tara', N'Quynn', CAST(N'1982-01-01T00:00:00.000' AS DateTime), N'F', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Regan', N'Maile', CAST(N'1983-01-01T00:00:00.000' AS DateTime), N'M', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Elton', N'Armand', CAST(N'1984-01-01T00:00:00.000' AS DateTime), N'M', N'Tectile Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Asnakech', N'Kirestin', CAST(N'1985-01-01T00:00:00.000' AS DateTime), N'F', N'Chemistry', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Martha', N'Lila', CAST(N'1986-01-01T00:00:00.000' AS DateTime), N'M', N'Physics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Omar', N'Vance', CAST(N'1987-01-01T00:00:00.000' AS DateTime), N'F', N'Mathematics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Zachery', N'Wyatt', CAST(N'1988-01-01T00:00:00.000' AS DateTime), N'M', N'Statistics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Zia', N'Vincent', CAST(N'1989-01-01T00:00:00.000' AS DateTime), N'F', N'Biology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Salvador', N'Merritt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'M', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Nadine', N'Harper', CAST(N'1991-01-01T00:00:00.000' AS DateTime), N'M', N' Industrial Chemistry', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Pamela', N'Driscoll', CAST(N'1992-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Boris', N'Kadeem', CAST(N'1993-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Asnakech', N'Peter', CAST(N'1994-01-01T00:00:00.000' AS DateTime), N'F', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Shana', N'Kalia', CAST(N'1995-01-01T00:00:00.000' AS DateTime), N'M', N'Tectile Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Hedy', N'Cruz', CAST(N'1996-01-01T00:00:00.000' AS DateTime), N'F', N'Phylosophy', N'Faculty of the Social Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Wallace', N'Tad', CAST(N'1997-01-01T00:00:00.000' AS DateTime), N'M', N'Phylosophy', N'Faculty of the Social Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Wallace', N'Brittany', CAST(N'1998-01-01T00:00:00.000' AS DateTime), N'M', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Constance', N'Igor', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'F', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Solomon', N'Athena', CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Clark', N'Kennan', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'F', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Abebech', N'Josephine', CAST(N'2002-01-01T00:00:00.000' AS DateTime), N'F', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Wylie', N'Hedwig', CAST(N'2003-01-01T00:00:00.000' AS DateTime), N'F', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Desirae', N'Astra', CAST(N'2004-01-01T00:00:00.000' AS DateTime), N'M', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Yoshi', N'Lani', CAST(N'2005-01-01T00:00:00.000' AS DateTime), N'M', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Sigourney', N'Jessamine', CAST(N'2006-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Sara', N'Carson', CAST(N'2007-01-01T00:00:00.000' AS DateTime), N'M', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Nyssa', N'Oliver', CAST(N'2008-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Francesca', N'Sopoline', CAST(N'2009-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Autumn', N'Remedios', CAST(N'2010-01-01T00:00:00.000' AS DateTime), N'F', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Amity', N'Destiny', CAST(N'2011-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Tanner', N'Rahim', CAST(N'1970-01-01T00:00:00.000' AS DateTime), N'M', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Cyrus', N'Berk', CAST(N'1971-01-01T00:00:00.000' AS DateTime), N'F', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Cooper', N'Christopher', CAST(N'1972-01-01T00:00:00.000' AS DateTime), N'M', N'Tectile Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Marah', N'Raya', CAST(N'1973-01-01T00:00:00.000' AS DateTime), N'F', N'Chemistry', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Kelly', N'Sebastian', CAST(N'1974-01-01T00:00:00.000' AS DateTime), N'M', N'Physics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Mechelle', N'Valentine', CAST(N'1975-01-01T00:00:00.000' AS DateTime), N'F', N'Mathematics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Denise', N'Ray', CAST(N'1976-01-01T00:00:00.000' AS DateTime), N'M', N'Statistics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Ivan', N'Marcia', CAST(N'1977-01-01T00:00:00.000' AS DateTime), N'M', N'Biology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Olga', N'Selma', CAST(N'1978-01-01T00:00:00.000' AS DateTime), N'F', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Imani', N'Tarik', CAST(N'1979-01-01T00:00:00.000' AS DateTime), N'M', N' Industrial Chemistry', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Quon', N'Rana', CAST(N'1980-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Berk', N'Rana', CAST(N'1981-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Ferdinand', N'Kyra', CAST(N'1982-01-01T00:00:00.000' AS DateTime), N'F', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Tatiana', N'Iliana', CAST(N'1983-01-01T00:00:00.000' AS DateTime), N'M', N'Tectile Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Amanda', N'Phyllis', CAST(N'1984-01-01T00:00:00.000' AS DateTime), N'M', N'Phylosophy', N'Faculty of the Social Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Mohammad', N'Hamish', CAST(N'1985-01-01T00:00:00.000' AS DateTime), N'F', N'Phylosophy', N'Faculty of the Social Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Dorian', N'Alexis', CAST(N'1986-01-01T00:00:00.000' AS DateTime), N'M', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Rama', N'Chaim', CAST(N'1987-01-01T00:00:00.000' AS DateTime), N'F', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Velma', N'Otto', CAST(N'1988-01-01T00:00:00.000' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Deacon', N'Buckminster', CAST(N'1989-01-01T00:00:00.000' AS DateTime), N'F', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Jacqueline', N'Myles', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Stuart', N'Olympia', CAST(N'1991-01-01T00:00:00.000' AS DateTime), N'M', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Sheila', N'Astra', CAST(N'1992-01-01T00:00:00.000' AS DateTime), N'F', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Phelan', N'Charity', CAST(N'1993-01-01T00:00:00.000' AS DateTime), N'M', N'Electrical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Dale', N'Fiona', CAST(N'1994-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Kessie', N'Connor', CAST(N'1995-01-01T00:00:00.000' AS DateTime), N'M', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Talon', N'Odysseus', CAST(N'1996-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Sade', N'Jason', CAST(N'1997-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Yoseph', N'Burke', CAST(N'1998-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Isaiah', N'Yetta', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'F', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Darryl', N'Tiger', CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'M', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Astra', N'Grant', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'F', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Quin', N'Aaron', CAST(N'2002-01-01T00:00:00.000' AS DateTime), N'M', N'Tectile Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Taylor', N'Zeus', CAST(N'2003-01-01T00:00:00.000' AS DateTime), N'F', N'Chemistry', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Merritt', N'Aiko', CAST(N'2004-01-01T00:00:00.000' AS DateTime), N'M', N'Physics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Denise', N'Kirk', CAST(N'2005-01-01T00:00:00.000' AS DateTime), N'M', N'Mathematics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Eden', N'Amal', CAST(N'2006-01-01T00:00:00.000' AS DateTime), N'F', N'Statistics', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Grant', N'Graiden', CAST(N'2007-01-01T00:00:00.000' AS DateTime), N'M', N'Biology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Stephanie', N'Gloria', CAST(N'2008-01-01T00:00:00.000' AS DateTime), N'F', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Nell', N'Kimberly', CAST(N'2009-01-01T00:00:00.000' AS DateTime), N'M', N' Industrial Chemistry', N'Faculty of Science')
GO
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Colby', N'Norman', CAST(N'2010-01-01T00:00:00.000' AS DateTime), N'F', N'Chemical Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Ivor', N'Iliana', CAST(N'2011-01-01T00:00:00.000' AS DateTime), N'M', N'Mechanical Engineerng', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Evan', N'Stewart', CAST(N'1970-01-01T00:00:00.000' AS DateTime), N'M', N'ComputerEngineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Lewis', N'Daphne', CAST(N'1971-01-01T00:00:00.000' AS DateTime), N'F', N'Tectile Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Rooney', N'Conan', CAST(N'1972-01-01T00:00:00.000' AS DateTime), N'M', N'Phylosophy', N'Faculty of the Social Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Martena', N'Aristotle', CAST(N'1973-01-01T00:00:00.000' AS DateTime), N'F', N'Phylosophy', N'Faculty of the Social Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Xena', N'Alvin', CAST(N'1974-01-01T00:00:00.000' AS DateTime), N'M', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Melodie', N'Scarlett', CAST(N'1975-01-01T00:00:00.000' AS DateTime), N'F', N'Geology', N'Faculty of Science')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Ginger', N'Shaine', CAST(N'1976-01-01T00:00:00.000' AS DateTime), N'M', N'Population Medicine', N'Faculty of Veterinary Medicine')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Stacey', N'Chaney', CAST(N'1977-01-01T00:00:00.000' AS DateTime), N'M', N'Physiotherapy', N'Faculty of Clinical Science and Dentistry')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Dante', N'Phoebe', CAST(N'1978-01-01T00:00:00.000' AS DateTime), N'F', N'Physiotherapy', N'Faculty of Clinical Science and Dentistry')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Lamar', N'Chastity', CAST(N'1979-01-01T00:00:00.000' AS DateTime), N'M', N'Nursing', N'Faculty of Clinical Science and Dentistry')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Alexis', N'Michael', CAST(N'1980-01-01T00:00:00.000' AS DateTime), N'F', N'Nursing', N'Faculty of Clinical Science and Dentistry')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Ivana', N'Damon', CAST(N'1981-01-01T00:00:00.000' AS DateTime), N'M', N'Biochemistry', N'Faculty of Basic Medical Sciences')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Callie', N'Macon', CAST(N'1982-01-01T00:00:00.000' AS DateTime), N'F', N'Library', N'Faculty of Education')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Amanda', N'Jorden', CAST(N'1983-01-01T00:00:00.000' AS DateTime), N'M', N'Library', N'Faculty of Education')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Kamal', N'Fiona', CAST(N'1984-01-01T00:00:00.000' AS DateTime), N'M', N' Archival & Information', N'Faculty of Education')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Ciara', N'Axel', CAST(N'1985-01-01T00:00:00.000' AS DateTime), N'F', N'Studies (LARIS)', N'Faculty of Education')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Abebe', N'Cherinet', CAST(N'2020-09-01T17:57:38.017' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Abebe', N'Desta', CAST(N'2020-09-01T17:57:38.017' AS DateTime), N'F', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Abebe', N'Ayele', CAST(N'2020-09-01T17:57:38.017' AS DateTime), N'F', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Test1', N'Test2', CAST(N'2020-09-01T17:57:38.017' AS DateTime), N'F', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Test3', N'TestLName', CAST(N'2020-09-09T17:35:30.327' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Test3', N'TestLName', CAST(N'2020-09-09T17:36:37.180' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Test4', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Test5', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Test6', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Test7', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Test8', N'TestLName', CAST(N'2020-09-09T17:41:13.573' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Yoseph', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Hadas', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentBackUp] ([FName], [LName], [DOB], [Gender], [DepartmentName], [FacultyName]) VALUES (N'Abenet', N'Bekele', NULL, N'M', N'Civil Engineering', N'Faculty of Technology')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (1, N'Aster', N'Bekele', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 14, N'F', NULL, N'1127')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (2, N'Keely', N'Leigh', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 14, N'F', NULL, N'1128')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (3, N'Bekele', N'Paki', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1117')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (4, N'Asnakech', N'Regan', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 2, N'F', NULL, N'1118')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (5, N'Ephrem', N'Steel', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1119')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (6, N'Feven', N'Lacey', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 2, N'F', NULL, N'1120')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (7, N'TSeganesh', N'Jennifer', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1122')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (8, N'Tsegaw', N'Isabella', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 3, N'M', NULL, N'1123')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (9, N'Yabsera', N'Ila', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1124')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (10, N'Hiroko', N'Inga', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1126')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (11, N'Miranda', N'Flynn', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 4, N'F', NULL, N'1127')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (12, N'Orla', N'Oren', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1128')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (13, N'Tara', N'Quynn', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1130')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (14, N'Regan', N'Maile', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 5, N'M', NULL, N'1131')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (15, N'Elton', N'Armand', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1133')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (16, N'Asnakech', N'Kirestin', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 7, N'F', NULL, N'1135')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (17, N'Martha', N'Lila', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 8, N'M', NULL, N'1137')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (18, N'Omar', N'Vance', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 9, N'F', NULL, N'1139')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (19, N'Zachery', N'Wyatt', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 10, N'M', NULL, N'1141')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (20, N'Zia', N'Vincent', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 11, N'F', NULL, N'1143')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (21, N'Salvador', N'Merritt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 12, N'M', NULL, N'1145')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (22, N'Nadine', N'Harper', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 13, N'M', NULL, N'1147')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (23, N'Pamela', N'Driscoll', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1138')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (24, N'Boris', N'Kadeem', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1140')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (25, N'Asnakech', N'Peter', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1142')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (26, N'Shana', N'Kalia', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1144')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (27, N'Hedy', N'Cruz', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 35, N'F', NULL, N'1174')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (28, N'Wallace', N'Tad', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 35, N'M', NULL, N'1175')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (29, N'Wallace', N'Brittany', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 12, N'M', NULL, N'1153')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (30, N'Constance', N'Igor', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1154')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (31, N'Solomon', N'Athena', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1144')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (32, N'Clark', N'Kennan', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'F', NULL, N'1145')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (33, N'Abebech', N'Josephine', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 1, N'F', NULL, N'1146')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (34, N'Wylie', N'Hedwig', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 2, N'F', NULL, N'1148')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (35, N'Desirae', N'Astra', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1149')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (36, N'Yoshi', N'Lani', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1150')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (37, N'Sigourney', N'Jessamine', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1152')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (38, N'Sara', N'Carson', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 3, N'M', NULL, N'1153')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (39, N'Nyssa', N'Oliver', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1154')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (40, N'Francesca', N'Sopoline', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1156')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (41, N'Autumn', N'Remedios', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 4, N'F', NULL, N'1157')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (42, N'Amity', N'Destiny', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1158')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (43, N'Tanner', N'Rahim', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', NULL, N'1160')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (44, N'Cyrus', N'Berk', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1161')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (45, N'Cooper', N'Christopher', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1163')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (46, N'Marah', N'Raya', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 7, N'F', NULL, N'1165')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (47, N'Kelly', N'Sebastian', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 8, N'M', NULL, N'1167')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (48, N'Mechelle', N'Valentine', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 9, N'F', NULL, N'1169')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (49, N'Denise', N'Ray', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 10, N'M', NULL, N'1171')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (50, N'Ivan', N'Marcia', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 11, N'M', NULL, N'1173')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (51, N'Olga', N'Selma', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1175')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (52, N'Imani', N'Tarik', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 13, N'M', NULL, N'1177')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (53, N'Quon', N'Rana', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1168')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (54, N'Berk', N'Rana', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1170')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (55, N'Ferdinand', N'Kyra', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1172')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (56, N'Tatiana', N'Iliana', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1174')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (57, N'Amanda', N'Phyllis', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 35, N'M', NULL, N'1204')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (58, N'Mohammad', N'Hamish', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 35, N'F', NULL, N'1205')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (59, N'Dorian', N'Alexis', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 12, N'M', NULL, N'1183')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (60, N'Rama', N'Chaim', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1184')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (61, N'Velma', N'Otto', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1174')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (62, N'Deacon', N'Buckminster', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 1, N'F', NULL, N'1175')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (63, N'Jacqueline', N'Myles', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1176')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (64, N'Stuart', N'Olympia', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1178')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (65, N'Sheila', N'Astra', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 2, N'F', NULL, N'1179')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (66, N'Phelan', N'Charity', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 2, N'M', NULL, N'1180')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (67, N'Dale', N'Fiona', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1182')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (68, N'Kessie', N'Connor', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 3, N'M', NULL, N'1183')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (69, N'Talon', N'Odysseus', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1184')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (70, N'Sade', N'Jason', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1186')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (71, N'Yoseph', N'Burke', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1187')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (72, N'Isaiah', N'Yetta', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 4, N'F', NULL, N'1188')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (73, N'Darryl', N'Tiger', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 5, N'M', NULL, N'1190')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (74, N'Astra', N'Grant', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 5, N'F', NULL, N'1191')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (75, N'Quin', N'Aaron', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 6, N'M', NULL, N'1193')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (76, N'Taylor', N'Zeus', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 7, N'F', NULL, N'1195')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (77, N'Merritt', N'Aiko', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 8, N'M', NULL, N'1197')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (78, N'Denise', N'Kirk', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 9, N'M', NULL, N'1199')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (79, N'Eden', N'Amal', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 10, N'F', NULL, N'1201')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (80, N'Grant', N'Graiden', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 11, N'M', NULL, N'1203')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (81, N'Stephanie', N'Gloria', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1205')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (82, N'Nell', N'Kimberly', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 13, N'M', NULL, N'1207')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (83, N'Colby', N'Norman', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 3, N'F', NULL, N'1198')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (84, N'Ivor', N'Iliana', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', NULL, N'1200')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (85, N'Evan', N'Stewart', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', NULL, N'1202')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (86, N'Lewis', N'Daphne', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 6, N'F', NULL, N'1204')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (87, N'Rooney', N'Conan', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 35, N'M', NULL, N'1234')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (88, N'Martena', N'Aristotle', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 35, N'F', NULL, N'1235')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (89, N'Xena', N'Alvin', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 12, N'M', NULL, N'1213')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (90, N'Melodie', N'Scarlett', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 12, N'F', NULL, N'1214')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (91, N'Ginger', N'Shaine', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 17, N'M', NULL, N'1220')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (92, N'Stacey', N'Chaney', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 18, N'M', NULL, N'1222')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (93, N'Dante', N'Phoebe', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 18, N'F', NULL, N'1223')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (94, N'Lamar', N'Chastity', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 19, N'M', NULL, N'1225')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (95, N'Alexis', N'Michael', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 19, N'F', NULL, N'1226')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (96, N'Ivana', N'Damon', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 20, N'M', NULL, N'1228')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (97, N'Callie', N'Macon', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 21, N'F', NULL, N'1230')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (98, N'Amanda', N'Jorden', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 21, N'M', NULL, N'1231')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (99, N'Kamal', N'Fiona', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 22, N'M', NULL, N'1233')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (100, N'Ciara', N'Axel', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 23, N'F', NULL, N'1235')
GO
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (101, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1214')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (102, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', NULL, N'1215')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (103, N'Abebe', N'Cherinet', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', NULL, N'1216')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (104, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', NULL, N'1217')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (105, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', NULL, N'1218')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (106, N'Abebe', N'Desta', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', NULL, N'1219')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (107, N'Abebe', N'Ayele', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', NULL, N'1220')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (108, N'Test1', N'Test2', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', NULL, N'1221')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (109, N'Test3', N'TestLName', CAST(N'2020-09-09T17:35:30.327' AS DateTime), 1, N'M', N'test@test.com', N'1222')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (110, N'Test3', N'TestLName', CAST(N'2020-09-09T17:36:37.180' AS DateTime), 1, N'M', N'test@test.com', N'1223')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (111, N'Test4', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1224')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (112, N'Test5', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1225')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (113, N'Test6', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1226')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (114, N'Test7', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1227')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (115, N'Test8', N'TestLName', CAST(N'2020-09-09T17:41:13.573' AS DateTime), 1, N'M', N'test@test.com', N'1228')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (116, N'Yoseph', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1229')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (117, N'Hadas', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1230')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (300, N'Abenet', N'Bekele', NULL, 1, N'M', NULL, N'1413')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (301, N'Abrham', N'Gebeyehu', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (302, N'Abebe', N'Desta', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (303, N'Abebe', N'Desta', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (304, N'Abebe', N'Desta', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[StudentDatawarehouse] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (305, N'Abebe', N'Desta', CAST(N'1980-12-12T00:00:00.000' AS DateTime), 1, N'M', N'abrham@test.com', N'123-45-1234')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'1', N'Halla', N'Bekele', N'1970-01-01 00:00:00', N'14', N'M', N'', N'1127')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'2', N'Keely', N'Leigh', N'1971-01-01 00:00:00', N'14', N'F', N'', N'1128')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'3', N'Bekele', N'Paki', N'1972-01-01 00:00:00', N'2', N'M', N'', N'1117')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'4', N'Asnakech', N'Regan', N'1973-01-01 00:00:00', N'2', N'F', N'', N'1118')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'5', N'Ephrem', N'Steel', N'1974-01-01 00:00:00', N'2', N'M', N'', N'1119')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'6', N'Feven', N'Lacey', N'1975-01-01 00:00:00', N'2', N'F', N'', N'1120')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'7', N'TSeganesh', N'Jennifer', N'1976-01-01 00:00:00', N'3', N'F', N'', N'1122')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'8', N'Tsegaw', N'Isabella', N'1977-01-01 00:00:00', N'3', N'M', N'', N'1123')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'9', N'Yabsera', N'Ila', N'1978-01-01 00:00:00', N'3', N'F', N'', N'1124')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'10', N'Hiroko', N'Inga', N'1979-01-01 00:00:00', N'4', N'M', N'', N'1126')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'11', N'Miranda', N'Flynn', N'1980-01-01 00:00:00', N'4', N'F', N'', N'1127')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'12', N'Orla', N'Oren', N'1981-01-01 00:00:00', N'4', N'M', N'', N'1128')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'13', N'Tara', N'Quynn', N'1982-01-01 00:00:00', N'5', N'F', N'', N'1130')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'14', N'Regan', N'Maile', N'1983-01-01 00:00:00', N'5', N'M', N'', N'1131')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'15', N'Elton', N'Armand', N'1984-01-01 00:00:00', N'6', N'M', N'', N'1133')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'16', N'Asnakech', N'Kirestin', N'1985-01-01 00:00:00', N'7', N'F', N'', N'1135')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'17', N'Martha', N'Lila', N'1986-01-01 00:00:00', N'8', N'M', N'', N'1137')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'18', N'Omar', N'Vance', N'1987-01-01 00:00:00', N'9', N'F', N'', N'1139')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'19', N'Zachery', N'Wyatt', N'1988-01-01 00:00:00', N'10', N'M', N'', N'1141')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'20', N'Zia', N'Vincent', N'1989-01-01 00:00:00', N'11', N'F', N'', N'1143')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'21', N'Salvador', N'Merritt', N'1990-01-01 00:00:00', N'12', N'M', N'', N'1145')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'22', N'Nadine', N'Harper', N'1991-01-01 00:00:00', N'13', N'M', N'', N'1147')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'23', N'Pamela', N'Driscoll', N'1992-01-01 00:00:00', N'3', N'F', N'', N'1138')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'24', N'Boris', N'Kadeem', N'1993-01-01 00:00:00', N'4', N'M', N'', N'1140')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'25', N'Asnakech', N'Peter', N'1994-01-01 00:00:00', N'5', N'F', N'', N'1142')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'26', N'Shana', N'Kalia', N'1995-01-01 00:00:00', N'6', N'M', N'', N'1144')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'27', N'Hedy', N'Cruz', N'1996-01-01 00:00:00', N'35', N'F', N'', N'1174')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'28', N'Wallace', N'Tad', N'1997-01-01 00:00:00', N'35', N'M', N'', N'1175')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'29', N'Wallace', N'Brittany', N'1998-01-01 00:00:00', N'12', N'M', N'', N'1153')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'30', N'Constance', N'Igor', N'1999-01-01 00:00:00', N'12', N'F', N'', N'1154')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'31', N'Solomon', N'Athena', N'2000-01-01 00:00:00', N'1', N'M', N'', N'1144')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'32', N'Clark', N'Kennan', N'2001-01-01 00:00:00', N'1', N'F', N'', N'1145')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'33', N'Abebech', N'Josephine', N'2002-01-01 00:00:00', N'1', N'F', N'', N'1146')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'34', N'Wylie', N'Hedwig', N'2003-01-01 00:00:00', N'2', N'F', N'', N'1148')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'35', N'Desirae', N'Astra', N'2004-01-01 00:00:00', N'2', N'M', N'', N'1149')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'36', N'Yoshi', N'Lani', N'2005-01-01 00:00:00', N'2', N'M', N'', N'1150')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'37', N'Sigourney', N'Jessamine', N'2006-01-01 00:00:00', N'3', N'F', N'', N'1152')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'38', N'Sara', N'Carson', N'2007-01-01 00:00:00', N'3', N'M', N'', N'1153')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'39', N'Nyssa', N'Oliver', N'2008-01-01 00:00:00', N'3', N'F', N'', N'1154')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'40', N'Francesca', N'Sopoline', N'2009-01-01 00:00:00', N'4', N'M', N'', N'1156')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'41', N'Autumn', N'Remedios', N'2010-01-01 00:00:00', N'4', N'F', N'', N'1157')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'42', N'Amity', N'Destiny', N'2011-01-01 00:00:00', N'4', N'M', N'', N'1158')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'43', N'Tanner', N'Rahim', N'1970-01-01 00:00:00', N'5', N'M', N'', N'1160')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'44', N'Cyrus', N'Berk', N'1971-01-01 00:00:00', N'5', N'F', N'', N'1161')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'45', N'Cooper', N'Christopher', N'1972-01-01 00:00:00', N'6', N'M', N'', N'1163')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'46', N'Marah', N'Raya', N'1973-01-01 00:00:00', N'7', N'F', N'', N'1165')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'47', N'Kelly', N'Sebastian', N'1974-01-01 00:00:00', N'8', N'M', N'', N'1167')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'48', N'Mechelle', N'Valentine', N'1975-01-01 00:00:00', N'9', N'F', N'', N'1169')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'49', N'Denise', N'Ray', N'1976-01-01 00:00:00', N'10', N'M', N'', N'1171')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'50', N'Ivan', N'Marcia', N'1977-01-01 00:00:00', N'11', N'M', N'', N'1173')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'51', N'Olga', N'Selma', N'1978-01-01 00:00:00', N'12', N'F', N'', N'1175')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'52', N'Imani', N'Tarik', N'1979-01-01 00:00:00', N'13', N'M', N'', N'1177')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'53', N'Quon', N'Rana', N'1980-01-01 00:00:00', N'3', N'F', N'', N'1168')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'54', N'Berk', N'Rana', N'1981-01-01 00:00:00', N'4', N'M', N'', N'1170')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'55', N'Ferdinand', N'Kyra', N'1982-01-01 00:00:00', N'5', N'F', N'', N'1172')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'56', N'Tatiana', N'Iliana', N'1983-01-01 00:00:00', N'6', N'M', N'', N'1174')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'57', N'Amanda', N'Phyllis', N'1984-01-01 00:00:00', N'35', N'M', N'', N'1204')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'58', N'Mohammad', N'Hamish', N'1985-01-01 00:00:00', N'35', N'F', N'', N'1205')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'59', N'Dorian', N'Alexis', N'1986-01-01 00:00:00', N'12', N'M', N'', N'1183')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'60', N'Rama', N'Chaim', N'1987-01-01 00:00:00', N'12', N'F', N'', N'1184')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'61', N'Velma', N'Otto', N'1988-01-01 00:00:00', N'1', N'M', N'', N'1174')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'62', N'Deacon', N'Buckminster', N'1989-01-01 00:00:00', N'1', N'F', N'', N'1175')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'63', N'Jacqueline', N'Myles', N'1990-01-01 00:00:00', N'1', N'M', N'', N'1176')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'64', N'Stuart', N'Olympia', N'1991-01-01 00:00:00', N'2', N'M', N'', N'1178')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'65', N'Sheila', N'Astra', N'1992-01-01 00:00:00', N'2', N'F', N'', N'1179')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'66', N'Phelan', N'Charity', N'1993-01-01 00:00:00', N'2', N'M', N'', N'1180')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'67', N'Dale', N'Fiona', N'1994-01-01 00:00:00', N'3', N'F', N'', N'1182')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'68', N'Kessie', N'Connor', N'1995-01-01 00:00:00', N'3', N'M', N'', N'1183')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'69', N'Talon', N'Odysseus', N'1996-01-01 00:00:00', N'3', N'F', N'', N'1184')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'70', N'Sade', N'Jason', N'1997-01-01 00:00:00', N'4', N'M', N'', N'1186')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'71', N'Yoseph', N'Burke', N'1998-01-01 00:00:00', N'4', N'M', N'', N'1187')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'72', N'Isaiah', N'Yetta', N'1999-01-01 00:00:00', N'4', N'F', N'', N'1188')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'73', N'Darryl', N'Tiger', N'2000-01-01 00:00:00', N'5', N'M', N'', N'1190')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'74', N'Astra', N'Grant', N'2001-01-01 00:00:00', N'5', N'F', N'', N'1191')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'75', N'Quin', N'Aaron', N'2002-01-01 00:00:00', N'6', N'M', N'', N'1193')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'76', N'Taylor', N'Zeus', N'2003-01-01 00:00:00', N'7', N'F', N'', N'1195')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'77', N'Merritt', N'Aiko', N'2004-01-01 00:00:00', N'8', N'M', N'', N'1197')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'78', N'Denise', N'Kirk', N'2005-01-01 00:00:00', N'9', N'M', N'', N'1199')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'79', N'Eden', N'Amal', N'2006-01-01 00:00:00', N'10', N'F', N'', N'1201')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'80', N'Grant', N'Graiden', N'2007-01-01 00:00:00', N'11', N'M', N'', N'1203')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'81', N'Stephanie', N'Gloria', N'2008-01-01 00:00:00', N'12', N'F', N'', N'1205')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'82', N'Nell', N'Kimberly', N'2009-01-01 00:00:00', N'13', N'M', N'', N'1207')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'83', N'Colby', N'Norman', N'2010-01-01 00:00:00', N'3', N'F', N'', N'1198')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'84', N'Ivor', N'Iliana', N'2011-01-01 00:00:00', N'4', N'M', N'', N'1200')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'85', N'Evan', N'Stewart', N'1970-01-01 00:00:00', N'5', N'M', N'', N'1202')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'86', N'Lewis', N'Daphne', N'1971-01-01 00:00:00', N'6', N'F', N'', N'1204')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'87', N'Rooney', N'Conan', N'1972-01-01 00:00:00', N'35', N'M', N'', N'1234')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'88', N'Martena', N'Aristotle', N'1973-01-01 00:00:00', N'35', N'F', N'', N'1235')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'89', N'Xena', N'Alvin', N'1974-01-01 00:00:00', N'12', N'M', N'', N'1213')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'90', N'Melodie', N'Scarlett', N'1975-01-01 00:00:00', N'12', N'F', N'', N'1214')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'91', N'Ginger', N'Shaine', N'1976-01-01 00:00:00', N'17', N'M', N'', N'1220')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'92', N'Stacey', N'Chaney', N'1977-01-01 00:00:00', N'18', N'M', N'', N'1222')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'93', N'Dante', N'Phoebe', N'1978-01-01 00:00:00', N'18', N'F', N'', N'1223')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'94', N'Lamar', N'Chastity', N'1979-01-01 00:00:00', N'19', N'M', N'', N'1225')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'95', N'Alexis', N'Michael', N'1980-01-01 00:00:00', N'19', N'F', N'', N'1226')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'96', N'Ivana', N'Damon', N'1981-01-01 00:00:00', N'20', N'M', N'', N'1228')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'97', N'Callie', N'Macon', N'1982-01-01 00:00:00', N'21', N'F', N'', N'1230')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'98', N'Amanda', N'Jorden', N'1983-01-01 00:00:00', N'21', N'M', N'', N'1231')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'99', N'Kamal', N'Fiona', N'1984-01-01 00:00:00', N'22', N'M', N'', N'1233')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'100', N'Ciara', N'Axel', N'1985-01-01 00:00:00', N'23', N'F', N'', N'1235')
GO
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'101', N'Yoseph', N'Adugna', N'1978-02-02 00:00:00', N'1', N'M', N'', N'1214')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'102', N'Yoseph', N'Adugna', N'1978-02-02 00:00:00', N'1', N'M', N'', N'1215')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'103', N'Abebe', N'Cherinet', N'2020-09-01 17:57:38.017000000', N'1', N'M', N'', N'1216')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'104', N'Aster', N'Abebe', N'2020-09-01 17:57:38.017000000', N'1', N'M', N'', N'1217')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'105', N'Aster', N'Abebe', N'2020-09-01 17:57:38.017000000', N'1', N'M', N'', N'1218')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'106', N'Abebe', N'Desta', N'2020-09-01 17:57:38.017000000', N'1', N'F', N'', N'1219')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'107', N'Abebe', N'Ayele', N'2020-09-01 17:57:38.017000000', N'1', N'F', N'', N'1220')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'108', N'Test1', N'Test2', N'2020-09-01 17:57:38.017000000', N'1', N'F', N'', N'1221')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'109', N'Test3', N'TestLName', N'2020-09-09 17:35:30.327000000', N'1', N'M', N'test@test.com', N'1222')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'110', N'Test3', N'TestLName', N'2020-09-09 17:36:37.180000000', N'1', N'M', N'test@test.com', N'1223')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'111', N'Test4', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1224')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'112', N'Test5', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1225')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'113', N'Test6', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1226')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'114', N'Test7', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1227')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'115', N'Test8', N'TestLName', N'2020-09-09 17:41:13.573000000', N'1', N'M', N'test@test.com', N'1228')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'116', N'Yoseph', N'Kassaye', N'1970-01-01 00:00:00', N'1', N'M', N'tetst@test.com', N'1229')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'117', N'Hadas', N'Kassaye', N'1970-01-01 00:00:00', N'1', N'M', N'tetst@test.com', N'1230')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'300', N'Abenet', N'Bekele', N'', N'1', N'M', N'', N'1413')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'1', N'Halla', N'Bekele', N'1970-01-01 00:00:00', N'14', N'M', N'', N'1127')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'2', N'Keely', N'Leigh', N'1971-01-01 00:00:00', N'14', N'F', N'', N'1128')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'3', N'Bekele', N'Paki', N'1972-01-01 00:00:00', N'2', N'M', N'', N'1117')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'4', N'Asnakech', N'Regan', N'1973-01-01 00:00:00', N'2', N'F', N'', N'1118')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'5', N'Ephrem', N'Steel', N'1974-01-01 00:00:00', N'2', N'M', N'', N'1119')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'6', N'Feven', N'Lacey', N'1975-01-01 00:00:00', N'2', N'F', N'', N'1120')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'7', N'TSeganesh', N'Jennifer', N'1976-01-01 00:00:00', N'3', N'F', N'', N'1122')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'8', N'Tsegaw', N'Isabella', N'1977-01-01 00:00:00', N'3', N'M', N'', N'1123')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'9', N'Yabsera', N'Ila', N'1978-01-01 00:00:00', N'3', N'F', N'', N'1124')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'10', N'Hiroko', N'Inga', N'1979-01-01 00:00:00', N'4', N'M', N'', N'1126')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'11', N'Miranda', N'Flynn', N'1980-01-01 00:00:00', N'4', N'F', N'', N'1127')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'12', N'Orla', N'Oren', N'1981-01-01 00:00:00', N'4', N'M', N'', N'1128')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'13', N'Tara', N'Quynn', N'1982-01-01 00:00:00', N'5', N'F', N'', N'1130')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'14', N'Regan', N'Maile', N'1983-01-01 00:00:00', N'5', N'M', N'', N'1131')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'15', N'Elton', N'Armand', N'1984-01-01 00:00:00', N'6', N'M', N'', N'1133')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'16', N'Asnakech', N'Kirestin', N'1985-01-01 00:00:00', N'7', N'F', N'', N'1135')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'17', N'Martha', N'Lila', N'1986-01-01 00:00:00', N'8', N'M', N'', N'1137')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'18', N'Omar', N'Vance', N'1987-01-01 00:00:00', N'9', N'F', N'', N'1139')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'19', N'Zachery', N'Wyatt', N'1988-01-01 00:00:00', N'10', N'M', N'', N'1141')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'20', N'Zia', N'Vincent', N'1989-01-01 00:00:00', N'11', N'F', N'', N'1143')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'21', N'Salvador', N'Merritt', N'1990-01-01 00:00:00', N'12', N'M', N'', N'1145')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'22', N'Nadine', N'Harper', N'1991-01-01 00:00:00', N'13', N'M', N'', N'1147')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'23', N'Pamela', N'Driscoll', N'1992-01-01 00:00:00', N'3', N'F', N'', N'1138')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'24', N'Boris', N'Kadeem', N'1993-01-01 00:00:00', N'4', N'M', N'', N'1140')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'25', N'Asnakech', N'Peter', N'1994-01-01 00:00:00', N'5', N'F', N'', N'1142')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'26', N'Shana', N'Kalia', N'1995-01-01 00:00:00', N'6', N'M', N'', N'1144')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'27', N'Hedy', N'Cruz', N'1996-01-01 00:00:00', N'35', N'F', N'', N'1174')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'28', N'Wallace', N'Tad', N'1997-01-01 00:00:00', N'35', N'M', N'', N'1175')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'29', N'Wallace', N'Brittany', N'1998-01-01 00:00:00', N'12', N'M', N'', N'1153')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'30', N'Constance', N'Igor', N'1999-01-01 00:00:00', N'12', N'F', N'', N'1154')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'31', N'Solomon', N'Athena', N'2000-01-01 00:00:00', N'1', N'M', N'', N'1144')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'32', N'Clark', N'Kennan', N'2001-01-01 00:00:00', N'1', N'F', N'', N'1145')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'33', N'Abebech', N'Josephine', N'2002-01-01 00:00:00', N'1', N'F', N'', N'1146')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'34', N'Wylie', N'Hedwig', N'2003-01-01 00:00:00', N'2', N'F', N'', N'1148')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'35', N'Desirae', N'Astra', N'2004-01-01 00:00:00', N'2', N'M', N'', N'1149')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'36', N'Yoshi', N'Lani', N'2005-01-01 00:00:00', N'2', N'M', N'', N'1150')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'37', N'Sigourney', N'Jessamine', N'2006-01-01 00:00:00', N'3', N'F', N'', N'1152')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'38', N'Sara', N'Carson', N'2007-01-01 00:00:00', N'3', N'M', N'', N'1153')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'39', N'Nyssa', N'Oliver', N'2008-01-01 00:00:00', N'3', N'F', N'', N'1154')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'40', N'Francesca', N'Sopoline', N'2009-01-01 00:00:00', N'4', N'M', N'', N'1156')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'41', N'Autumn', N'Remedios', N'2010-01-01 00:00:00', N'4', N'F', N'', N'1157')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'42', N'Amity', N'Destiny', N'2011-01-01 00:00:00', N'4', N'M', N'', N'1158')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'43', N'Tanner', N'Rahim', N'1970-01-01 00:00:00', N'5', N'M', N'', N'1160')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'44', N'Cyrus', N'Berk', N'1971-01-01 00:00:00', N'5', N'F', N'', N'1161')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'45', N'Cooper', N'Christopher', N'1972-01-01 00:00:00', N'6', N'M', N'', N'1163')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'46', N'Marah', N'Raya', N'1973-01-01 00:00:00', N'7', N'F', N'', N'1165')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'47', N'Kelly', N'Sebastian', N'1974-01-01 00:00:00', N'8', N'M', N'', N'1167')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'48', N'Mechelle', N'Valentine', N'1975-01-01 00:00:00', N'9', N'F', N'', N'1169')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'49', N'Denise', N'Ray', N'1976-01-01 00:00:00', N'10', N'M', N'', N'1171')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'50', N'Ivan', N'Marcia', N'1977-01-01 00:00:00', N'11', N'M', N'', N'1173')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'51', N'Olga', N'Selma', N'1978-01-01 00:00:00', N'12', N'F', N'', N'1175')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'52', N'Imani', N'Tarik', N'1979-01-01 00:00:00', N'13', N'M', N'', N'1177')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'53', N'Quon', N'Rana', N'1980-01-01 00:00:00', N'3', N'F', N'', N'1168')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'54', N'Berk', N'Rana', N'1981-01-01 00:00:00', N'4', N'M', N'', N'1170')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'55', N'Ferdinand', N'Kyra', N'1982-01-01 00:00:00', N'5', N'F', N'', N'1172')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'56', N'Tatiana', N'Iliana', N'1983-01-01 00:00:00', N'6', N'M', N'', N'1174')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'57', N'Amanda', N'Phyllis', N'1984-01-01 00:00:00', N'35', N'M', N'', N'1204')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'58', N'Mohammad', N'Hamish', N'1985-01-01 00:00:00', N'35', N'F', N'', N'1205')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'59', N'Dorian', N'Alexis', N'1986-01-01 00:00:00', N'12', N'M', N'', N'1183')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'60', N'Rama', N'Chaim', N'1987-01-01 00:00:00', N'12', N'F', N'', N'1184')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'61', N'Velma', N'Otto', N'1988-01-01 00:00:00', N'1', N'M', N'', N'1174')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'62', N'Deacon', N'Buckminster', N'1989-01-01 00:00:00', N'1', N'F', N'', N'1175')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'63', N'Jacqueline', N'Myles', N'1990-01-01 00:00:00', N'1', N'M', N'', N'1176')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'64', N'Stuart', N'Olympia', N'1991-01-01 00:00:00', N'2', N'M', N'', N'1178')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'65', N'Sheila', N'Astra', N'1992-01-01 00:00:00', N'2', N'F', N'', N'1179')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'66', N'Phelan', N'Charity', N'1993-01-01 00:00:00', N'2', N'M', N'', N'1180')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'67', N'Dale', N'Fiona', N'1994-01-01 00:00:00', N'3', N'F', N'', N'1182')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'68', N'Kessie', N'Connor', N'1995-01-01 00:00:00', N'3', N'M', N'', N'1183')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'69', N'Talon', N'Odysseus', N'1996-01-01 00:00:00', N'3', N'F', N'', N'1184')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'70', N'Sade', N'Jason', N'1997-01-01 00:00:00', N'4', N'M', N'', N'1186')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'71', N'Yoseph', N'Burke', N'1998-01-01 00:00:00', N'4', N'M', N'', N'1187')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'72', N'Isaiah', N'Yetta', N'1999-01-01 00:00:00', N'4', N'F', N'', N'1188')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'73', N'Darryl', N'Tiger', N'2000-01-01 00:00:00', N'5', N'M', N'', N'1190')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'74', N'Astra', N'Grant', N'2001-01-01 00:00:00', N'5', N'F', N'', N'1191')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'75', N'Quin', N'Aaron', N'2002-01-01 00:00:00', N'6', N'M', N'', N'1193')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'76', N'Taylor', N'Zeus', N'2003-01-01 00:00:00', N'7', N'F', N'', N'1195')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'77', N'Merritt', N'Aiko', N'2004-01-01 00:00:00', N'8', N'M', N'', N'1197')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'78', N'Denise', N'Kirk', N'2005-01-01 00:00:00', N'9', N'M', N'', N'1199')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'79', N'Eden', N'Amal', N'2006-01-01 00:00:00', N'10', N'F', N'', N'1201')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'80', N'Grant', N'Graiden', N'2007-01-01 00:00:00', N'11', N'M', N'', N'1203')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'81', N'Stephanie', N'Gloria', N'2008-01-01 00:00:00', N'12', N'F', N'', N'1205')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'82', N'Nell', N'Kimberly', N'2009-01-01 00:00:00', N'13', N'M', N'', N'1207')
GO
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'83', N'Colby', N'Norman', N'2010-01-01 00:00:00', N'3', N'F', N'', N'1198')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'84', N'Ivor', N'Iliana', N'2011-01-01 00:00:00', N'4', N'M', N'', N'1200')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'85', N'Evan', N'Stewart', N'1970-01-01 00:00:00', N'5', N'M', N'', N'1202')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'86', N'Lewis', N'Daphne', N'1971-01-01 00:00:00', N'6', N'F', N'', N'1204')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'87', N'Rooney', N'Conan', N'1972-01-01 00:00:00', N'35', N'M', N'', N'1234')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'88', N'Martena', N'Aristotle', N'1973-01-01 00:00:00', N'35', N'F', N'', N'1235')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'89', N'Xena', N'Alvin', N'1974-01-01 00:00:00', N'12', N'M', N'', N'1213')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'90', N'Melodie', N'Scarlett', N'1975-01-01 00:00:00', N'12', N'F', N'', N'1214')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'91', N'Ginger', N'Shaine', N'1976-01-01 00:00:00', N'17', N'M', N'', N'1220')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'92', N'Stacey', N'Chaney', N'1977-01-01 00:00:00', N'18', N'M', N'', N'1222')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'93', N'Dante', N'Phoebe', N'1978-01-01 00:00:00', N'18', N'F', N'', N'1223')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'94', N'Lamar', N'Chastity', N'1979-01-01 00:00:00', N'19', N'M', N'', N'1225')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'95', N'Alexis', N'Michael', N'1980-01-01 00:00:00', N'19', N'F', N'', N'1226')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'96', N'Ivana', N'Damon', N'1981-01-01 00:00:00', N'20', N'M', N'', N'1228')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'97', N'Callie', N'Macon', N'1982-01-01 00:00:00', N'21', N'F', N'', N'1230')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'98', N'Amanda', N'Jorden', N'1983-01-01 00:00:00', N'21', N'M', N'', N'1231')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'99', N'Kamal', N'Fiona', N'1984-01-01 00:00:00', N'22', N'M', N'', N'1233')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'100', N'Ciara', N'Axel', N'1985-01-01 00:00:00', N'23', N'F', N'', N'1235')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'101', N'Yoseph', N'Adugna', N'1978-02-02 00:00:00', N'1', N'M', N'', N'1214')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'102', N'Yoseph', N'Adugna', N'1978-02-02 00:00:00', N'1', N'M', N'', N'1215')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'103', N'Abebe', N'Cherinet', N'2020-09-01 17:57:38.017000000', N'1', N'M', N'', N'1216')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'104', N'Aster', N'Abebe', N'2020-09-01 17:57:38.017000000', N'1', N'M', N'', N'1217')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'105', N'Aster', N'Abebe', N'2020-09-01 17:57:38.017000000', N'1', N'M', N'', N'1218')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'106', N'Abebe', N'Desta', N'2020-09-01 17:57:38.017000000', N'1', N'F', N'', N'1219')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'107', N'Abebe', N'Ayele', N'2020-09-01 17:57:38.017000000', N'1', N'F', N'', N'1220')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'108', N'Test1', N'Test2', N'2020-09-01 17:57:38.017000000', N'1', N'F', N'', N'1221')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'109', N'Test3', N'TestLName', N'2020-09-09 17:35:30.327000000', N'1', N'M', N'test@test.com', N'1222')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'110', N'Test3', N'TestLName', N'2020-09-09 17:36:37.180000000', N'1', N'M', N'test@test.com', N'1223')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'111', N'Test4', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1224')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'112', N'Test5', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1225')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'113', N'Test6', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1226')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'114', N'Test7', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1227')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'115', N'Test8', N'TestLName', N'2020-09-09 17:41:13.573000000', N'1', N'M', N'test@test.com', N'1228')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'116', N'Yoseph', N'Kassaye', N'1970-01-01 00:00:00', N'1', N'M', N'tetst@test.com', N'1229')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'117', N'Hadas', N'Kassaye', N'1970-01-01 00:00:00', N'1', N'M', N'tetst@test.com', N'1230')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'300', N'Abenet', N'Bekele', N'', N'1', N'M', N'', N'1413')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'1', N'Halla', N'Bekele', N'1970-01-01 00:00:00', N'14', N'M', N'', N'1127')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'2', N'Keely', N'Leigh', N'1971-01-01 00:00:00', N'14', N'F', N'', N'1128')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'3', N'Bekele', N'Paki', N'1972-01-01 00:00:00', N'2', N'M', N'', N'1117')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'4', N'Asnakech', N'Regan', N'1973-01-01 00:00:00', N'2', N'F', N'', N'1118')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'5', N'Ephrem', N'Steel', N'1974-01-01 00:00:00', N'2', N'M', N'', N'1119')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'6', N'Feven', N'Lacey', N'1975-01-01 00:00:00', N'2', N'F', N'', N'1120')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'7', N'TSeganesh', N'Jennifer', N'1976-01-01 00:00:00', N'3', N'F', N'', N'1122')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'8', N'Tsegaw', N'Isabella', N'1977-01-01 00:00:00', N'3', N'M', N'', N'1123')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'9', N'Yabsera', N'Ila', N'1978-01-01 00:00:00', N'3', N'F', N'', N'1124')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'10', N'Hiroko', N'Inga', N'1979-01-01 00:00:00', N'4', N'M', N'', N'1126')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'11', N'Miranda', N'Flynn', N'1980-01-01 00:00:00', N'4', N'F', N'', N'1127')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'12', N'Orla', N'Oren', N'1981-01-01 00:00:00', N'4', N'M', N'', N'1128')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'13', N'Tara', N'Quynn', N'1982-01-01 00:00:00', N'5', N'F', N'', N'1130')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'14', N'Regan', N'Maile', N'1983-01-01 00:00:00', N'5', N'M', N'', N'1131')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'15', N'Elton', N'Armand', N'1984-01-01 00:00:00', N'6', N'M', N'', N'1133')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'16', N'Asnakech', N'Kirestin', N'1985-01-01 00:00:00', N'7', N'F', N'', N'1135')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'17', N'Martha', N'Lila', N'1986-01-01 00:00:00', N'8', N'M', N'', N'1137')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'18', N'Omar', N'Vance', N'1987-01-01 00:00:00', N'9', N'F', N'', N'1139')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'19', N'Zachery', N'Wyatt', N'1988-01-01 00:00:00', N'10', N'M', N'', N'1141')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'20', N'Zia', N'Vincent', N'1989-01-01 00:00:00', N'11', N'F', N'', N'1143')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'21', N'Salvador', N'Merritt', N'1990-01-01 00:00:00', N'12', N'M', N'', N'1145')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'22', N'Nadine', N'Harper', N'1991-01-01 00:00:00', N'13', N'M', N'', N'1147')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'23', N'Pamela', N'Driscoll', N'1992-01-01 00:00:00', N'3', N'F', N'', N'1138')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'24', N'Boris', N'Kadeem', N'1993-01-01 00:00:00', N'4', N'M', N'', N'1140')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'25', N'Asnakech', N'Peter', N'1994-01-01 00:00:00', N'5', N'F', N'', N'1142')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'26', N'Shana', N'Kalia', N'1995-01-01 00:00:00', N'6', N'M', N'', N'1144')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'27', N'Hedy', N'Cruz', N'1996-01-01 00:00:00', N'35', N'F', N'', N'1174')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'28', N'Wallace', N'Tad', N'1997-01-01 00:00:00', N'35', N'M', N'', N'1175')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'29', N'Wallace', N'Brittany', N'1998-01-01 00:00:00', N'12', N'M', N'', N'1153')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'30', N'Constance', N'Igor', N'1999-01-01 00:00:00', N'12', N'F', N'', N'1154')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'31', N'Solomon', N'Athena', N'2000-01-01 00:00:00', N'1', N'M', N'', N'1144')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'32', N'Clark', N'Kennan', N'2001-01-01 00:00:00', N'1', N'F', N'', N'1145')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'33', N'Abebech', N'Josephine', N'2002-01-01 00:00:00', N'1', N'F', N'', N'1146')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'34', N'Wylie', N'Hedwig', N'2003-01-01 00:00:00', N'2', N'F', N'', N'1148')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'35', N'Desirae', N'Astra', N'2004-01-01 00:00:00', N'2', N'M', N'', N'1149')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'36', N'Yoshi', N'Lani', N'2005-01-01 00:00:00', N'2', N'M', N'', N'1150')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'37', N'Sigourney', N'Jessamine', N'2006-01-01 00:00:00', N'3', N'F', N'', N'1152')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'38', N'Sara', N'Carson', N'2007-01-01 00:00:00', N'3', N'M', N'', N'1153')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'39', N'Nyssa', N'Oliver', N'2008-01-01 00:00:00', N'3', N'F', N'', N'1154')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'40', N'Francesca', N'Sopoline', N'2009-01-01 00:00:00', N'4', N'M', N'', N'1156')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'41', N'Autumn', N'Remedios', N'2010-01-01 00:00:00', N'4', N'F', N'', N'1157')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'42', N'Amity', N'Destiny', N'2011-01-01 00:00:00', N'4', N'M', N'', N'1158')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'43', N'Tanner', N'Rahim', N'1970-01-01 00:00:00', N'5', N'M', N'', N'1160')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'44', N'Cyrus', N'Berk', N'1971-01-01 00:00:00', N'5', N'F', N'', N'1161')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'45', N'Cooper', N'Christopher', N'1972-01-01 00:00:00', N'6', N'M', N'', N'1163')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'46', N'Marah', N'Raya', N'1973-01-01 00:00:00', N'7', N'F', N'', N'1165')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'47', N'Kelly', N'Sebastian', N'1974-01-01 00:00:00', N'8', N'M', N'', N'1167')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'48', N'Mechelle', N'Valentine', N'1975-01-01 00:00:00', N'9', N'F', N'', N'1169')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'49', N'Denise', N'Ray', N'1976-01-01 00:00:00', N'10', N'M', N'', N'1171')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'50', N'Ivan', N'Marcia', N'1977-01-01 00:00:00', N'11', N'M', N'', N'1173')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'51', N'Olga', N'Selma', N'1978-01-01 00:00:00', N'12', N'F', N'', N'1175')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'52', N'Imani', N'Tarik', N'1979-01-01 00:00:00', N'13', N'M', N'', N'1177')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'53', N'Quon', N'Rana', N'1980-01-01 00:00:00', N'3', N'F', N'', N'1168')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'54', N'Berk', N'Rana', N'1981-01-01 00:00:00', N'4', N'M', N'', N'1170')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'55', N'Ferdinand', N'Kyra', N'1982-01-01 00:00:00', N'5', N'F', N'', N'1172')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'56', N'Tatiana', N'Iliana', N'1983-01-01 00:00:00', N'6', N'M', N'', N'1174')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'57', N'Amanda', N'Phyllis', N'1984-01-01 00:00:00', N'35', N'M', N'', N'1204')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'58', N'Mohammad', N'Hamish', N'1985-01-01 00:00:00', N'35', N'F', N'', N'1205')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'59', N'Dorian', N'Alexis', N'1986-01-01 00:00:00', N'12', N'M', N'', N'1183')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'60', N'Rama', N'Chaim', N'1987-01-01 00:00:00', N'12', N'F', N'', N'1184')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'61', N'Velma', N'Otto', N'1988-01-01 00:00:00', N'1', N'M', N'', N'1174')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'62', N'Deacon', N'Buckminster', N'1989-01-01 00:00:00', N'1', N'F', N'', N'1175')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'63', N'Jacqueline', N'Myles', N'1990-01-01 00:00:00', N'1', N'M', N'', N'1176')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'64', N'Stuart', N'Olympia', N'1991-01-01 00:00:00', N'2', N'M', N'', N'1178')
GO
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'65', N'Sheila', N'Astra', N'1992-01-01 00:00:00', N'2', N'F', N'', N'1179')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'66', N'Phelan', N'Charity', N'1993-01-01 00:00:00', N'2', N'M', N'', N'1180')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'67', N'Dale', N'Fiona', N'1994-01-01 00:00:00', N'3', N'F', N'', N'1182')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'68', N'Kessie', N'Connor', N'1995-01-01 00:00:00', N'3', N'M', N'', N'1183')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'69', N'Talon', N'Odysseus', N'1996-01-01 00:00:00', N'3', N'F', N'', N'1184')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'70', N'Sade', N'Jason', N'1997-01-01 00:00:00', N'4', N'M', N'', N'1186')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'71', N'Yoseph', N'Burke', N'1998-01-01 00:00:00', N'4', N'M', N'', N'1187')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'72', N'Isaiah', N'Yetta', N'1999-01-01 00:00:00', N'4', N'F', N'', N'1188')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'73', N'Darryl', N'Tiger', N'2000-01-01 00:00:00', N'5', N'M', N'', N'1190')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'74', N'Astra', N'Grant', N'2001-01-01 00:00:00', N'5', N'F', N'', N'1191')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'75', N'Quin', N'Aaron', N'2002-01-01 00:00:00', N'6', N'M', N'', N'1193')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'76', N'Taylor', N'Zeus', N'2003-01-01 00:00:00', N'7', N'F', N'', N'1195')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'77', N'Merritt', N'Aiko', N'2004-01-01 00:00:00', N'8', N'M', N'', N'1197')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'78', N'Denise', N'Kirk', N'2005-01-01 00:00:00', N'9', N'M', N'', N'1199')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'79', N'Eden', N'Amal', N'2006-01-01 00:00:00', N'10', N'F', N'', N'1201')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'80', N'Grant', N'Graiden', N'2007-01-01 00:00:00', N'11', N'M', N'', N'1203')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'81', N'Stephanie', N'Gloria', N'2008-01-01 00:00:00', N'12', N'F', N'', N'1205')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'82', N'Nell', N'Kimberly', N'2009-01-01 00:00:00', N'13', N'M', N'', N'1207')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'83', N'Colby', N'Norman', N'2010-01-01 00:00:00', N'3', N'F', N'', N'1198')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'84', N'Ivor', N'Iliana', N'2011-01-01 00:00:00', N'4', N'M', N'', N'1200')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'85', N'Evan', N'Stewart', N'1970-01-01 00:00:00', N'5', N'M', N'', N'1202')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'86', N'Lewis', N'Daphne', N'1971-01-01 00:00:00', N'6', N'F', N'', N'1204')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'87', N'Rooney', N'Conan', N'1972-01-01 00:00:00', N'35', N'M', N'', N'1234')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'88', N'Martena', N'Aristotle', N'1973-01-01 00:00:00', N'35', N'F', N'', N'1235')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'89', N'Xena', N'Alvin', N'1974-01-01 00:00:00', N'12', N'M', N'', N'1213')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'90', N'Melodie', N'Scarlett', N'1975-01-01 00:00:00', N'12', N'F', N'', N'1214')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'91', N'Ginger', N'Shaine', N'1976-01-01 00:00:00', N'17', N'M', N'', N'1220')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'92', N'Stacey', N'Chaney', N'1977-01-01 00:00:00', N'18', N'M', N'', N'1222')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'93', N'Dante', N'Phoebe', N'1978-01-01 00:00:00', N'18', N'F', N'', N'1223')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'94', N'Lamar', N'Chastity', N'1979-01-01 00:00:00', N'19', N'M', N'', N'1225')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'95', N'Alexis', N'Michael', N'1980-01-01 00:00:00', N'19', N'F', N'', N'1226')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'96', N'Ivana', N'Damon', N'1981-01-01 00:00:00', N'20', N'M', N'', N'1228')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'97', N'Callie', N'Macon', N'1982-01-01 00:00:00', N'21', N'F', N'', N'1230')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'98', N'Amanda', N'Jorden', N'1983-01-01 00:00:00', N'21', N'M', N'', N'1231')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'99', N'Kamal', N'Fiona', N'1984-01-01 00:00:00', N'22', N'M', N'', N'1233')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'100', N'Ciara', N'Axel', N'1985-01-01 00:00:00', N'23', N'F', N'', N'1235')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'101', N'Yoseph', N'Adugna', N'1978-02-02 00:00:00', N'1', N'M', N'', N'1214')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'102', N'Yoseph', N'Adugna', N'1978-02-02 00:00:00', N'1', N'M', N'', N'1215')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'103', N'Abebe', N'Cherinet', N'2020-09-01 17:57:38.017000000', N'1', N'M', N'', N'1216')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'104', N'Aster', N'Abebe', N'2020-09-01 17:57:38.017000000', N'1', N'M', N'', N'1217')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'105', N'Aster', N'Abebe', N'2020-09-01 17:57:38.017000000', N'1', N'M', N'', N'1218')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'106', N'Abebe', N'Desta', N'2020-09-01 17:57:38.017000000', N'1', N'F', N'', N'1219')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'107', N'Abebe', N'Ayele', N'2020-09-01 17:57:38.017000000', N'1', N'F', N'', N'1220')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'108', N'Test1', N'Test2', N'2020-09-01 17:57:38.017000000', N'1', N'F', N'', N'1221')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'109', N'Test3', N'TestLName', N'2020-09-09 17:35:30.327000000', N'1', N'M', N'test@test.com', N'1222')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'110', N'Test3', N'TestLName', N'2020-09-09 17:36:37.180000000', N'1', N'M', N'test@test.com', N'1223')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'111', N'Test4', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1224')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'112', N'Test5', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1225')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'113', N'Test6', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1226')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'114', N'Test7', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1227')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'115', N'Test8', N'TestLName', N'2020-09-09 17:41:13.573000000', N'1', N'M', N'test@test.com', N'1228')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'116', N'Yoseph', N'Kassaye', N'1970-01-01 00:00:00', N'1', N'M', N'tetst@test.com', N'1229')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'117', N'Hadas', N'Kassaye', N'1970-01-01 00:00:00', N'1', N'M', N'tetst@test.com', N'1230')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'300', N'Abenet', N'Bekele', N'', N'1', N'M', N'', N'1413')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'1', N'Halla', N'Bekele', N'1970-01-01 00:00:00', N'14', N'M', N'', N'1127')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'2', N'Keely', N'Leigh', N'1971-01-01 00:00:00', N'14', N'F', N'', N'1128')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'3', N'Bekele', N'Paki', N'1972-01-01 00:00:00', N'2', N'M', N'', N'1117')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'4', N'Asnakech', N'Regan', N'1973-01-01 00:00:00', N'2', N'F', N'', N'1118')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'5', N'Ephrem', N'Steel', N'1974-01-01 00:00:00', N'2', N'M', N'', N'1119')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'6', N'Feven', N'Lacey', N'1975-01-01 00:00:00', N'2', N'F', N'', N'1120')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'7', N'TSeganesh', N'Jennifer', N'1976-01-01 00:00:00', N'3', N'F', N'', N'1122')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'8', N'Tsegaw', N'Isabella', N'1977-01-01 00:00:00', N'3', N'M', N'', N'1123')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'9', N'Yabsera', N'Ila', N'1978-01-01 00:00:00', N'3', N'F', N'', N'1124')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'10', N'Hiroko', N'Inga', N'1979-01-01 00:00:00', N'4', N'M', N'', N'1126')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'11', N'Miranda', N'Flynn', N'1980-01-01 00:00:00', N'4', N'F', N'', N'1127')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'12', N'Orla', N'Oren', N'1981-01-01 00:00:00', N'4', N'M', N'', N'1128')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'13', N'Tara', N'Quynn', N'1982-01-01 00:00:00', N'5', N'F', N'', N'1130')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'14', N'Regan', N'Maile', N'1983-01-01 00:00:00', N'5', N'M', N'', N'1131')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'15', N'Elton', N'Armand', N'1984-01-01 00:00:00', N'6', N'M', N'', N'1133')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'16', N'Asnakech', N'Kirestin', N'1985-01-01 00:00:00', N'7', N'F', N'', N'1135')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'17', N'Martha', N'Lila', N'1986-01-01 00:00:00', N'8', N'M', N'', N'1137')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'18', N'Omar', N'Vance', N'1987-01-01 00:00:00', N'9', N'F', N'', N'1139')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'19', N'Zachery', N'Wyatt', N'1988-01-01 00:00:00', N'10', N'M', N'', N'1141')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'20', N'Zia', N'Vincent', N'1989-01-01 00:00:00', N'11', N'F', N'', N'1143')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'21', N'Salvador', N'Merritt', N'1990-01-01 00:00:00', N'12', N'M', N'', N'1145')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'22', N'Nadine', N'Harper', N'1991-01-01 00:00:00', N'13', N'M', N'', N'1147')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'23', N'Pamela', N'Driscoll', N'1992-01-01 00:00:00', N'3', N'F', N'', N'1138')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'24', N'Boris', N'Kadeem', N'1993-01-01 00:00:00', N'4', N'M', N'', N'1140')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'25', N'Asnakech', N'Peter', N'1994-01-01 00:00:00', N'5', N'F', N'', N'1142')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'26', N'Shana', N'Kalia', N'1995-01-01 00:00:00', N'6', N'M', N'', N'1144')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'27', N'Hedy', N'Cruz', N'1996-01-01 00:00:00', N'35', N'F', N'', N'1174')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'28', N'Wallace', N'Tad', N'1997-01-01 00:00:00', N'35', N'M', N'', N'1175')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'29', N'Wallace', N'Brittany', N'1998-01-01 00:00:00', N'12', N'M', N'', N'1153')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'30', N'Constance', N'Igor', N'1999-01-01 00:00:00', N'12', N'F', N'', N'1154')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'31', N'Solomon', N'Athena', N'2000-01-01 00:00:00', N'1', N'M', N'', N'1144')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'32', N'Clark', N'Kennan', N'2001-01-01 00:00:00', N'1', N'F', N'', N'1145')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'33', N'Abebech', N'Josephine', N'2002-01-01 00:00:00', N'1', N'F', N'', N'1146')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'34', N'Wylie', N'Hedwig', N'2003-01-01 00:00:00', N'2', N'F', N'', N'1148')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'35', N'Desirae', N'Astra', N'2004-01-01 00:00:00', N'2', N'M', N'', N'1149')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'36', N'Yoshi', N'Lani', N'2005-01-01 00:00:00', N'2', N'M', N'', N'1150')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'37', N'Sigourney', N'Jessamine', N'2006-01-01 00:00:00', N'3', N'F', N'', N'1152')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'38', N'Sara', N'Carson', N'2007-01-01 00:00:00', N'3', N'M', N'', N'1153')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'39', N'Nyssa', N'Oliver', N'2008-01-01 00:00:00', N'3', N'F', N'', N'1154')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'40', N'Francesca', N'Sopoline', N'2009-01-01 00:00:00', N'4', N'M', N'', N'1156')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'41', N'Autumn', N'Remedios', N'2010-01-01 00:00:00', N'4', N'F', N'', N'1157')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'42', N'Amity', N'Destiny', N'2011-01-01 00:00:00', N'4', N'M', N'', N'1158')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'43', N'Tanner', N'Rahim', N'1970-01-01 00:00:00', N'5', N'M', N'', N'1160')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'44', N'Cyrus', N'Berk', N'1971-01-01 00:00:00', N'5', N'F', N'', N'1161')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'45', N'Cooper', N'Christopher', N'1972-01-01 00:00:00', N'6', N'M', N'', N'1163')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'46', N'Marah', N'Raya', N'1973-01-01 00:00:00', N'7', N'F', N'', N'1165')
GO
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'47', N'Kelly', N'Sebastian', N'1974-01-01 00:00:00', N'8', N'M', N'', N'1167')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'48', N'Mechelle', N'Valentine', N'1975-01-01 00:00:00', N'9', N'F', N'', N'1169')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'49', N'Denise', N'Ray', N'1976-01-01 00:00:00', N'10', N'M', N'', N'1171')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'50', N'Ivan', N'Marcia', N'1977-01-01 00:00:00', N'11', N'M', N'', N'1173')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'51', N'Olga', N'Selma', N'1978-01-01 00:00:00', N'12', N'F', N'', N'1175')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'52', N'Imani', N'Tarik', N'1979-01-01 00:00:00', N'13', N'M', N'', N'1177')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'53', N'Quon', N'Rana', N'1980-01-01 00:00:00', N'3', N'F', N'', N'1168')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'54', N'Berk', N'Rana', N'1981-01-01 00:00:00', N'4', N'M', N'', N'1170')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'55', N'Ferdinand', N'Kyra', N'1982-01-01 00:00:00', N'5', N'F', N'', N'1172')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'56', N'Tatiana', N'Iliana', N'1983-01-01 00:00:00', N'6', N'M', N'', N'1174')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'57', N'Amanda', N'Phyllis', N'1984-01-01 00:00:00', N'35', N'M', N'', N'1204')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'58', N'Mohammad', N'Hamish', N'1985-01-01 00:00:00', N'35', N'F', N'', N'1205')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'59', N'Dorian', N'Alexis', N'1986-01-01 00:00:00', N'12', N'M', N'', N'1183')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'60', N'Rama', N'Chaim', N'1987-01-01 00:00:00', N'12', N'F', N'', N'1184')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'61', N'Velma', N'Otto', N'1988-01-01 00:00:00', N'1', N'M', N'', N'1174')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'62', N'Deacon', N'Buckminster', N'1989-01-01 00:00:00', N'1', N'F', N'', N'1175')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'63', N'Jacqueline', N'Myles', N'1990-01-01 00:00:00', N'1', N'M', N'', N'1176')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'64', N'Stuart', N'Olympia', N'1991-01-01 00:00:00', N'2', N'M', N'', N'1178')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'65', N'Sheila', N'Astra', N'1992-01-01 00:00:00', N'2', N'F', N'', N'1179')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'66', N'Phelan', N'Charity', N'1993-01-01 00:00:00', N'2', N'M', N'', N'1180')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'67', N'Dale', N'Fiona', N'1994-01-01 00:00:00', N'3', N'F', N'', N'1182')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'68', N'Kessie', N'Connor', N'1995-01-01 00:00:00', N'3', N'M', N'', N'1183')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'69', N'Talon', N'Odysseus', N'1996-01-01 00:00:00', N'3', N'F', N'', N'1184')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'70', N'Sade', N'Jason', N'1997-01-01 00:00:00', N'4', N'M', N'', N'1186')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'71', N'Yoseph', N'Burke', N'1998-01-01 00:00:00', N'4', N'M', N'', N'1187')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'72', N'Isaiah', N'Yetta', N'1999-01-01 00:00:00', N'4', N'F', N'', N'1188')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'73', N'Darryl', N'Tiger', N'2000-01-01 00:00:00', N'5', N'M', N'', N'1190')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'74', N'Astra', N'Grant', N'2001-01-01 00:00:00', N'5', N'F', N'', N'1191')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'75', N'Quin', N'Aaron', N'2002-01-01 00:00:00', N'6', N'M', N'', N'1193')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'76', N'Taylor', N'Zeus', N'2003-01-01 00:00:00', N'7', N'F', N'', N'1195')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'77', N'Merritt', N'Aiko', N'2004-01-01 00:00:00', N'8', N'M', N'', N'1197')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'78', N'Denise', N'Kirk', N'2005-01-01 00:00:00', N'9', N'M', N'', N'1199')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'79', N'Eden', N'Amal', N'2006-01-01 00:00:00', N'10', N'F', N'', N'1201')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'80', N'Grant', N'Graiden', N'2007-01-01 00:00:00', N'11', N'M', N'', N'1203')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'81', N'Stephanie', N'Gloria', N'2008-01-01 00:00:00', N'12', N'F', N'', N'1205')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'82', N'Nell', N'Kimberly', N'2009-01-01 00:00:00', N'13', N'M', N'', N'1207')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'83', N'Colby', N'Norman', N'2010-01-01 00:00:00', N'3', N'F', N'', N'1198')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'84', N'Ivor', N'Iliana', N'2011-01-01 00:00:00', N'4', N'M', N'', N'1200')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'85', N'Evan', N'Stewart', N'1970-01-01 00:00:00', N'5', N'M', N'', N'1202')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'86', N'Lewis', N'Daphne', N'1971-01-01 00:00:00', N'6', N'F', N'', N'1204')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'87', N'Rooney', N'Conan', N'1972-01-01 00:00:00', N'35', N'M', N'', N'1234')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'88', N'Martena', N'Aristotle', N'1973-01-01 00:00:00', N'35', N'F', N'', N'1235')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'89', N'Xena', N'Alvin', N'1974-01-01 00:00:00', N'12', N'M', N'', N'1213')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'90', N'Melodie', N'Scarlett', N'1975-01-01 00:00:00', N'12', N'F', N'', N'1214')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'91', N'Ginger', N'Shaine', N'1976-01-01 00:00:00', N'17', N'M', N'', N'1220')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'92', N'Stacey', N'Chaney', N'1977-01-01 00:00:00', N'18', N'M', N'', N'1222')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'93', N'Dante', N'Phoebe', N'1978-01-01 00:00:00', N'18', N'F', N'', N'1223')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'94', N'Lamar', N'Chastity', N'1979-01-01 00:00:00', N'19', N'M', N'', N'1225')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'95', N'Alexis', N'Michael', N'1980-01-01 00:00:00', N'19', N'F', N'', N'1226')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'96', N'Ivana', N'Damon', N'1981-01-01 00:00:00', N'20', N'M', N'', N'1228')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'97', N'Callie', N'Macon', N'1982-01-01 00:00:00', N'21', N'F', N'', N'1230')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'98', N'Amanda', N'Jorden', N'1983-01-01 00:00:00', N'21', N'M', N'', N'1231')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'99', N'Kamal', N'Fiona', N'1984-01-01 00:00:00', N'22', N'M', N'', N'1233')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'100', N'Ciara', N'Axel', N'1985-01-01 00:00:00', N'23', N'F', N'', N'1235')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'101', N'Yoseph', N'Adugna', N'1978-02-02 00:00:00', N'1', N'M', N'', N'1214')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'102', N'Yoseph', N'Adugna', N'1978-02-02 00:00:00', N'1', N'M', N'', N'1215')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'103', N'Abebe', N'Cherinet', N'2020-09-01 17:57:38.017000000', N'1', N'M', N'', N'1216')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'104', N'Aster', N'Abebe', N'2020-09-01 17:57:38.017000000', N'1', N'M', N'', N'1217')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'105', N'Aster', N'Abebe', N'2020-09-01 17:57:38.017000000', N'1', N'M', N'', N'1218')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'106', N'Abebe', N'Desta', N'2020-09-01 17:57:38.017000000', N'1', N'F', N'', N'1219')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'107', N'Abebe', N'Ayele', N'2020-09-01 17:57:38.017000000', N'1', N'F', N'', N'1220')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'108', N'Test1', N'Test2', N'2020-09-01 17:57:38.017000000', N'1', N'F', N'', N'1221')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'109', N'Test3', N'TestLName', N'2020-09-09 17:35:30.327000000', N'1', N'M', N'test@test.com', N'1222')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'110', N'Test3', N'TestLName', N'2020-09-09 17:36:37.180000000', N'1', N'M', N'test@test.com', N'1223')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'111', N'Test4', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1224')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'112', N'Test5', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1225')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'113', N'Test6', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1226')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'114', N'Test7', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1227')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'115', N'Test8', N'TestLName', N'2020-09-09 17:41:13.573000000', N'1', N'M', N'test@test.com', N'1228')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'116', N'Yoseph', N'Kassaye', N'1970-01-01 00:00:00', N'1', N'M', N'tetst@test.com', N'1229')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'117', N'Hadas', N'Kassaye', N'1970-01-01 00:00:00', N'1', N'M', N'tetst@test.com', N'1230')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'300', N'Abenet', N'Bekele', N'', N'1', N'M', N'', N'1413')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'1', N'Halla', N'Bekele', N'1970-01-01 00:00:00', N'14', N'M', N'', N'1127')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'2', N'Keely', N'Leigh', N'1971-01-01 00:00:00', N'14', N'F', N'', N'1128')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'3', N'Bekele', N'Paki', N'1972-01-01 00:00:00', N'2', N'M', N'', N'1117')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'4', N'Asnakech', N'Regan', N'1973-01-01 00:00:00', N'2', N'F', N'', N'1118')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'5', N'Ephrem', N'Steel', N'1974-01-01 00:00:00', N'2', N'M', N'', N'1119')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'6', N'Feven', N'Lacey', N'1975-01-01 00:00:00', N'2', N'F', N'', N'1120')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'7', N'TSeganesh', N'Jennifer', N'1976-01-01 00:00:00', N'3', N'F', N'', N'1122')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'8', N'Tsegaw', N'Isabella', N'1977-01-01 00:00:00', N'3', N'M', N'', N'1123')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'9', N'Yabsera', N'Ila', N'1978-01-01 00:00:00', N'3', N'F', N'', N'1124')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'10', N'Hiroko', N'Inga', N'1979-01-01 00:00:00', N'4', N'M', N'', N'1126')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'11', N'Miranda', N'Flynn', N'1980-01-01 00:00:00', N'4', N'F', N'', N'1127')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'12', N'Orla', N'Oren', N'1981-01-01 00:00:00', N'4', N'M', N'', N'1128')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'13', N'Tara', N'Quynn', N'1982-01-01 00:00:00', N'5', N'F', N'', N'1130')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'14', N'Regan', N'Maile', N'1983-01-01 00:00:00', N'5', N'M', N'', N'1131')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'15', N'Elton', N'Armand', N'1984-01-01 00:00:00', N'6', N'M', N'', N'1133')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'16', N'Asnakech', N'Kirestin', N'1985-01-01 00:00:00', N'7', N'F', N'', N'1135')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'17', N'Martha', N'Lila', N'1986-01-01 00:00:00', N'8', N'M', N'', N'1137')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'18', N'Omar', N'Vance', N'1987-01-01 00:00:00', N'9', N'F', N'', N'1139')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'19', N'Zachery', N'Wyatt', N'1988-01-01 00:00:00', N'10', N'M', N'', N'1141')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'20', N'Zia', N'Vincent', N'1989-01-01 00:00:00', N'11', N'F', N'', N'1143')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'21', N'Salvador', N'Merritt', N'1990-01-01 00:00:00', N'12', N'M', N'', N'1145')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'22', N'Nadine', N'Harper', N'1991-01-01 00:00:00', N'13', N'M', N'', N'1147')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'23', N'Pamela', N'Driscoll', N'1992-01-01 00:00:00', N'3', N'F', N'', N'1138')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'24', N'Boris', N'Kadeem', N'1993-01-01 00:00:00', N'4', N'M', N'', N'1140')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'25', N'Asnakech', N'Peter', N'1994-01-01 00:00:00', N'5', N'F', N'', N'1142')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'26', N'Shana', N'Kalia', N'1995-01-01 00:00:00', N'6', N'M', N'', N'1144')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'27', N'Hedy', N'Cruz', N'1996-01-01 00:00:00', N'35', N'F', N'', N'1174')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'28', N'Wallace', N'Tad', N'1997-01-01 00:00:00', N'35', N'M', N'', N'1175')
GO
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'29', N'Wallace', N'Brittany', N'1998-01-01 00:00:00', N'12', N'M', N'', N'1153')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'30', N'Constance', N'Igor', N'1999-01-01 00:00:00', N'12', N'F', N'', N'1154')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'31', N'Solomon', N'Athena', N'2000-01-01 00:00:00', N'1', N'M', N'', N'1144')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'32', N'Clark', N'Kennan', N'2001-01-01 00:00:00', N'1', N'F', N'', N'1145')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'33', N'Abebech', N'Josephine', N'2002-01-01 00:00:00', N'1', N'F', N'', N'1146')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'34', N'Wylie', N'Hedwig', N'2003-01-01 00:00:00', N'2', N'F', N'', N'1148')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'35', N'Desirae', N'Astra', N'2004-01-01 00:00:00', N'2', N'M', N'', N'1149')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'36', N'Yoshi', N'Lani', N'2005-01-01 00:00:00', N'2', N'M', N'', N'1150')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'37', N'Sigourney', N'Jessamine', N'2006-01-01 00:00:00', N'3', N'F', N'', N'1152')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'38', N'Sara', N'Carson', N'2007-01-01 00:00:00', N'3', N'M', N'', N'1153')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'39', N'Nyssa', N'Oliver', N'2008-01-01 00:00:00', N'3', N'F', N'', N'1154')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'40', N'Francesca', N'Sopoline', N'2009-01-01 00:00:00', N'4', N'M', N'', N'1156')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'41', N'Autumn', N'Remedios', N'2010-01-01 00:00:00', N'4', N'F', N'', N'1157')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'42', N'Amity', N'Destiny', N'2011-01-01 00:00:00', N'4', N'M', N'', N'1158')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'43', N'Tanner', N'Rahim', N'1970-01-01 00:00:00', N'5', N'M', N'', N'1160')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'44', N'Cyrus', N'Berk', N'1971-01-01 00:00:00', N'5', N'F', N'', N'1161')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'45', N'Cooper', N'Christopher', N'1972-01-01 00:00:00', N'6', N'M', N'', N'1163')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'46', N'Marah', N'Raya', N'1973-01-01 00:00:00', N'7', N'F', N'', N'1165')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'47', N'Kelly', N'Sebastian', N'1974-01-01 00:00:00', N'8', N'M', N'', N'1167')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'48', N'Mechelle', N'Valentine', N'1975-01-01 00:00:00', N'9', N'F', N'', N'1169')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'49', N'Denise', N'Ray', N'1976-01-01 00:00:00', N'10', N'M', N'', N'1171')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'50', N'Ivan', N'Marcia', N'1977-01-01 00:00:00', N'11', N'M', N'', N'1173')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'51', N'Olga', N'Selma', N'1978-01-01 00:00:00', N'12', N'F', N'', N'1175')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'52', N'Imani', N'Tarik', N'1979-01-01 00:00:00', N'13', N'M', N'', N'1177')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'53', N'Quon', N'Rana', N'1980-01-01 00:00:00', N'3', N'F', N'', N'1168')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'54', N'Berk', N'Rana', N'1981-01-01 00:00:00', N'4', N'M', N'', N'1170')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'55', N'Ferdinand', N'Kyra', N'1982-01-01 00:00:00', N'5', N'F', N'', N'1172')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'56', N'Tatiana', N'Iliana', N'1983-01-01 00:00:00', N'6', N'M', N'', N'1174')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'57', N'Amanda', N'Phyllis', N'1984-01-01 00:00:00', N'35', N'M', N'', N'1204')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'58', N'Mohammad', N'Hamish', N'1985-01-01 00:00:00', N'35', N'F', N'', N'1205')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'59', N'Dorian', N'Alexis', N'1986-01-01 00:00:00', N'12', N'M', N'', N'1183')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'60', N'Rama', N'Chaim', N'1987-01-01 00:00:00', N'12', N'F', N'', N'1184')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'61', N'Velma', N'Otto', N'1988-01-01 00:00:00', N'1', N'M', N'', N'1174')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'62', N'Deacon', N'Buckminster', N'1989-01-01 00:00:00', N'1', N'F', N'', N'1175')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'63', N'Jacqueline', N'Myles', N'1990-01-01 00:00:00', N'1', N'M', N'', N'1176')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'64', N'Stuart', N'Olympia', N'1991-01-01 00:00:00', N'2', N'M', N'', N'1178')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'65', N'Sheila', N'Astra', N'1992-01-01 00:00:00', N'2', N'F', N'', N'1179')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'66', N'Phelan', N'Charity', N'1993-01-01 00:00:00', N'2', N'M', N'', N'1180')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'67', N'Dale', N'Fiona', N'1994-01-01 00:00:00', N'3', N'F', N'', N'1182')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'68', N'Kessie', N'Connor', N'1995-01-01 00:00:00', N'3', N'M', N'', N'1183')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'69', N'Talon', N'Odysseus', N'1996-01-01 00:00:00', N'3', N'F', N'', N'1184')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'70', N'Sade', N'Jason', N'1997-01-01 00:00:00', N'4', N'M', N'', N'1186')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'71', N'Yoseph', N'Burke', N'1998-01-01 00:00:00', N'4', N'M', N'', N'1187')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'72', N'Isaiah', N'Yetta', N'1999-01-01 00:00:00', N'4', N'F', N'', N'1188')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'73', N'Darryl', N'Tiger', N'2000-01-01 00:00:00', N'5', N'M', N'', N'1190')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'74', N'Astra', N'Grant', N'2001-01-01 00:00:00', N'5', N'F', N'', N'1191')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'75', N'Quin', N'Aaron', N'2002-01-01 00:00:00', N'6', N'M', N'', N'1193')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'76', N'Taylor', N'Zeus', N'2003-01-01 00:00:00', N'7', N'F', N'', N'1195')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'77', N'Merritt', N'Aiko', N'2004-01-01 00:00:00', N'8', N'M', N'', N'1197')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'78', N'Denise', N'Kirk', N'2005-01-01 00:00:00', N'9', N'M', N'', N'1199')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'79', N'Eden', N'Amal', N'2006-01-01 00:00:00', N'10', N'F', N'', N'1201')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'80', N'Grant', N'Graiden', N'2007-01-01 00:00:00', N'11', N'M', N'', N'1203')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'81', N'Stephanie', N'Gloria', N'2008-01-01 00:00:00', N'12', N'F', N'', N'1205')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'82', N'Nell', N'Kimberly', N'2009-01-01 00:00:00', N'13', N'M', N'', N'1207')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'83', N'Colby', N'Norman', N'2010-01-01 00:00:00', N'3', N'F', N'', N'1198')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'84', N'Ivor', N'Iliana', N'2011-01-01 00:00:00', N'4', N'M', N'', N'1200')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'85', N'Evan', N'Stewart', N'1970-01-01 00:00:00', N'5', N'M', N'', N'1202')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'86', N'Lewis', N'Daphne', N'1971-01-01 00:00:00', N'6', N'F', N'', N'1204')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'87', N'Rooney', N'Conan', N'1972-01-01 00:00:00', N'35', N'M', N'', N'1234')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'88', N'Martena', N'Aristotle', N'1973-01-01 00:00:00', N'35', N'F', N'', N'1235')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'89', N'Xena', N'Alvin', N'1974-01-01 00:00:00', N'12', N'M', N'', N'1213')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'90', N'Melodie', N'Scarlett', N'1975-01-01 00:00:00', N'12', N'F', N'', N'1214')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'91', N'Ginger', N'Shaine', N'1976-01-01 00:00:00', N'17', N'M', N'', N'1220')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'92', N'Stacey', N'Chaney', N'1977-01-01 00:00:00', N'18', N'M', N'', N'1222')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'93', N'Dante', N'Phoebe', N'1978-01-01 00:00:00', N'18', N'F', N'', N'1223')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'94', N'Lamar', N'Chastity', N'1979-01-01 00:00:00', N'19', N'M', N'', N'1225')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'95', N'Alexis', N'Michael', N'1980-01-01 00:00:00', N'19', N'F', N'', N'1226')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'96', N'Ivana', N'Damon', N'1981-01-01 00:00:00', N'20', N'M', N'', N'1228')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'97', N'Callie', N'Macon', N'1982-01-01 00:00:00', N'21', N'F', N'', N'1230')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'98', N'Amanda', N'Jorden', N'1983-01-01 00:00:00', N'21', N'M', N'', N'1231')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'99', N'Kamal', N'Fiona', N'1984-01-01 00:00:00', N'22', N'M', N'', N'1233')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'100', N'Ciara', N'Axel', N'1985-01-01 00:00:00', N'23', N'F', N'', N'1235')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'101', N'Yoseph', N'Adugna', N'1978-02-02 00:00:00', N'1', N'M', N'', N'1214')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'102', N'Yoseph', N'Adugna', N'1978-02-02 00:00:00', N'1', N'M', N'', N'1215')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'103', N'Abebe', N'Cherinet', N'2020-09-01 17:57:38.017000000', N'1', N'M', N'', N'1216')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'104', N'Aster', N'Abebe', N'2020-09-01 17:57:38.017000000', N'1', N'M', N'', N'1217')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'105', N'Aster', N'Abebe', N'2020-09-01 17:57:38.017000000', N'1', N'M', N'', N'1218')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'106', N'Abebe', N'Desta', N'2020-09-01 17:57:38.017000000', N'1', N'F', N'', N'1219')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'107', N'Abebe', N'Ayele', N'2020-09-01 17:57:38.017000000', N'1', N'F', N'', N'1220')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'108', N'Test1', N'Test2', N'2020-09-01 17:57:38.017000000', N'1', N'F', N'', N'1221')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'109', N'Test3', N'TestLName', N'2020-09-09 17:35:30.327000000', N'1', N'M', N'test@test.com', N'1222')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'110', N'Test3', N'TestLName', N'2020-09-09 17:36:37.180000000', N'1', N'M', N'test@test.com', N'1223')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'111', N'Test4', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1224')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'112', N'Test5', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1225')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'113', N'Test6', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1226')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'114', N'Test7', N'TestLName', N'2020-09-09 17:38:07.380000000', N'1', N'M', N'test@test.com', N'1227')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'115', N'Test8', N'TestLName', N'2020-09-09 17:41:13.573000000', N'1', N'M', N'test@test.com', N'1228')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'116', N'Yoseph', N'Kassaye', N'1970-01-01 00:00:00', N'1', N'M', N'tetst@test.com', N'1229')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'117', N'Hadas', N'Kassaye', N'1970-01-01 00:00:00', N'1', N'M', N'tetst@test.com', N'1230')
INSERT [dbo].[StudentDW] ([StudentId], [FName], [LName], [DOB], [DepartmentId], [Gender], [Email], [SSN]) VALUES (N'300', N'Abenet', N'Bekele', N'', N'1', N'M', N'', N'1413')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (1, N'Halla', N'Bekele', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 14, N'M', N'', N'1127')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (2, N'Keely', N'Leigh', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 14, N'F', N'', N'1128')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (3, N'Bekele', N'Paki', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1117')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (4, N'Asnakech', N'Regan', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1118')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (5, N'Ephrem', N'Steel', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1119')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (6, N'Feven', N'Lacey', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1120')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (7, N'TSeganesh', N'Jennifer', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1122')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (8, N'Tsegaw', N'Isabella', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1123')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (9, N'Yabsera', N'Ila', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1124')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (10, N'Hiroko', N'Inga', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1126')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (11, N'Miranda', N'Flynn', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1127')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (12, N'Orla', N'Oren', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1128')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (13, N'Tara', N'Quynn', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1130')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (14, N'Regan', N'Maile', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1131')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (15, N'Elton', N'Armand', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1133')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (16, N'Asnakech', N'Kirestin', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1135')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (17, N'Martha', N'Lila', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1137')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (18, N'Omar', N'Vance', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 9, N'F', N'', N'1139')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (19, N'Zachery', N'Wyatt', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 10, N'M', N'', N'1141')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (20, N'Zia', N'Vincent', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 11, N'F', N'', N'1143')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (21, N'Salvador', N'Merritt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1145')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (22, N'Nadine', N'Harper', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1147')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (23, N'Pamela', N'Driscoll', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1138')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (24, N'Boris', N'Kadeem', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1140')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (25, N'Asnakech', N'Peter', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1142')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (26, N'Shana', N'Kalia', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1144')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (27, N'Hedy', N'Cruz', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1174')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (28, N'Wallace', N'Tad', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1175')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (29, N'Wallace', N'Brittany', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1153')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (30, N'Constance', N'Igor', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1154')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (31, N'Solomon', N'Athena', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1144')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (32, N'Clark', N'Kennan', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1145')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (33, N'Abebech', N'Josephine', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1146')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (34, N'Wylie', N'Hedwig', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1148')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (35, N'Desirae', N'Astra', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1149')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (36, N'Yoshi', N'Lani', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1150')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (37, N'Sigourney', N'Jessamine', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1152')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (38, N'Sara', N'Carson', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1153')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (39, N'Nyssa', N'Oliver', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1154')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (40, N'Francesca', N'Sopoline', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1156')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (41, N'Autumn', N'Remedios', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1157')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (42, N'Amity', N'Destiny', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1158')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (43, N'Tanner', N'Rahim', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1160')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (44, N'Cyrus', N'Berk', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1161')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (45, N'Cooper', N'Christopher', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1163')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (46, N'Marah', N'Raya', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1165')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (47, N'Kelly', N'Sebastian', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1167')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (48, N'Mechelle', N'Valentine', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 9, N'F', N'', N'1169')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (49, N'Denise', N'Ray', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 10, N'M', N'', N'1171')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (50, N'Ivan', N'Marcia', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 11, N'M', N'', N'1173')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (51, N'Olga', N'Selma', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1175')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (52, N'Imani', N'Tarik', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1177')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (53, N'Quon', N'Rana', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1168')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (54, N'Berk', N'Rana', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1170')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (55, N'Ferdinand', N'Kyra', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1172')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (56, N'Tatiana', N'Iliana', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1174')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (57, N'Amanda', N'Phyllis', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1204')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (58, N'Mohammad', N'Hamish', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1205')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (59, N'Dorian', N'Alexis', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1183')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (60, N'Rama', N'Chaim', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1184')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (61, N'Velma', N'Otto', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1174')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (62, N'Deacon', N'Buckminster', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1175')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (63, N'Jacqueline', N'Myles', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1176')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (64, N'Stuart', N'Olympia', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1178')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (65, N'Sheila', N'Astra', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1179')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (66, N'Phelan', N'Charity', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1180')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (67, N'Dale', N'Fiona', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1182')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (68, N'Kessie', N'Connor', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1183')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (69, N'Talon', N'Odysseus', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1184')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (70, N'Sade', N'Jason', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1186')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (71, N'Yoseph', N'Burke', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1187')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (72, N'Isaiah', N'Yetta', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1188')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (73, N'Darryl', N'Tiger', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1190')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (74, N'Astra', N'Grant', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1191')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (75, N'Quin', N'Aaron', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1193')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (76, N'Taylor', N'Zeus', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1195')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (77, N'Merritt', N'Aiko', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1197')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (78, N'Denise', N'Kirk', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 9, N'M', N'', N'1199')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (79, N'Eden', N'Amal', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 10, N'F', N'', N'1201')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (80, N'Grant', N'Graiden', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 11, N'M', N'', N'1203')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (81, N'Stephanie', N'Gloria', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1205')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (82, N'Nell', N'Kimberly', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1207')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (83, N'Colby', N'Norman', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1198')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (84, N'Ivor', N'Iliana', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1200')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (85, N'Evan', N'Stewart', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1202')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (86, N'Lewis', N'Daphne', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 6, N'F', N'', N'1204')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (87, N'Rooney', N'Conan', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1234')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (88, N'Martena', N'Aristotle', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1235')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (89, N'Xena', N'Alvin', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1213')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (90, N'Melodie', N'Scarlett', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1214')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (91, N'Ginger', N'Shaine', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 17, N'M', N'', N'1220')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (92, N'Stacey', N'Chaney', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 18, N'M', N'', N'1222')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (93, N'Dante', N'Phoebe', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 18, N'F', N'', N'1223')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (94, N'Lamar', N'Chastity', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 19, N'M', N'', N'1225')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (95, N'Alexis', N'Michael', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 19, N'F', N'', N'1226')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (96, N'Ivana', N'Damon', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 20, N'M', N'', N'1228')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (97, N'Callie', N'Macon', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 21, N'F', N'', N'1230')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (98, N'Amanda', N'Jorden', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 21, N'M', N'', N'1231')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (99, N'Kamal', N'Fiona', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 22, N'M', N'', N'1233')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (100, N'Ciara', N'Axel', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 23, N'F', N'', N'1235')
GO
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (101, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', N'', N'1214')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (102, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', N'', N'1215')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (103, N'Abebe', N'Cherinet', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1216')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (104, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1217')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (105, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1218')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (106, N'Abebe', N'Desta', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1219')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (107, N'Abebe', N'Ayele', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1220')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (108, N'Test1', N'Test2', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1221')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (109, N'Test3', N'TestLName', CAST(N'2020-09-09T17:35:30.327' AS DateTime), 1, N'M', N'test@test.com', N'1222')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (110, N'Test3', N'TestLName', CAST(N'2020-09-09T17:36:37.180' AS DateTime), 1, N'M', N'test@test.com', N'1223')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (111, N'Test4', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1224')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (112, N'Test5', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1225')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (113, N'Test6', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1226')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (114, N'Test7', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1227')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (115, N'Test8', N'TestLName', CAST(N'2020-09-09T17:41:13.573' AS DateTime), 1, N'M', N'test@test.com', N'1228')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (116, N'Yoseph', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1229')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (117, N'Hadas', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1230')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (300, N'Abenet', N'Bekele', CAST(N'1753-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1413')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (1, N'Halla', N'Bekele', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 14, N'M', N'', N'1127')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (2, N'Keely', N'Leigh', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 14, N'F', N'', N'1128')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (3, N'Bekele', N'Paki', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1117')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (4, N'Asnakech', N'Regan', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1118')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (5, N'Ephrem', N'Steel', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1119')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (6, N'Feven', N'Lacey', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1120')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (7, N'TSeganesh', N'Jennifer', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1122')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (8, N'Tsegaw', N'Isabella', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1123')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (9, N'Yabsera', N'Ila', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1124')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (10, N'Hiroko', N'Inga', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1126')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (11, N'Miranda', N'Flynn', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1127')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (12, N'Orla', N'Oren', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1128')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (13, N'Tara', N'Quynn', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1130')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (14, N'Regan', N'Maile', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1131')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (15, N'Elton', N'Armand', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1133')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (16, N'Asnakech', N'Kirestin', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1135')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (17, N'Martha', N'Lila', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1137')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (18, N'Omar', N'Vance', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 9, N'F', N'', N'1139')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (19, N'Zachery', N'Wyatt', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 10, N'M', N'', N'1141')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (20, N'Zia', N'Vincent', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 11, N'F', N'', N'1143')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (21, N'Salvador', N'Merritt', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1145')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (22, N'Nadine', N'Harper', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1147')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (23, N'Pamela', N'Driscoll', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1138')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (24, N'Boris', N'Kadeem', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1140')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (25, N'Asnakech', N'Peter', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1142')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (26, N'Shana', N'Kalia', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1144')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (27, N'Hedy', N'Cruz', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1174')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (28, N'Wallace', N'Tad', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1175')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (29, N'Wallace', N'Brittany', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1153')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (30, N'Constance', N'Igor', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1154')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (31, N'Solomon', N'Athena', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1144')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (32, N'Clark', N'Kennan', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1145')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (33, N'Abebech', N'Josephine', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1146')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (34, N'Wylie', N'Hedwig', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1148')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (35, N'Desirae', N'Astra', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1149')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (36, N'Yoshi', N'Lani', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1150')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (37, N'Sigourney', N'Jessamine', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1152')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (38, N'Sara', N'Carson', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1153')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (39, N'Nyssa', N'Oliver', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1154')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (40, N'Francesca', N'Sopoline', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1156')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (41, N'Autumn', N'Remedios', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1157')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (42, N'Amity', N'Destiny', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1158')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (43, N'Tanner', N'Rahim', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1160')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (44, N'Cyrus', N'Berk', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1161')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (45, N'Cooper', N'Christopher', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1163')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (46, N'Marah', N'Raya', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1165')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (47, N'Kelly', N'Sebastian', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1167')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (48, N'Mechelle', N'Valentine', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 9, N'F', N'', N'1169')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (49, N'Denise', N'Ray', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 10, N'M', N'', N'1171')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (50, N'Ivan', N'Marcia', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 11, N'M', N'', N'1173')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (51, N'Olga', N'Selma', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1175')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (52, N'Imani', N'Tarik', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1177')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (53, N'Quon', N'Rana', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1168')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (54, N'Berk', N'Rana', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1170')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (55, N'Ferdinand', N'Kyra', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1172')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (56, N'Tatiana', N'Iliana', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1174')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (57, N'Amanda', N'Phyllis', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1204')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (58, N'Mohammad', N'Hamish', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1205')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (59, N'Dorian', N'Alexis', CAST(N'1986-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1183')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (60, N'Rama', N'Chaim', CAST(N'1987-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1184')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (61, N'Velma', N'Otto', CAST(N'1988-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1174')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (62, N'Deacon', N'Buckminster', CAST(N'1989-01-01T00:00:00.000' AS DateTime), 1, N'F', N'', N'1175')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (63, N'Jacqueline', N'Myles', CAST(N'1990-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1176')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (64, N'Stuart', N'Olympia', CAST(N'1991-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1178')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (65, N'Sheila', N'Astra', CAST(N'1992-01-01T00:00:00.000' AS DateTime), 2, N'F', N'', N'1179')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (66, N'Phelan', N'Charity', CAST(N'1993-01-01T00:00:00.000' AS DateTime), 2, N'M', N'', N'1180')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (67, N'Dale', N'Fiona', CAST(N'1994-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1182')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (68, N'Kessie', N'Connor', CAST(N'1995-01-01T00:00:00.000' AS DateTime), 3, N'M', N'', N'1183')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (69, N'Talon', N'Odysseus', CAST(N'1996-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1184')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (70, N'Sade', N'Jason', CAST(N'1997-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1186')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (71, N'Yoseph', N'Burke', CAST(N'1998-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1187')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (72, N'Isaiah', N'Yetta', CAST(N'1999-01-01T00:00:00.000' AS DateTime), 4, N'F', N'', N'1188')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (73, N'Darryl', N'Tiger', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1190')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (74, N'Astra', N'Grant', CAST(N'2001-01-01T00:00:00.000' AS DateTime), 5, N'F', N'', N'1191')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (75, N'Quin', N'Aaron', CAST(N'2002-01-01T00:00:00.000' AS DateTime), 6, N'M', N'', N'1193')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (76, N'Taylor', N'Zeus', CAST(N'2003-01-01T00:00:00.000' AS DateTime), 7, N'F', N'', N'1195')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (77, N'Merritt', N'Aiko', CAST(N'2004-01-01T00:00:00.000' AS DateTime), 8, N'M', N'', N'1197')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (78, N'Denise', N'Kirk', CAST(N'2005-01-01T00:00:00.000' AS DateTime), 9, N'M', N'', N'1199')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (79, N'Eden', N'Amal', CAST(N'2006-01-01T00:00:00.000' AS DateTime), 10, N'F', N'', N'1201')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (80, N'Grant', N'Graiden', CAST(N'2007-01-01T00:00:00.000' AS DateTime), 11, N'M', N'', N'1203')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (81, N'Stephanie', N'Gloria', CAST(N'2008-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1205')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (82, N'Nell', N'Kimberly', CAST(N'2009-01-01T00:00:00.000' AS DateTime), 13, N'M', N'', N'1207')
GO
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (83, N'Colby', N'Norman', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 3, N'F', N'', N'1198')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (84, N'Ivor', N'Iliana', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 4, N'M', N'', N'1200')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (85, N'Evan', N'Stewart', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 5, N'M', N'', N'1202')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (86, N'Lewis', N'Daphne', CAST(N'1971-01-01T00:00:00.000' AS DateTime), 6, N'F', N'', N'1204')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (87, N'Rooney', N'Conan', CAST(N'1972-01-01T00:00:00.000' AS DateTime), 35, N'M', N'', N'1234')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (88, N'Martena', N'Aristotle', CAST(N'1973-01-01T00:00:00.000' AS DateTime), 35, N'F', N'', N'1235')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (89, N'Xena', N'Alvin', CAST(N'1974-01-01T00:00:00.000' AS DateTime), 12, N'M', N'', N'1213')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (90, N'Melodie', N'Scarlett', CAST(N'1975-01-01T00:00:00.000' AS DateTime), 12, N'F', N'', N'1214')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (91, N'Ginger', N'Shaine', CAST(N'1976-01-01T00:00:00.000' AS DateTime), 17, N'M', N'', N'1220')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (92, N'Stacey', N'Chaney', CAST(N'1977-01-01T00:00:00.000' AS DateTime), 18, N'M', N'', N'1222')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (93, N'Dante', N'Phoebe', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 18, N'F', N'', N'1223')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (94, N'Lamar', N'Chastity', CAST(N'1979-01-01T00:00:00.000' AS DateTime), 19, N'M', N'', N'1225')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (95, N'Alexis', N'Michael', CAST(N'1980-01-01T00:00:00.000' AS DateTime), 19, N'F', N'', N'1226')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (96, N'Ivana', N'Damon', CAST(N'1981-01-01T00:00:00.000' AS DateTime), 20, N'M', N'', N'1228')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (97, N'Callie', N'Macon', CAST(N'1982-01-01T00:00:00.000' AS DateTime), 21, N'F', N'', N'1230')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (98, N'Amanda', N'Jorden', CAST(N'1983-01-01T00:00:00.000' AS DateTime), 21, N'M', N'', N'1231')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (99, N'Kamal', N'Fiona', CAST(N'1984-01-01T00:00:00.000' AS DateTime), 22, N'M', N'', N'1233')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (100, N'Ciara', N'Axel', CAST(N'1985-01-01T00:00:00.000' AS DateTime), 23, N'F', N'', N'1235')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (101, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', N'', N'1214')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (102, N'Yoseph', N'Adugna', CAST(N'1978-02-02T00:00:00.000' AS DateTime), 1, N'M', N'', N'1215')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (103, N'Abebe', N'Cherinet', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1216')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (104, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1217')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (105, N'Aster', N'Abebe', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'M', N'', N'1218')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (106, N'Abebe', N'Desta', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1219')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (107, N'Abebe', N'Ayele', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1220')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (108, N'Test1', N'Test2', CAST(N'2020-09-01T17:57:38.017' AS DateTime), 1, N'F', N'', N'1221')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (109, N'Test3', N'TestLName', CAST(N'2020-09-09T17:35:30.327' AS DateTime), 1, N'M', N'test@test.com', N'1222')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (110, N'Test3', N'TestLName', CAST(N'2020-09-09T17:36:37.180' AS DateTime), 1, N'M', N'test@test.com', N'1223')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (111, N'Test4', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1224')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (112, N'Test5', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1225')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (113, N'Test6', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1226')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (114, N'Test7', N'TestLName', CAST(N'2020-09-09T17:38:07.380' AS DateTime), 1, N'M', N'test@test.com', N'1227')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (115, N'Test8', N'TestLName', CAST(N'2020-09-09T17:41:13.573' AS DateTime), 1, N'M', N'test@test.com', N'1228')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (116, N'Yoseph', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1229')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (117, N'Hadas', N'Kassaye', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 1, N'M', N'tetst@test.com', N'1230')
INSERT [dbo].[StudentFromCSV] ([StudentId], [FIrstName], [LastName], [DateBirth], [DepartmentId], [Gender], [Email], [SSN]) VALUES (300, N'Abenet', N'Bekele', CAST(N'1753-01-01T00:00:00.000' AS DateTime), 1, N'M', N'', N'1413')
SET IDENTITY_INSERT [dbo].[TestEmployee] ON 

INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (1, N'Abebe1')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (2, N'Kebede2')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (3, N'Eden2')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (4, N'Abebe1')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (5, N'Kebede2')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (6, N'Eden2')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (7, N'Abebe1')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (8, N'Kebede2')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (9, N'Eden2')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (10, N'Abebe1')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (11, N'Kebede2')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (12, N'Eden2')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (13, N'Abebe1')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (14, N'Kebede2')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (15, N'Eden2')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (16, N'Abebe1')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (17, N'Kebede2')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (18, N'Eden2')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (19, N'Abebe1')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (20, N'Kebede2')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (21, N'Eden2')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (22, N'Abebe1')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (23, N'Kebede2')
INSERT [dbo].[TestEmployee] ([EmployeeId], [EmployeeName]) VALUES (24, N'Eden2')
SET IDENTITY_INSERT [dbo].[TestEmployee] OFF
SET IDENTITY_INSERT [dbo].[TestEmployee2] ON 

INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (1, N'Abebe1')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (2, N'Kebede2')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (3, N'Eden2')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (4, N'Abebe1')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (5, N'Kebede2')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (6, N'Eden2')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (7, N'Abebe1')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (8, N'Kebede2')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (9, N'Eden2')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (10, N'Abebe1')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (11, N'Kebede2')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (12, N'Eden2')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (13, N'Abebe1')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (14, N'Kebede2')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (15, N'Eden2')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (16, N'Abebe1')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (17, N'Kebede2')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (18, N'Eden2')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (19, N'Abebe1')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (20, N'Kebede2')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (21, N'Eden2')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (22, N'Abebe1')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (23, N'Kebede2')
INSERT [dbo].[TestEmployee2] ([EmployeeId], [EmployeeName]) VALUES (24, N'Eden2')
SET IDENTITY_INSERT [dbo].[TestEmployee2] OFF
INSERT [dbo].[testindex] ([Id], [FName]) VALUES (5, N'Abebe')
INSERT [dbo].[testindex] ([Id], [FName]) VALUES (6, N'Yoseph')
INSERT [dbo].[testindex] ([Id], [FName]) VALUES (11, N'Abebe')
INSERT [dbo].[testindex] ([Id], [FName]) VALUES (12, N'Abebe')
INSERT [dbo].[testMaskedTable] ([Id], [FName], [LName]) VALUES (1212, N'Yoseph', N'SqlBinary(65)')
INSERT [dbo].[testMaskedTable] ([Id], [FName], [LName]) VALUES (1213, N'Adugna', N'SqlBinary(65)')
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (1, 1, N'COURSE101', 120.0000, NULL, NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (2, 1, N'COURSE102', 120.0000, NULL, NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (3, 1, N'COURSE103', 120.0000, NULL, NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (4, 1, N'COURSE104', 120.0000, NULL, NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (5, 1, N'COURSE105', 63.0000, NULL, NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (6, 1, N'COURSE106', 120.0000, NULL, NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (7, 1, N'COURSE107', 69.0000, CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (8, 2, N'COURSE108', 69.0000, CAST(N'2019-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (9, 2, N'COURSE109', 65.0000, CAST(N'2020-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (10, 2, N'COURSE110', 65.0000, CAST(N'2020-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (11, 2, N'COURSE111', 210.0000, CAST(N'2021-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (12, 2, N'COURSE112', 210.0000, CAST(N'2021-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (13, 3, N'COURSE113', 210.0000, CAST(N'2022-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (14, 3, N'COURSE114', 210.0000, CAST(N'2022-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (15, 3, N'COURSE115', 120.0000, CAST(N'2023-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (16, 3, N'COURSE116', 120.0000, CAST(N'2023-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (17, 4, N'COURSE117', 120.0000, CAST(N'2024-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (18, 4, N'COURSE118', 120.0000, CAST(N'2024-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (19, 4, N'COURSE119', 63.0000, CAST(N'2025-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (20, 5, N'COURSE120', 120.0000, CAST(N'2025-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (21, 5, N'COURSE121', 69.0000, CAST(N'2026-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (22, 5, N'COURSE122', 69.0000, CAST(N'2026-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (23, 6, N'COURSE101', 65.0000, CAST(N'2027-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (24, 7, N'COURSE102', 65.0000, CAST(N'2027-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (25, 8, N'COURSE103', 210.0000, CAST(N'2028-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (26, 9, N'COURSE104', 210.0000, CAST(N'2028-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (27, 10, N'COURSE105', 210.0000, CAST(N'2029-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (28, 11, N'COURSE106', 210.0000, CAST(N'2029-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (29, 12, N'COURSE107', 120.0000, CAST(N'2030-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (30, 13, N'COURSE108', 120.0000, CAST(N'2030-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (31, 14, N'COURSE109', 120.0000, CAST(N'2031-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (32, 15, N'COURSE110', 120.0000, CAST(N'2031-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (33, 16, N'COURSE111', 63.0000, CAST(N'2032-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (34, 17, N'COURSE112', 120.0000, CAST(N'2032-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (35, 18, N'COURSE113', 69.0000, CAST(N'2033-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (36, 19, N'COURSE114', 69.0000, CAST(N'2033-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (37, 20, N'COURSE115', 65.0000, CAST(N'2034-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (38, 21, N'COURSE116', 65.0000, CAST(N'2034-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (39, 22, N'COURSE117', 210.0000, CAST(N'2035-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (40, 23, N'COURSE118', 210.0000, CAST(N'2035-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (41, 24, N'COURSE119', 210.0000, CAST(N'2036-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (42, 25, N'COURSE120', 210.0000, CAST(N'2036-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (43, 26, N'COURSE121', 183.2857, CAST(N'2037-01-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Tution] ([TutionId], [StudentId], [Cono], [Amount], [DueDate], [PaymentId]) VALUES (44, 27, N'COURSE122', 190.8571, CAST(N'2037-02-02T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Users] ([UserName], [Password]) VALUES (N'abebe', N'test1234!')
INSERT [dbo].[Users] ([UserName], [Password]) VALUES (N'menur', N'Test123456!')
INSERT [dbo].[Users] ([UserName], [Password]) VALUES (N'redwan', N'Red1234')
SET IDENTITY_INSERT [dbo].[YayobegBank] ON 

INSERT [dbo].[YayobegBank] ([AccountNumber], [Amount]) VALUES (1, CAST(4900.52 AS Decimal(18, 2)))
INSERT [dbo].[YayobegBank] ([AccountNumber], [Amount]) VALUES (2, CAST(1000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[YayobegBank] OFF
SET IDENTITY_INSERT [dbo].[YayobeStudent] ON 

INSERT [dbo].[YayobeStudent] ([StudentId], [FName]) VALUES (1, N'Yoseph')
INSERT [dbo].[YayobeStudent] ([StudentId], [FName]) VALUES (3, N'Samri')
INSERT [dbo].[YayobeStudent] ([StudentId], [FName]) VALUES (4, N'Samri')
INSERT [dbo].[YayobeStudent] ([StudentId], [FName]) VALUES (5, N'Gettu')
INSERT [dbo].[YayobeStudent] ([StudentId], [FName]) VALUES (6, N'Masresha')
INSERT [dbo].[YayobeStudent] ([StudentId], [FName]) VALUES (7, N'Azeb')
SET IDENTITY_INSERT [dbo].[YayobeStudent] OFF
INSERT [dbo].[YayobeStudentAudit] ([MessageDescription]) VALUES (N'Mensur inserted Data on Feb  2 2021  6:47PM')
INSERT [dbo].[YayobeStudentAudit] ([MessageDescription]) VALUES (N'Gettu inserted Data on Feb  2 2021  6:52PM')
INSERT [dbo].[YayobeStudentAudit] ([MessageDescription]) VALUES (N'Gettu Tried to delete  Data on Feb  2 2021  6:59PM')
ALTER TABLE [dbo].[Achivement]  WITH CHECK ADD  CONSTRAINT [FK_Achivement_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[Achivement] CHECK CONSTRAINT [FK_Achivement_Student]
GO
ALTER TABLE [dbo].[Assignments]  WITH CHECK ADD  CONSTRAINT [FK_Assignments_Course] FOREIGN KEY([Cono])
REFERENCES [dbo].[Course] ([cono])
GO
ALTER TABLE [dbo].[Assignments] CHECK CONSTRAINT [FK_Assignments_Course]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[CourseReferences]  WITH CHECK ADD  CONSTRAINT [FK_CourseReferences_Course] FOREIGN KEY([Cono])
REFERENCES [dbo].[Course] ([cono])
GO
ALTER TABLE [dbo].[CourseReferences] CHECK CONSTRAINT [FK_CourseReferences_Course]
GO
ALTER TABLE [dbo].[CourseReferences]  WITH CHECK ADD  CONSTRAINT [FK_CourseReferences_References] FOREIGN KEY([ReferenceId])
REFERENCES [dbo].[References] ([ReferenceId])
GO
ALTER TABLE [dbo].[CourseReferences] CHECK CONSTRAINT [FK_CourseReferences_References]
GO
ALTER TABLE [dbo].[CourseSyllubus]  WITH CHECK ADD  CONSTRAINT [FK_CourseSyllubus_Course] FOREIGN KEY([Cono])
REFERENCES [dbo].[Course] ([cono])
GO
ALTER TABLE [dbo].[CourseSyllubus] CHECK CONSTRAINT [FK_CourseSyllubus_Course]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK__Departmen__Facul__3B75D760] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([FacultyId])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK__Departmen__Facul__3B75D760]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Semester] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semester] ([SemesterId])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [FK_Events_Semester]
GO
ALTER TABLE [dbo].[ExamSchedule]  WITH CHECK ADD  CONSTRAINT [FK_ExamSchedule_Course] FOREIGN KEY([Cono])
REFERENCES [dbo].[Course] ([cono])
GO
ALTER TABLE [dbo].[ExamSchedule] CHECK CONSTRAINT [FK_ExamSchedule_Course]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD FOREIGN KEY([Cono])
REFERENCES [dbo].[Course] ([cono])
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semester] ([SemesterId])
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [FK__Grade__StudentId__3E52440B] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [FK__Grade__StudentId__3E52440B]
GO
ALTER TABLE [dbo].[HomeRoomTeacher]  WITH CHECK ADD  CONSTRAINT [FK_HomeRoomTeacher_Instructor] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructor] ([InstructorId])
GO
ALTER TABLE [dbo].[HomeRoomTeacher] CHECK CONSTRAINT [FK_HomeRoomTeacher_Instructor]
GO
ALTER TABLE [dbo].[HomeRoomTeacher]  WITH CHECK ADD  CONSTRAINT [FK_HomeRoomTeacher_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[HomeRoomTeacher] CHECK CONSTRAINT [FK_HomeRoomTeacher_Student]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([DepartmentId])
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [FK_Instructor_Department]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_HighestEductionLevel] FOREIGN KEY([EducationLevelId])
REFERENCES [dbo].[HighestEductionLevel] ([EducaionLevelID])
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [FK_Instructor_HighestEductionLevel]
GO
ALTER TABLE [dbo].[InstructorCourse]  WITH CHECK ADD  CONSTRAINT [FK_InstructorCourse_Course] FOREIGN KEY([Cono])
REFERENCES [dbo].[Course] ([cono])
GO
ALTER TABLE [dbo].[InstructorCourse] CHECK CONSTRAINT [FK_InstructorCourse_Course]
GO
ALTER TABLE [dbo].[InstructorCourse]  WITH CHECK ADD  CONSTRAINT [FK_InstructorCourse_Course1] FOREIGN KEY([Cono])
REFERENCES [dbo].[Course] ([cono])
GO
ALTER TABLE [dbo].[InstructorCourse] CHECK CONSTRAINT [FK_InstructorCourse_Course1]
GO
ALTER TABLE [dbo].[InstructorCourse]  WITH CHECK ADD  CONSTRAINT [FK_InstructorCourse_Instructor] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructor] ([InstructorId])
GO
ALTER TABLE [dbo].[InstructorCourse] CHECK CONSTRAINT [FK_InstructorCourse_Instructor]
GO
ALTER TABLE [dbo].[InstructorCourse]  WITH CHECK ADD  CONSTRAINT [FK_InstructorCourse_Instructor1] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructor] ([InstructorId])
GO
ALTER TABLE [dbo].[InstructorCourse] CHECK CONSTRAINT [FK_InstructorCourse_Instructor1]
GO
ALTER TABLE [dbo].[InstructorCourse]  WITH CHECK ADD  CONSTRAINT [FK_InstructorCourse_Semester] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semester] ([SemesterId])
GO
ALTER TABLE [dbo].[InstructorCourse] CHECK CONSTRAINT [FK_InstructorCourse_Semester]
GO
ALTER TABLE [dbo].[ParentandGuardian]  WITH CHECK ADD  CONSTRAINT [FK_ParentandGuardian_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[ParentandGuardian] CHECK CONSTRAINT [FK_ParentandGuardian_Student]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Course] FOREIGN KEY([Cono])
REFERENCES [dbo].[Course] ([cono])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Course]
GO
ALTER TABLE [dbo].[Readmission]  WITH CHECK ADD  CONSTRAINT [FK_Readmission_Course] FOREIGN KEY([Cono])
REFERENCES [dbo].[Course] ([cono])
GO
ALTER TABLE [dbo].[Readmission] CHECK CONSTRAINT [FK_Readmission_Course]
GO
ALTER TABLE [dbo].[Readmission]  WITH CHECK ADD  CONSTRAINT [FK_Readmission_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[Readmission] CHECK CONSTRAINT [FK_Readmission_Student]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK__Student__Departm__440B1D61] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([DepartmentId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK__Student__Departm__440B1D61]
GO
ALTER TABLE [dbo].[StudentArticle]  WITH CHECK ADD  CONSTRAINT [FK_StudentArticle_Articles] FOREIGN KEY([ArticleId])
REFERENCES [dbo].[Articles] ([ArticleId])
GO
ALTER TABLE [dbo].[StudentArticle] CHECK CONSTRAINT [FK_StudentArticle_Articles]
GO
ALTER TABLE [dbo].[StudentArticle]  WITH CHECK ADD  CONSTRAINT [FK_StudentArticle_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[StudentArticle] CHECK CONSTRAINT [FK_StudentArticle_Student]
GO
ALTER TABLE [dbo].[StudentAssignment]  WITH CHECK ADD  CONSTRAINT [FK_StudentAssignment_Assignments] FOREIGN KEY([AssignmentId])
REFERENCES [dbo].[Assignments] ([AssignmentID])
GO
ALTER TABLE [dbo].[StudentAssignment] CHECK CONSTRAINT [FK_StudentAssignment_Assignments]
GO
ALTER TABLE [dbo].[StudentAssignment]  WITH CHECK ADD  CONSTRAINT [FK_StudentAssignment_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[StudentAssignment] CHECK CONSTRAINT [FK_StudentAssignment_Student]
GO
ALTER TABLE [dbo].[StudentBehaviour]  WITH CHECK ADD  CONSTRAINT [FK_StudentBehaviour_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[StudentBehaviour] CHECK CONSTRAINT [FK_StudentBehaviour_Student]
GO
ALTER TABLE [dbo].[StudentDroppedOut]  WITH CHECK ADD  CONSTRAINT [FK_StudentDroppedOut_Course] FOREIGN KEY([Cono])
REFERENCES [dbo].[Course] ([cono])
GO
ALTER TABLE [dbo].[StudentDroppedOut] CHECK CONSTRAINT [FK_StudentDroppedOut_Course]
GO
ALTER TABLE [dbo].[StudentDroppedOut]  WITH CHECK ADD  CONSTRAINT [FK_StudentDroppedOut_Semester] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[Semester] ([SemesterId])
GO
ALTER TABLE [dbo].[StudentDroppedOut] CHECK CONSTRAINT [FK_StudentDroppedOut_Semester]
GO
ALTER TABLE [dbo].[StudentDroppedOut]  WITH CHECK ADD  CONSTRAINT [FK_StudentDroppedOut_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[StudentDroppedOut] CHECK CONSTRAINT [FK_StudentDroppedOut_Student]
GO
ALTER TABLE [dbo].[StudentExtraCurriculum]  WITH CHECK ADD  CONSTRAINT [FK_StudentExtraCurriculum_ExtraCurriculum] FOREIGN KEY([ExtraCurriculumId])
REFERENCES [dbo].[ExtraCurriculum] ([ExtraCurriculumId])
GO
ALTER TABLE [dbo].[StudentExtraCurriculum] CHECK CONSTRAINT [FK_StudentExtraCurriculum_ExtraCurriculum]
GO
ALTER TABLE [dbo].[StudentExtraCurriculum]  WITH CHECK ADD  CONSTRAINT [FK_StudentExtraCurriculum_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[StudentExtraCurriculum] CHECK CONSTRAINT [FK_StudentExtraCurriculum_Student]
GO
ALTER TABLE [dbo].[StudentFinancialAid]  WITH CHECK ADD  CONSTRAINT [FK_StudentFinancialAid_FinancialAid] FOREIGN KEY([FinancialAidId])
REFERENCES [dbo].[FinancialAid] ([FinancialAidId])
GO
ALTER TABLE [dbo].[StudentFinancialAid] CHECK CONSTRAINT [FK_StudentFinancialAid_FinancialAid]
GO
ALTER TABLE [dbo].[StudentFinancialAid]  WITH CHECK ADD  CONSTRAINT [FK_StudentFinancialAid_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[StudentFinancialAid] CHECK CONSTRAINT [FK_StudentFinancialAid_Student]
GO
ALTER TABLE [dbo].[StudentHealth]  WITH CHECK ADD  CONSTRAINT [FK_StudentHealth_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[StudentHealth] CHECK CONSTRAINT [FK_StudentHealth_Student]
GO
ALTER TABLE [dbo].[StudentPrevSchoolHistory]  WITH CHECK ADD  CONSTRAINT [FK_StudentPrevSchoolHistory_SchoolType] FOREIGN KEY([SchoolTypeId])
REFERENCES [dbo].[SchoolType] ([SchoolTypeId])
GO
ALTER TABLE [dbo].[StudentPrevSchoolHistory] CHECK CONSTRAINT [FK_StudentPrevSchoolHistory_SchoolType]
GO
ALTER TABLE [dbo].[StudentPrevSchoolHistory]  WITH CHECK ADD  CONSTRAINT [FK_StudentPrevSchoolHistory_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[StudentPrevSchoolHistory] CHECK CONSTRAINT [FK_StudentPrevSchoolHistory_Student]
GO
ALTER TABLE [dbo].[StudentProject]  WITH CHECK ADD  CONSTRAINT [FK_StudentProject_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[StudentProject] CHECK CONSTRAINT [FK_StudentProject_Student]
GO
ALTER TABLE [dbo].[StudentTardy]  WITH CHECK ADD  CONSTRAINT [FK_StudentTardy_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[StudentTardy] CHECK CONSTRAINT [FK_StudentTardy_Student]
GO
ALTER TABLE [dbo].[StudentTests]  WITH CHECK ADD  CONSTRAINT [FK_StudentTests_Course] FOREIGN KEY([Cono])
REFERENCES [dbo].[Course] ([cono])
GO
ALTER TABLE [dbo].[StudentTests] CHECK CONSTRAINT [FK_StudentTests_Course]
GO
ALTER TABLE [dbo].[StudentTests]  WITH CHECK ADD  CONSTRAINT [FK_StudentTests_Course1] FOREIGN KEY([Cono])
REFERENCES [dbo].[Course] ([cono])
GO
ALTER TABLE [dbo].[StudentTests] CHECK CONSTRAINT [FK_StudentTests_Course1]
GO
ALTER TABLE [dbo].[StudentTests]  WITH CHECK ADD  CONSTRAINT [FK_StudentTests_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[StudentTests] CHECK CONSTRAINT [FK_StudentTests_Student]
GO
ALTER TABLE [dbo].[Tution]  WITH CHECK ADD  CONSTRAINT [FK_Tution_Course] FOREIGN KEY([Cono])
REFERENCES [dbo].[Course] ([cono])
GO
ALTER TABLE [dbo].[Tution] CHECK CONSTRAINT [FK_Tution_Course]
GO
ALTER TABLE [dbo].[Tution]  WITH CHECK ADD  CONSTRAINT [FK_Tution_PaymentMethod] FOREIGN KEY([PaymentId])
REFERENCES [dbo].[PaymentMethod] ([PaymentMethodId])
GO
ALTER TABLE [dbo].[Tution] CHECK CONSTRAINT [FK_Tution_PaymentMethod]
GO
ALTER TABLE [dbo].[Tution]  WITH CHECK ADD  CONSTRAINT [FK_Tution_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[Tution] CHECK CONSTRAINT [FK_Tution_Student]
GO
