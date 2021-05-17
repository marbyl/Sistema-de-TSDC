Feature: PAGES
  
  @user1 @web
  Scenario: Update publicación page existente actualizando el contenido
  
    Given I Start to Feature "PAGES" Scenario "Escenario_10"
    
    #login
	
    Given I navigate to page "<URL>"   
    And I enter "<EMAIL>" into input field having id "ember8"
    And I enter "<PASSWORD>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I click on element having css selector "a[href*="site"]" 
	
    #Crear Page
	
    Then I click on element having css selector "a[href*="pages"]"
    Then I click on element having css selector ".gh-btn-green"
    Then I enter "Pagina de Prueba Kraken Escenario_10" into input field having css selector "textarea"
    Then I click on element having css selector ".koenig-editor__editor"
    Then I enter "Que duro es hacer el primer script de pruebas" into input field having css selector ".koenig-editor__editor"
    Then I click on element having css selector ".view-actions"
    Then I click on element having css selector ".gh-publishmenu-button"
	
    #Actualizando page
    
    Then I click on element having css selector "a[href*="pages"]"
    Then I click on element having css selector ".gh-content-entry-title"
    Then I click on element having css selector ".koenig-editor__editor"
    Then I enter " , Estamos mejorando en nuestras pruebas" into input field having css selector ".koenig-editor__editor"
    Then I click on element having css selector ".view-actions"
    Then I click on element having css selector ".gh-publishmenu-button"
