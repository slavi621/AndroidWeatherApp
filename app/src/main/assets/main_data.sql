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


GO
INSERT [dbo].[Student] ([EGN], [f_Name], [s_Name], [l_Name], [Name_Specialty], [email], [phone_number], [city], [SpecialtyID]) VALUES (9607154698, N'Gregorii', N'Gregoriev', N'Stanoev',N'International retaions', N'g@gmail.com', 05854656, N'Sofia',1)
GO
INSERT [dbo].[Student] ([EGN], [f_Name], [s_Name], [l_Name], [Name_Specialty], [email], [phone_number], [city], [SpecialtyID]) VALUES (9607454698, N'Tanq', N'Gregoriev', N'Stanoeva',N'Business Administration', N'tanq@gmail.com', 05878560, N'Sofia',2)
GO
INSERT [dbo].[Student] ([EGN], [f_Name], [s_Name], [l_Name], [Name_Specialty], [email], [phone_number], [city], [SpecialtyID]) VALUES (9607456698, N'Velko', N'Rakev', N'Stanoev',N'Business Administration ',N'vvvv@gmail.com', 07846235, N'Sofia',3)
 

GO
INSERT [dbo].[More_info] ([DurationID], [Location], [Duration_in_years], [Duration_in_semesters], [Fee_per_semester], [Studying_type]) VALUES (1, N'Sofia', 4, 8, 335, N'Regular')
GO
INSERT [dbo].[More_info] ([DurationID], [Location], [Duration_in_years], [Duration_in_semesters], [Fee_per_semester], [Studying_type]) VALUES (2, N'Sofia', 4, 8, 231, N'Regular')
GO
INSERT [dbo].[More_info] ([DurationID], [Location], [Duration_in_years], [Duration_in_semesters], [Fee_per_semester], [Studying_type]) VALUES (3, N'Sofia', 4, 8, 231, N'Regular')
GO
