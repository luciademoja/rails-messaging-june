Feature: Manage conversations
  As a user
  In order to manage my conversations
  I want to be able to add, remove and view messages

  Background:
    Given the following users exist
      | name    | email              | password |
      | visitor | visitor@email.com  | password |

    Given I am on the login page
    And I fill in "Email" with "visitor@email.com"
    And I fill in "Password" with "password"
    And I click button "Log in"
    Then I should be logged in as "visitor"

  Scenario: Compose a message
    Given I am in the inbox page
    Then I should see a "Compose" button
    When I click button "Compose"
    Then I should be in the conversation page
    #Then show me the page
    And I should see "Recipients"
    And I should see "Subject"
    And I should see "Message"
    And I should see a "Send Message" button
    When I click button "Send Message"
    Then I should be on the conversation:id page
