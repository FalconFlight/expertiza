Feature: Test for environment
  In order to use these watir scripts
  As a good developer
  We need to make sure your environment is setup correctly with simple test

Scenario:Log into Expertiza, create users
  Given a browser is open to Expertiza with logging test-log.txt
  And I am logged into Expertiza as an Admin
  And I close the browser