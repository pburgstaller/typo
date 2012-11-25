Feature: Merge Articles
  As a blog administrator
  In order to limit the amout of typing I have to do
  I want to be able to merge two articles into one

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I am on the new article page
    Then I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    Then I should be on the admin content page
    And I am on the new article page
    Then I fill in "article_title" with "Foobar2"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum2"
    And I press "Publish"
    Then I should be on the admin content page

  Scenario: Do not show "Merge Articles" on a new article page
    Given I am on the new article page
    Then I should not see "Merge Articles"

  Scenario: Successfully merge two articles
    Given I am on the manage articles page
    Then I should see "Foobar"
    Then I follow "Edit"
    Then I should see "Merge Articles"
