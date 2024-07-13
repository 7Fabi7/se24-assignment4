Feature: InsertIntoListAcceptanceTests
  This feature inserts sorted elements into a list.

  Scenario: Insert elements into empty list
    Given an empty list
    When I append an element with value 7.7
    Then the list should contain 1 element
    And the list should contain that element

  Scenario: Insert smallest element into list
    Given I have elements with the following values in my list:
      | 2.0 |
      | 3.0 |
      | 4.0 |
    When I append an element with value 1.0
    Then the list should contain 4 elements
    And the list should contain the elements in the following order:
      | 1.0 |
      | 2.0 |
      | 3.0 |
      | 4.0 |

  Scenario: Insert biggest element into list
    Given I have elements with the following values in my list:
      | 2.0 |
      | 3.0 |
      | 4.0 |
    When I append an element with value 5.0
    Then the list should contain 4 elements
    And the list should contain the elements in the following order:
      | 2.0 |
      | 3.0 |
      | 4.0 |
      | 5.0 |
