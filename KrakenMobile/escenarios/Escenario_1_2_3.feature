Feature: Iniciar de sesión 
  @user1 @web
  Scenario: Inicio de sesión con usuario válido
    Given I navigate to page "<URL>"   
    And I enter "<EMAIL>" into input field having id "ember8"
    And I enter "<PASSWORD>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I click on element having css selector "a[href*="site"]" 
    
  @user2 @web
  Scenario: Inicio de sesión fallido
    Given I navigate to page "<URL>"   
    And I enter "<EMAIL>" into input field having id "ember8"
    And I enter "<PASSWORD>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I should see text "Your password is incorrect."
 
  @user3 @web
  Scenario: Inicio de sesión fallido
    Given I navigate to page "<URL>"   
    And I enter "<EMAIL>" into input field having id "ember8"
    And I enter "<PASSWORD>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I should see text "Access denied."
	