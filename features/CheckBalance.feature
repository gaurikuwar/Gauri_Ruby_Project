Feature: Validate the fields and calculations in the excercise
  This feature validates the total balance page for excercise1

  Scenario: Verify the available fields on the screen
    Given the user is on total balance page
    Then the user should be able to see the required fields on the page
    And the fields should be in the correct format

    Scenario: Verify the total calculation on the total balance page
      Given the user is on total balance page
      Then the total of the values should match the value in the total balance field