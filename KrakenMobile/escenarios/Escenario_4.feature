Feature: POST
  
  @user1 @web
  Scenario: Crear post con título y consultar en el listado
  
    Given I Start to Feature "POST" Scenario "Escenario_4"
    
    #login
    Given I navigate to page "<URL>"   
    And I enter "<EMAIL>" into input field having id "ember8"
    And I enter "<PASSWORD>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I click on element having css selector "a[href*="site"]" 
	
    #Crear Post
	
    Then I click on element having css selector "a[href*="posts"]"   
    Then I click on element having css selector ".gh-btn-green"
    Then I enter "Post de Prueba Kraken Escenario_4" into input field having css selector "textarea"
    Then I click on element having css selector ".koenig-editor__editor"
    Then I enter "Que duro es hacer el primer script de pruebas" into input field having css selector ".koenig-editor__editor"
    When I click on element having css selector "a[href*="posts"]"
