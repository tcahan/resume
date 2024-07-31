# Timothy Cahan - Resume Project

This project is intened to function both as a resume and serve as a demonstration of my fluency with the various technologies required to build modern web applications.

The goal of this project is to ultimately contain the following:

- [x] Markdown version of my resume
- [ ] Create applications
  - [x] Database
  - [x] Data Accesss
  - [ ] Web API built in .NET 8 (or newer) in order to be agnostic to the front end
  - [ ] Frontend client(s) built using React and/or Blazor to dynamically display the resume and provide an admin section for updates
- [ ] Hosted application version of my resume
- [ ] Instructions for local instance setup
- [ ] Nice to haves, time permitting
  - [ ] CI/CD pipeline for easy updates
  - [ ] Direct contact form with spam protection
  - [ ] Custom domain with TLS

### Simple Demo Instructions (to be expanded later upon completion)

1. Clone repository
2. Open project in Visual Studio
3. Publish the ResumeDB project to your SQL server of choice (Note that it may be necessary to change the target platfrom from SQL Server 2019 depending on your setup)
4. Configure the connection string for you database
   1. Get the connection string for the created database
   2. Right click on the _ResumeAPI_ project and select _Manage User Secrets_ (you may skip this step and go directly to step 4 if preferred)
   3. Copy the connection string section from the _appsettings.json_ to the secrets file
   4. Fill in the value for the _Default_ connection with the connection string for the database
5. Run the ResumeAPI project
6. Swagger (OpenAPI) will be displayed for testing (endpoint implementation coming soon)

---

# Timothy Cahan

## OBJECTIVE

Highly skilled in designing and implementing scalable, secure, and cost-effective web solutions, leveraging state-of-the-art technologies to develop responsive applications. Expertise in providing leadership and development expertise to enhance team productivity and deliver robust software solutions. Proven track record in managing development responsibilities, addressing technical debt, and contributing to Azure DevOps build pipelines. Accountable for aligning solutions with architectural standards and collaborating effectively with enterprise architects and infrastructure teams to deliver innovative business applications.

## CORE SKILLS

Software Design and Architecture | Scalable Web Solutions | Secure Web Development | Cost-Effective Solution Design | Technical Leadership | Team Collaboration | Development Expertise | Technical Support | Technical Debt Management | Azure DevOps | Build Pipeline Automation | Agile Development | Project Planning | Full Stack Development | Backend Development | Frontend Development | API Development | Microservices Architecture | RESTful APIs | Database Design and Optimization | SQL Server | Entity Framework | Unit Testing | Integration Testing | Continuous Integration/Continuous Deployment (CI/CD) | Documentation Skills | Commercial Application Development | End-User Business Applications | Sales Applications | Service Applications | Order Management Systems | Catalog Applications | Responsive Web Development | State-of-the-Art Technologies | Enterprise Architecture Alignment | Infrastructure Collaboration | Solution Architecture | Architecture Standards Adherence | Service-Oriented Architecture (SOA) | Solution and Service Integration

## PROFESSIONAL EXPERIENCE

#### Principal Software Engineer - July 2023 - July 2024 | Lead Senior Software Developer - June 2021 - July 2023 | .Net Developer – December 2018 – June 2021 | Anju Software | Lisle, IL

- Designed, developed, and maintained the Information Request Management System (IRMS) suite of FDA CFR PART 11 and EudraLex Annex 11 compliant business applications encompassing current and legacy technologies (C#, VB.NET, JavaScript, Web Forms, MVC/Razor Pages, React, Telerik, DevExpress).
- Designed and implemented RESTful APIs for internal and external consumption, facilitating seamless integration with third-party services and improving data exchange efficiency.
- Enhanced the letter generation process by allowing edits to custom sections, using Aceoffix and for sections configured by the administrator, and consolidated references from all documents into a single list with Aspose.
- Integrated external data sources, e.g., Salesforce, and document management systems, SAFE, with IRMS, expanding contact and document search functionalities.
- Implemented API endpoints to facilitate case and letter management with IRMS-MAX, the React-based case entry application.
- Set the standard for clear JIRA documentation, resulting in consistently commended tickets during client audits of software development processes.
- Mentored and coached a team of 10+ software developers, fostering a culture of continuous learning and professional growth.
- Led cross-functional Agile teams in the delivery of major product releases, achieving on-time delivery.
- Collaborated with product management and stakeholders to define technical roadmaps and prioritize feature development, aligning technology initiatives with business goals and market demands.
- Conducted code reviews and implemented best practices to ensure code quality and maintainability.
- Streamlined workflows through automated functionalities such as script versioning in legacy Web Forms applications and customizable forms using JSON.

#### Software Developer - July 2016 - December 2018 | Creative Group, Inc. | Schaumburg, IL

- Leveraged PHP/Laravel, JavaScript, Marionette.js, and MySQL to enhance the Creative Edge platform and user experience.
- Streamlined reporting with dynamic column generation based on field values and implemented browser compatibility checks.
- Developed new features such as roommate pairing module.
- Improved user interface by designing a major CSS layout overhaul for client-specific site and created reusable, custom CSS snippets for efficient development.
- Demonstrated proficiency in server management by provisioning an Ubuntu server with SSL and CORS policy to host custom fonts for client sites as well as CentOS server for hosting our internal GitLab and JIRA.
- Maintained code quality through peer reviews and actively participated in development design meetings.
- Resolved issues that prevented a legacy classic ASP application from running reports.

#### Senior ASP.NET Developer - November 2013 - June 2016 | Online Business Applications, Inc. | Woodridge, IL

- Implemented a site layout redesign for a more intuitive and modern user experience while still supporting older IE browsers.
- Developed a new case locking functionality and auto case save using C# to improve efficiency and prevent data corruption and loss.
- Resolved control focus issues on postback and added page hotkey shortcut functionality using JavaScript.
- Upgraded Telerik controls to the latest version, resolving any issues, and became the go-to Telerik person on the team.
- Mentored peers in the use of jQuery and CSS, demonstrating my strong technical knowledge and communication skills.
- Performed peer reviews to ensure code quality and application functionality.

#### Senior ASP.NET Developer - | October 2009 - November 2013 | Professional Medical, Inc. | New Lenox, IL

- Enhanced functionality and performance of the B2B website by leveraging my expertise in ASP.NET, VB.NET, MSSQL, and IIS.
- Implemented role management functionality, revamped site search with customization tools, and integrated the website with a new ERP system (Epicor Prophet 21).
- Improved the user experience by implementing site authentication using ADAM (AD LDS) for secure access and optimized performance by implementing caching, significantly reducing database usage and improving site responsiveness.
- Maintained and developed the website, troubleshot data issues with SQL Server, and managed sites using IIS and VSS.

#### Lead VB.NET Developer - February 2007 - October 2009 | Hot Ideas Marketing Solutions | Tinley Park, IL

- Contributed to the development of CarIDeology, an RFID vehicle tracking system to monitor and display status to waiting dealership customers and winner of the 2007 Lexus Pursuit of Innovation Award.
- Collaborated on the creation of Smart Drive Pay, a web-based appointment and payment system for dealerships and winner of the 2008 Lexus Pursuit of Innovation Award.
- Successfully resolved numerous data discrepancies in print production, ensuring accurate information.
- Integrated with dealership management systems, including Reynolds and Reynolds, ADP, and UCS, to synchronize their data in our system.

## EDUCATION

#### Governors State University | University Park, IL | December 2006

- Master of Science in Computer Science

#### Governors State University | University Park, IL | December 2004

- Bachelor of Science in Computer Science

#### Kankakee Community College | Kankakee, IL | May 2001

- Associate of Engineering Science

## PROFICIENCIES

- Azure - App Services, SQL, Functions, CosmosDB, Key Vault, VM, Search, Cache for Redis, Application Insights, Kubernetes Services, Storage, Service Bus, SignalR
- Frameworks and Technologies - ASP.NET Web Forms, MVC/Razor Pages, Blazor, Web API, Entity Framework, Dapper, HTML, CSS, Telerik, jQuery, AJAX Control Toolkit, React.js, Laravel, Marionette.js
- Languages - C#, VB.NET, JavaScript, PHP
- Databases - MS SQL Server, Oracle, MySQL
- Software - Visual Studio, VS Code, Azure DevOps, Team Foundation Server, JIRA, Git, NuGet, npm, Yarn, Lightroom, Photoshop, Visual Source Safe, Acrobat, Fusion Pro
- Dev Tools – Postman, Beyond Compare, Dynatrace, Style Cop, Code Maid, Fiddler
