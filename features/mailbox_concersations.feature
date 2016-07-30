Feature: Manage conversations
  As a user
  In order to manage my conversations
  I want to be able to add, remove and view messages

  Background:
    Given the following users exist
      | name     | email              | password  |
      | visitor  | visitor@email.com  | password  |
      | Lucia    | lucia@email.com    | ragnarok  |

    Given I am on the login page
    And I fill in "Email" with "visitor@email.com"
    And I fill in "Password" with "password"
    And I click button "Log in"
    Then I should be logged in as "visitor"

  Scenario: Compose and send a message
    Given I am in the inbox page
    And I click button "Compose"
    Then I should be in the writing page
    When I select "Lucia" as "Recipients"
    And I fill in "Subject" with "Ciao"
    And I fill in "Type your message here" with "Message to the people"
    And I click button "Send Message"
    Then I should be on the conversation page
