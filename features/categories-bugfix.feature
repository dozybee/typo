Feature: Categories Bug
  As an admin
  In order to have a better blog
  I want to create and edit a category

  Background:
    Given the blog is set up
    And the following users exist:
    | login | password | email    | name | profile_id | state  |
    | john  | aaaaaaaa | a@bc.com | John | 2          | active |

  Scenario: Create or edit a category
  When I am logged into the admin panel
  And I follow "Categories"
  Then I should be on the new categories page
