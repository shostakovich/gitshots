Feature: Display gitshots
  In order to see how I look during commits
  Developers should be able to
  watch there latest gitshots on a listpage

  Scenario: View the latest gitshots
    Given some existing gitshots
    When I visit the list of gitshots
    Then I should see a list of gitshots
