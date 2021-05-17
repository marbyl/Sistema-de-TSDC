Feature: PAGES
  
  @user1 @web
  Scenario: Update publicación page existente despublicando
    
    Given I Start to Feature "PAGES" Scenario "Escenario_11"
    
    #login
	
    Given I navigate to page "<URL>"   
    And I enter "<EMAIL>" into input field having id "ember8"
    And I enter "<PASSWORD>" into input field having id "ember10"
    When I click on element having id "ember12"
    Then I click on element having css selector "a[href*="site"]" 
	
    #Crear  y publicando
	
    Then I click on element having css selector "a[href*="pages"]"
    Then I click on element having css selector ".gh-btn-green"
    Then I enter "Pagina de Prueba Kraken Escenario_11" into input field having css selector "textarea"
    Then I click on element having css selector ".koenig-editor__editor"
    Then I enter "Que duro es hacer el primer script de pruebas" into input field having css selector ".koenig-editor__editor"
    Then I click on element having css selector ".view-actions"
    When I click on element having css selector ".gh-publishmenu-button"
	

    #despublicando page    
    
    Then I click on element having css selector "a[href*="pages"]"
    Then I click on element having css selector ".gh-content-entry-title"
    Then I click on element having css selector ".view-actions"
    Then I click on element having css selector ".gh-publishmenu-radio-button"    
    Then I click on element having css selector ".gh-publishmenu-button"
