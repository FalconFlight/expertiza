Feature: Run killer demo for CSC517 final project
  In order to get a good grade on our final assignment
  As an outstanding team
  We need to wow the crowd ... 

Scenario:Log into Expertiza, create users
  Given a browser is open to Expertiza with logging demo-log.txt
  And I am logged into Expertiza as an Admin
  When I go to manage users
  And I want to create DEMO_CREATE_USERS_NUMBER users with the name DEMO_CREATE_USERS_USERNAME
  Then make sure the DEMO_CREATE_USERS_NUMBER users with the name DEMO_CREATE_USERS_USERNAME were created
  And I close the browser
 
Scenario:Create Course
  Given a browser is open to Expertiza with logging demo-log.txt
  And I am logged into Expertiza as an Admin
  And I navigate to the ASSIGNMENT_LIST
  And I Create a public course
  When I fill in the text_field "course_name" with "democourse"
  And I fill in the text_field "course_directory_path" with "democourse path"
  And I fill in the text_field "course_info" with "democourse info"
  And I click the "Create" button
  And I verify that the page contains the text "democourse"
  And I close the browser
 
Scenario:Create Assignment
  Given a browser is open to Expertiza with logging demo-log.txt
  And I am logged into Expertiza as an Admin
  And I navigate to the ASSIGNMENT_LIST
  Then I click the "Create Public Assignment" link
  And I fill in the text_field "assignment_name" with "demoassignment"
  And I fill in the text_field "assignment_directory_path" with "demoassignmentpath"
  And I fill in the text_field "submit_deadline_due_at" with "2010-12-30 22:32:00"
  And I fill in the text_field "review_deadline_due_at" with "2011-01-01 22:32:00"
  And I fill in the text_field "reviewofreview_deadline_due_at" with "2010-12-30 22:32:00"
  And I click the "Save assignment" button
  Then I verify that the page contains the text "demoassignment"
  And I close the browser
  
Scenario:Assign an Assignment to a Course
  Given a browser is open to Expertiza with logging demo-log.txt
  And I am logged into Expertiza as an Admin
  Then I look for assignment DEMO_ASSIGN_ASSIGNMENT_NAME and add it to course DEMO_ASSIGN_ASSIGNMENT_COURSE
  And I close the browser

Scenario:Add Participants to an Assignment
  Given a browser is open to Expertiza with logging demo-log.txt
  And I am logged into Expertiza as an Admin
  And I navigate to the ASSIGNMENT_MENU_LIST
  Then I click to Add Participants for assignment DEMO_ASSIGN_ASSIGNMENT_NAME
  And I fill in the text_field "user_name" with "demouser1"
  And I click the "Add Participant" button
  Then I verify that the page contains the text "demouser1"
  And I close the browser
  
Scenario:  Log into Expertiza, create teams for course
  Given a browser is open to Expertiza with logging demo-log.txt
  And I am logged into Expertiza as an Admin
  And that there is a course created
  And there are other members of expertiza
  When I go to course DEMO_ASSIGN_ASSIGNMENT_COURSE I should be able to create new teams
  Then I can upload a CSV file DEMO_CREATE_TEAM_IMPORT_FILENAME to import teams
  And make sure the teams DEMO_CREATE_TEAM_IMPORT_TEAMS are created
