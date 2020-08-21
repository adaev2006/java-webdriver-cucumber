@market
  Feature: marketing test suite

    @market1
    Scenario: Navigation for Quote
      Given I go to "google" page
      When I print page details
      And I go to "quote" page
      And I print page details
      And I go back and forward, then refresh

    @market2
    Scenario: Required fields for Quote
      Given I go to "quote" page
      And I print page details
      When I fill out required fields
      And I submit results
      Then I verify required fields

