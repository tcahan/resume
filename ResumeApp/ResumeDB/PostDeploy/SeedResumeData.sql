DECLARE @Records int = (SELECT COUNT(*) FROM dbo.Resume)

-- If the database has not been seeded, add the default records
IF @Records = 0
BEGIN
	--------------------------------------------
	-- Seed Resume
	--------------------------------------------
	INSERT INTO dbo.Resume
		([Description], [Name], [Location], [Email], [Phone], [LinkedIn], [GitHub], [Objective])
		VALUES
			('Primary', 
			'Timothy Cahan', 
			'Bourbonnais, IL', 
			'timothy@cahan.dev', 
			null, 
			'https://www.linkedin.com/in/timothycahan/', 
			'https://github.com/tcahan', 
			'Highly skilled in designing and implementing scalable, secure, and cost-effective web solutions, leveraging state-of-the-art technologies to develop responsive applications. Expertise in providing leadership and development expertise to enhance team productivity and deliver robust software solutions. Proven track record in managing development responsibilities, addressing technical debt, and contributing to Azure DevOps build pipelines. Accountable for aligning solutions with architectural standards and collaborating effectively with enterprise architects and infrastructure teams to deliver innovative business applications.');

	-- Get the inserted ResumeId		
	DECLARE @ResumeId int = (SELECT SCOPE_IDENTITY())

	--------------------------------------------
	-- Seed CoreSkill using csv list of skills
	--------------------------------------------
	CREATE TABLE #SkillsTable (Value VARCHAR(100))
	DECLARE @SkillsList VARCHAR(MAX) = 'Software Design and Architecture,Scalable Web Solutions,Secure Web Development,Cost-Effective Solution Design,Technical,Leadership,Team Collaboration,Development Expertise,Technical Support,Technical Debt Management,Azure DevOps,Build Pipeline Automation,Agile Development,Project Planning,Full Stack Development,Backend Development,Frontend,Development,API Development,Microservices Architecture,RESTful APIs,Database Design and Optimization,SQL Server,Entity Framework,Unit Testing,Integration Testing,Continuous Integration/Continuous Deployment (CI/CD),Documentation,Skills,Commercial Application Development,End-User Business Applications,Sales Applications,Service Applications,Order,Management Systems,Catalog Applications,Responsive Web Development,State-of-the-Art Technologies,Enterprise,Architecture Alignment,Infrastructure Collaboration,Solution Architecture,Architecture Standards Adherence,Service-Oriented Architecture (SOA),Solution and Service Integration'

	INSERT INTO #SkillsTable (Value)
	SELECT value FROM STRING_SPLIT(@SkillsList, ',')

	INSERT INTO dbo.CoreSkill ([ResumeId], [Skill])
	SELECT @ResumeId, Value FROM #SkillsTable

	DROP TABLE #SkillsTable

	--------------------------------------------
	-- Seed Education
	--------------------------------------------
	INSERT INTO dbo.Education
		([ResumeId], [School], [Degree], [Major], [GraduationDate], [Location])
		VALUES
			(@ResumeId, 
			'Governors State University', 
			'Master of Science', 
			'Computer Science', 
			'2006-12-01', 
			'University Park, IL')

	INSERT INTO dbo.Education
		([ResumeId], [School], [Degree], [Major], [GraduationDate], [Location])
		VALUES
			(@ResumeId, 
			'Governors State University', 
			'Bachelor of Science', 
			'Computer Science', 
			'2004-12-01', 
			'University Park, IL')

	INSERT INTO dbo.Education
		([ResumeId], [School], [Degree], [Major], [GraduationDate], [Location])
		VALUES
			(@ResumeId, 
			'Kankakee Community College', 
			'Associate of Science', 
			'Engineering Science', 
			'2001-5-01', 
			'Kankakee, IL')

	--------------------------------------------
	-- Seed Proficiency
	--------------------------------------------
	DECLARE @ProficiencyId int 

	-- Azure
	INSERT INTO dbo.Proficiency([ResumeId], [Category])	Values(@ResumeId, 'Azure')
	SET @ProficiencyId = (SELECT SCOPE_IDENTITY())
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'App Services')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'SQL')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Functions')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'CosmosDB')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Key Vault')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'VM')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Search')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Cache for Redis')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Application Insights')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Kubernetes Services')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Storage')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Service Bus')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'SignalR')

	-- Frameworks and Technologies
	INSERT INTO dbo.Proficiency([ResumeId], [Category])	Values(@ResumeId, 'Frameworks and Technologies')
	SET @ProficiencyId = (SELECT SCOPE_IDENTITY())
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'ASP.NET Web Forms')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'MVC/Razor Pages')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Blazor')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Web API')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Entity Framework')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Dapper')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'HTML')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'CSS')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Telerik')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'jQuery')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'AJAX Control Toolkit')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'React.js')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Laravel')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Marionette.js')

	-- Languages
	INSERT INTO dbo.Proficiency([ResumeId], [Category])	Values(@ResumeId, 'Languages')
	SET @ProficiencyId = (SELECT SCOPE_IDENTITY())
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'C#')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'VB.NET')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'JavaScript')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'PHP')

	-- Databases
	INSERT INTO dbo.Proficiency([ResumeId], [Category])	Values(@ResumeId, 'Databases')
	SET @ProficiencyId = (SELECT SCOPE_IDENTITY())
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'MS SQL Server')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Oracle')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'MySQL')

	-- Software
	INSERT INTO dbo.Proficiency([ResumeId], [Category])	Values(@ResumeId, 'Software')
	SET @ProficiencyId = (SELECT SCOPE_IDENTITY())
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Visual Studio')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'VS Code')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Azure DevOps')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Team Foundation Server')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'JIRA')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Git')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'NuGet')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'npm')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Yarn')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Lightroom')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Photoshop')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Visual Source Safe')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Acrobat')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Fusion Pro')

	-- Dev Tools
	INSERT INTO dbo.Proficiency([ResumeId], [Category])	Values(@ResumeId, 'Dev Tools')
	SET @ProficiencyId = (SELECT SCOPE_IDENTITY())
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Postman')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Beyond Compare')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Dynatrace')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Style Cop')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Code Maid')
	INSERT INTO dbo.ProficiencySkill ([ProficiencyId],[Skill]) VALUES(@ProficiencyId, 'Fiddler')

	--------------------------------------------
	-- Seed Experience
	--------------------------------------------
	DECLARE @ExperienceId int

	-- Anju Software
	INSERT INTO dbo.Experience
		([ResumeId], [Company], [Location])
		VALUES
			(@ResumeId, 
			'Anju Software', 
			'Lisle, IL')
	SET @ExperienceId = (SELECT SCOPE_IDENTITY())

	INSERT INTO dbo.ExperienceTitle
		([ExperienceId], [Title], [StartDate], [EndDate])
		VALUES
			(@ExperienceId, 
			'Principal Software Engineer', 
			'2023-07-01', 
			'2024-07-01')

	INSERT INTO dbo.ExperienceTitle
		([ExperienceId], [Title], [StartDate], [EndDate])
		VALUES
			(@ExperienceId, 
			' Lead Senior Software Developer', 
			'2021-06-01', 
			'2023-07-01')

	INSERT INTO dbo.ExperienceTitle
		([ExperienceId], [Title], [StartDate], [EndDate])
		VALUES
			(@ExperienceId, 
			'.NET Developer', 
			'2018-12-01', 
			'2021-06-01')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Designed, developed, and maintained the Information Request Management System (IRMS) suite of FDA CFR PART 11 and EudraLex Annex 11 compliant business applications encompassing current and legacy technologies (C#, VB.NET, JavaScript, Web Forms, MVC/Razor Pages, React, Telerik, DevExpress).')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Designed and implemented RESTful APIs for internal and external consumption, facilitating seamless integration with thirdparty services and improving data exchange efficiency.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Enhanced the letter generation process by allowing edits to custom sections, using Aceoffix and for sections configured by the administrator, and consolidated references from all documents into a single list with Aspose.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Integrated external data sources, e.g., Salesforce, and document management systems, SAFE, with IRMS, expanding contact and document search functionalities.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Implemented API endpoints to facilitate case and letter management with IRMS-MAX, the React-based case entry application.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Set the standard for clear JIRA documentation, resulting in consistently commended tickets during client audits of software development processes.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Mentored and coached a team of 10+ software developers, fostering a culture of continuous learning and professional growth.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Led cross-functional Agile teams in the delivery of major product releases, achieving on-time delivery.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Collaborated with product management and stakeholders to define technical roadmaps and prioritize feature development, aligning technology initiatives with business goals and market demands.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Conducted code reviews and implemented best practices to ensure code quality and maintainability.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Streamlined workflows through automated functionalities such as script versioning in legacy Web Forms applications and customizable forms using JSON.')

	-- Creative Group
	INSERT INTO dbo.Experience
		([ResumeId], [Company], [Location])
		VALUES
			(@ResumeId, 
			'Creative Group, Inc.', 
			'Schaumburg, IL')
	SET @ExperienceId = (SELECT SCOPE_IDENTITY())

	INSERT INTO dbo.ExperienceTitle
		([ExperienceId], [Title], [StartDate], [EndDate])
		VALUES
			(@ExperienceId, 
			'Software Developer', 
			'2016-07-01', 
			'2018-12-01')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Leveraged PHP/Laravel, JavaScript, Marionette.js, and MySQL to enhance the Creative Edge platform and user experience.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Streamlined reporting with dynamic column generation based on field values and implemented browser compatibility checks.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Developed new features such as roommate pairing module.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Improved user interface by designing a major CSS layout overhaul for client-specific site and created reusable, custom CSS snippets for efficient development.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Demonstrated proficiency in server management by provisioning an Ubuntu server with SSL and CORS policy to host custom fonts for client sites as well as CentOS server for hosting our internal GitLab and JIRA.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Maintained code quality through peer reviews and actively participated in development design meetings.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Resolved issues that prevented a legacy classic ASP application from running reports.')

	-- OBA
	INSERT INTO dbo.Experience
		([ResumeId], [Company], [Location])
		VALUES
			(@ResumeId, 
			'Online Business Applications, Inc.', 
			'Woodridge, IL')
	SET @ExperienceId = (SELECT SCOPE_IDENTITY())

	INSERT INTO dbo.ExperienceTitle
		([ExperienceId], [Title], [StartDate], [EndDate])
		VALUES
			(@ExperienceId, 
			'Senior ASP.NET Developer', 
			'2013-11-01', 
			'2016-06-01')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Implemented a site layout redesign for a more intuitive and modern user experience while still supporting older IE browsers.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Developed a new case locking functionality and auto case save using C# to improve efficiency and prevent data corruption and loss.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Resolved control focus issues on postback and added page hotkey shortcut functionality using JavaScript.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Upgraded Telerik controls to the latest version, resolving any issues, and became the go-to Telerik person on the team.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Mentored peers in the use of jQuery and CSS, demonstrating my strong technical knowledge and communication skills.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Performed peer reviews to ensure code quality and application functionality.')

	-- Promed
	INSERT INTO dbo.Experience
		([ResumeId], [Company], [Location])
		VALUES
			(@ResumeId, 
			'Professional Medical, Inc.', 
			'New Lenox, IL')
	SET @ExperienceId = (SELECT SCOPE_IDENTITY())

	INSERT INTO dbo.ExperienceTitle
		([ExperienceId], [Title], [StartDate], [EndDate])
		VALUES
			(@ExperienceId, 
			'Senior ASP.NET Developer', 
			'2009-10-01', 
			'2013-11-01')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Enhanced functionality and performance of the B2B website by leveraging my expertise in ASP.NET, VB.NET, MSSQL, and IIS.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Implemented role management functionality, revamped site search with customization tools, and integrated the website with a new ERP system (Epicor Prophet 21).')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Improved the user experience by implementing site authentication using ADAM (AD LDS) for secure access and optimized performance by implementing caching, significantly reducing database usage and improving site responsiveness.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Maintained and developed the website, troubleshot data issues with SQL Server, and managed sites using IIS and VSS.')

	-- Hot Ideas
	INSERT INTO dbo.Experience
		([ResumeId], [Company], [Location])
		VALUES
			(@ResumeId, 
			'Hot Ideas Marketing Solutions', 
			'Tinley Park, IL')
	SET @ExperienceId = (SELECT SCOPE_IDENTITY())

	INSERT INTO dbo.ExperienceTitle
		([ExperienceId], [Title], [StartDate], [EndDate])
		VALUES
			(@ExperienceId, 
			'Lead VB.NET Developer', 
			'2007-02-01', 
			'2009-10-01')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Contributed to the development of CarIDeology, an RFID vehicle tracking system to monitor and display status to waiting dealership customers and winner of the 2007 Lexus Pursuit of Innovation Award.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Collaborated on the creation of Smart Drive Pay, a web-based appointment and payment system for dealerships and winner of the 2008 Lexus Pursuit of Innovation Award.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Successfully resolved numerous data discrepancies in print production, ensuring accurate information.')

	INSERT INTO dbo.ExperienceDetail ([ExperienceId], [Detail])
		VALUES (@ExperienceId, 'Integrated with dealership management systems, including Reynolds and Reynolds, ADP, and UCS, to synchronize their data in our system.')
END