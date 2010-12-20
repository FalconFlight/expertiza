Feature: Accept Invite to a Team for an Assignment
  In order to work on an assignment as a team
  As an expertiza user
  I want to accept a team invite for that assignment

Scenario:  Log into Expertiza, accept team invite
  Given a browser is open to Expertiza with logging accept_team_invites-log.txt
  And I am logged into Expertiza as ACCEPT_TEAM_INVITE_USER_LOGIN with password ACCEPT_TEAM_INVITE_USER_PASSWORD
  And I open assignment ACCEPT_TEAM_INVITE_ASSIGNMENT
  When I go to edit my team
  Then I should see that I have an invite pending
  And I close the browser
