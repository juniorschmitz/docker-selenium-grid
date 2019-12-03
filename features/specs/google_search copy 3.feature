@google_search
Feature: Google Search
    I would like to make Google searchs!


Scenario Outline: Many google searchs
    Given i am on Google main page
    When i search for <string>
    Then there should be results

    Examples:
    |string|
    |"Docker"|
    |"Swarm"|

Scenario: Another sample 1
    Given i am on Google main page
    When i search for "searching"
    Then there should be results

Scenario: Another sample 2
    Given i am on Google main page
    When i search for "for"
    Then there should be results

Scenario: Another sample 3
    Given i am on Google main page
    When i search for "grid"
    Then there should be results

Scenario: Another sample 4
    Given i am on Google main page
    When i search for "going"
    Then there should be results

Scenario: Another sample 5
    Given i am on Google main page
    When i search for "potato"
    Then there should be results