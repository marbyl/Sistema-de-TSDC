Feature: TAGS
  
  @user1 @web
  Scenario: Crear tag sin información en la metadata.
  
    Given I Start to Feature "TAGS" Scenario "Escenario_12"
    
    #login
	
    Given I navigate to page "<URL>"   
    And I enter "<EMAIL>" into input field having id "ember8"
    And I enter "<PASSWORD>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I click on element having css selector "a[href*="site"]" 
	
    #Crear tag
	
    Then I click on element having css selector "a[href*="tags"]"
    Then I click on element having css selector ".gh-btn-green"
    Then I enter "tag ejemplo kraken" into input field having id "tag-name"   
    Then I enter "tag ejemplo kraken" into input field having id "tag-description"
    When I click on element having css selector ".view-actions"
    Given I navigate to page "<URL>"
    Then I click on element having css selector "a[href*="tags"]"	
