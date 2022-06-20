# JasonTutoringServicesSpringBoot
Spring Boot verison of Jason Tutoring Services

What changed?

- Contact page now saves customers inquiries into H2 Database
- Use of Spring CrudRepository to generate/execute queries instead of manually writing them out like my EzPassWebVersion application. 
- New feature: Admin (aka me)

Customers
- Send inquiries. They will recieve a ticket number. 

Admin
- Delete ticket (After ticket is resolved)
- View all customer tickets
- View a specific customer's ticket (if they email me to add on to their inquiries)

Notes
- We're using an old version of H2 due to breaking changes. Since the H2 Database is purely used for testing purposes we can keep the version at 1.4.199.
- I plan to implement light box in the netbeans picture.  
- Loading jquery UI from local machine instead of http because when loading from http it takes more time to load the page. 
- This is just a fun project for me to play around with Spring Boot. I plan to add more complexity to this project. 
