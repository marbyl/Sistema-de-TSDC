Feature: POST
  
  @user1 @web
  Scenario: Update publicación existente actualizando el contenido
    
    Given I Start to Feature "POST" Scenario "Escenario_6"
    
    #login
	
    Given I navigate to page "<URL>"   
    And I enter "<EMAIL>" into input field having id "ember8"
    And I enter "<PASSWORD>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I click on element having css selector "a[href*="site"]" 
	
    #Crear Post
	
    Then I click on element having css selector "a[href*="posts"]"   
    Then I click on element having css selector ".gh-btn-green"
    Then I enter "Post de Prueba Kraken Escenario_6" into input field having css selector "textarea"
    Then I click on element having css selector ".koenig-editor__editor"
    Then I enter "Que duro es hacer el primer script de pruebas" into input field having css selector ".koenig-editor__editor"
    Then I click on element having css selector ".view-actions"
    When I click on element having css selector ".gh-publishmenu-button"
    Then I click on element having css selector "a[href*="posts"]"
	
    #Actualizando post
    
    Then I click on element having css selector "a[href*="posts"]"
    Then I click on element having css selector ".gh-content-entry-title"
    Then I click on element having css selector ".koenig-editor__editor"
    Then I enter " , Estamos mejorando en nuestras pruebas" into input field having css selector ".koenig-editor__editor"
    Then I click on element having css selector ".view-actions"
    When I click on element having css selector ".gh-publishmenu-button"
    Then I click on element having css selector "a[href*="posts"]"
