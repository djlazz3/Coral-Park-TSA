# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

x = User.new
x.username = 'admin'
x.first_name = 'admin'
x.last_name = 'admin'
x.email = 'admin@admin.com'
x.password = 'password1'
x.password_confirmation = 'password1'
x.admin = true
x.save

events = Event.create([
                          {name: 'Animatronics', description: 'Participants (one team per chapter, one entry per team) demonstrate knowledge of mechanical and control systems by designing, fabricating, and controlling an animatronics device that will communicate, entertain, inform, demonstrate and/or illustrate a topic, idea, subject or concept. Sound, lights and a surrounding environment must accompany the device.'},
                          {name: 'Architectural Renovation', description: 'Participants (one individual or team per chapter, one entry per individual or team) develop a set of architectural plans and related materials for an annual architectural design challenge and construct a physical, as well as a computer-generated model, to accurately depict their design.'},
                          {name: 'Biotechnology Design', description: 'Participants (three teams of two to six individuals per state, one entry per team) select a contemporary biotechnology problem (that relates to the current year’s published area of focus) and demonstrate understanding of it through documented research, the development of a solution, a display, and an effective multimedia presentation.'},
                          {name: 'Career Preparation', description: 'Participants (six individuals per state) research technology-related careers designated by the Bureau of Labor Statistics as falling in the top ten employment growth areas in the near future. As part of the research for the careers noted in the current conference year,students prepare a resume and cover letter for each career. Semifinalists participate in an on-site job interview related to one of the careers.'},
                          {name: 'Chapter Team', description: 'Participants (one team of six individuals per chapter) take a written parliamentary procedures test in order to qualify for the semifinalist level of competition. Semifinalist teams perform an opening ceremony, dispose of three items of business, and perform a closing ceremony within a specified time period.'},
                          {name: 'Children’s Stories', description: 'Participants (one team per chapter; a team of one individual is permitted) create an illustrated children’s story of artistic, instructional, and social value. The story must have a science, technology, engineering, and mathematics (STEM) focus. It may be written in prose or poetry and take the form of a fable, adventure story, or other structure.'},
                          {name: 'Computer-Aided Design (CAD) 2D, Architecture', description: 'Participants (two individuals per state) create representations, such as foundation and/or floor plans, and/or elevation drawings, and/or details of architectural ornamentation or cabinetry.'},
                          {name: 'Computer-Aided Design (CAD) 3D, Engineering', description: 'Participants (two individuals per state) create 3D computer model(s) of an engineering or machine object, such as a machine part, tool, device, or manufactured product.'},
                          {name: 'Computer Numerical Control (CNC) Production', description: 'Participants (one team of two individuals per chapter, one entry per team) design, fabricate, and demonstrate their ability to use a CNC machine to produce a device based on a problem posted on the TSA website.'},
                          {name: 'Debating Technological Issues', description: 'Participants (three teams of two individuals per state) work together to prepare for a debate against a team from another chapter. Teams are instructed on site to take either the pro or con side of a subtopic (which falls under a general topic) that is designated annually.'},
                          {name: 'Desktop Publishing', description: 'Participants (three individuals per state) produce a portfolio containing a news release, a three-column newsletter, and a poster. Semifinalists work to solve an on-site problem to demonstrate their abilities to use the computer to design and edit materials for an in-house publication.'},
                          {name: 'Digital Video Production', description: 'Participants (three teams per state, one entry per team) develop a digital video/film that focuses on the current year’s theme. Sound should accompany the film.'},
                          {name: 'Dragster Design', description: 'Participants (two individuals per chapter, one entry per individual) design, produce working drawings for, and build a CO2-powered dragster.'},
                          {name: 'Engineering Design', description: 'Participants (one team of three to five individuals per chapter, one entry per team) work to design and fabricate a device that will meet the specific needs of a person with a disability. Through use of a model/prototype, display, and portfolio, participants document and justify their identified problem and solution, as well as the solution’s impact on a member of their community and on society. Semifinalists
justify and demonstrate their solution in a timed presentation.'},
                          {name: 'Essays on Technology', description: 'Participants (three individuals per state) write a synthesis essay to make insightful connections based on a current technological topic.'},
                          {name: 'Extemporaneous Speech', description: 'Participants (three individuals per state) give a three to five minute speech fifteen minutes after having drawn a card on which a technology or TSA topic for a speech is written.'},
                          {name: 'Fashion Design', description: 'Participants (three teams of two to four individuals per state) research, develop, and create garment designs, garment mockups, and portfolios that reflect the current year’s published theme. Semifinalists participate in an on-site event in which they present their garment designs to judges.'},
                          {name: 'Flight Endurance', description: 'Participants (two individuals per chapter, one entry per individual) analyze flight principles with a rubber band-powered model aircraft.'},
                          {name: 'Future Technology Teacher', description: 'Participants (three individuals per chapter) research and select three accredited colleges or universities that offer technology education teacher preparation as a major. Each participant writes a one page simulated college essay explaining why he/she would like to become a technology educator and what would constitute success in the field. Participants also develop and present a lesson plan to judges.'},
                          {name: 'Manufacturing Prototype', description: 'Participants (one team per chapter) design and manufacture a prototype of a product (designated annually) and provide a description of how the product could be manufactured in a state-of-the-art American manufacturing facility'},
                          {name: 'Music Production', description: 'Participants (three teams per state; a team of one member is permitted) produce an original musical piece that is designed to be played during the national TSA conference opening or closing general sessions.'},
                          {name: 'On Demand Video', description: 'Participants (one team of two or more individuals per chapter, one entry per team) write, shoot, and edit a sixty-second video on site at the conference.'},
                          {name: 'Photographic Technology', description: 'Participants (one individual per chapter) capture and process photographic and digital prints that depict the current year’s published theme. Semifinalists participate in an on-site event in which they capture digital images and utilize multimedia software to prepare and develop a media presentation during the annual conference.'},
                          {name: 'Prepared Presentation', description: 'Participants (three individuals per state) deliver an oral presentation that includes a visual enhancement, based on the theme for the current year’s conference.'},
                          {name: 'Promotional Graphics', description: 'Participants (two individuals per chapter, one entry each) develop and submit electronically a graphic design that can be used to promote participation in TSA-related interests.'},
                          {name: 'SciVis', description: 'Participants (three teams per state, one entry per team) develop a visualization focusing on a subject or topic from one or more of the following areas: science, technology, engineering or mathematics.'},
                          {name: 'Software Development', description: 'Participants (one team per chapter) work as part of a team to participate in the development, debugging, and documentation of a software design project using freely available software development toolkits. Through a multimedia presentation and documentation, the team explains its knowledge of the software development process.'},
                          {name: 'Structural Design and Engineering', description: 'Participants (one team of two individuals per chapter, one entry per team) work as part of a team to build a structure that is posted on the TSA website. The structure is destructively tested and assessed to determine design efficiency. Semifinalists work on a construction problem that is a variation of the posted design.'},
                          {name: 'System Control Technology', description: 'Participants (one team of three individuals per state, one entry per team) work as part of a team on site to develop a computer-controlled model-solution to a problem, typically one from an industrial setting. Teams analyze the problem, build a computer-controlled mechanical model, program the model, explain the program and mechanical features of the model-solution, and write instructions for evaluators to operate the device.'},
                          {name: 'Technical Sketching and Application', description: 'Participants (two individuals per chapter) complete a written test in order to qualify for the semifinalist level of competition. Semifinalists must demonstrate their ability to solve on-site engineering graphics problems using standard drafting techniques.'},
                          {name: 'Technology Bowl', description: 'Participants (one team of three individuals per chapter) complete a written, objective test in order to qualify for oral question/response, head-to-head team competition.'},
                          {name: 'Technology Problem Solving', description: 'Participants (one team of two individuals per chapter) work together on site to develop and create a solution to a problem using the limited materials provided and the tools allowed.'},
                          {name: 'Transportation Modeling', description: 'Participants (one individual per chapter, one entry per individual) design and produce a scale model of a vehicle that fits the annual design problem.'},
                          {name: 'Vex'},
                          {name: 'Video Game Design', description: 'Participants [three teams per state (a minimum of two individuals per team), one entry per team] develop an E+10-rated game that focuses on the subject of their choice.'},
                          {name: 'Webmaster', description: 'Participants (one team of three to five individuals per chapter) are required to design, build, and launch a website that features their school’s career and technology/engineering program, the TSA chapter, and the chapter’s ability to research and present a given topic pertaining to technology. Semifinalists participate in an on-site interview to demonstrate the knowledge and expertise gained during the development of the website - with an emphasis on web design methods and practices, as well as their research for the annual design topic.'}
                      ])