Feature: Detect No-Category-Bug
  As a blog administrator
  In order to prevent this bug
  I want to find the No-Category-Bug

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And there are no categories


  Scenario: Verify existence of the bug
    When I follow the "categories" link
    Then I should see the "New Categories" page
