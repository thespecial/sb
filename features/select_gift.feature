Feature: Select Gift
  Gift page allows user to select gift and proceed to payment

  Scenario Outline: User choose gift, sends email and proceed to payment
    Given I am on the /gift page
    When I click on “Buy Gift Now” button
    And I click “Buy Gift For <for>” button
    And I choose <package> package
    And I see “Who is this gift for?” dialog
    And I type recipient name "validname"
    And I type recipient email "valid@email.com"
    And I type personal message "message"
    And I click “Next” button
    And I see “When do you want to notify the recipient of your gift?” dialog
    And I click “Send Email”
    Then I am on the /gift/payment page

    Examples:
      |  for   | package |
      |  Him   |  44$  |
      |  Him   |  84$  |
      |  Him   |  164$ |
      |  Her   |  44$  |
      |  Her   |  84$  |
      |  Her   |  164$ |

