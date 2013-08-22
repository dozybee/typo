Feature: Merge Articles
  As an admin
  In order to consolidate articles with a similar topic
  I want to merge two articles into one

  Background:
    Given the blog is set up
    And the following users exist:
    | login | password | email    | name | profile_id | state  |
    | john  | aaaaaaaa | a@bc.com | John | 2          | active |

  Scenario: Merge article shown
  When I am logged into the admin panel
  And I am on the edit page
  Then I should see "Merge Articles"
  And I should see "Article ID"

  Scenario: Merge article shown using same ID
  When I am logged into the admin panel
  And I am on the edit page
  And I fill in "merge_with" with "1"
  And I press "Merge"
  Then I should be on the edit page

  Scenario: A non-admin cannot merge two articles
    When I am on the login page
    And I login as a non-admin user
    And I am on the edit page
    Then I should not see "Merge Articles"

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    When I am logged into the admin panel
    And I write article "Article One" with content "Content of article One"
    And I write article "Article Two" with content "Contents of article Two"
    And I merge "Article One" with "Article Two"
    Then I should see "Content of article One"
    And I should see "Contents of article Two"


