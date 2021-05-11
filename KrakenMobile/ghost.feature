Feature: Shared board connection

  @user1 @web
  Scenario: As a first user
    Given I navigate to page "<URL>"
    Then I enter "<EMAIL>" into input field having id "ember8"
    Then I enter "<PASSWORD>" into input field having id "ember10"
    Then I click on element having id "ember12"
    Then I click on element having css selector "a[href*="posts"]"   
    Then I click on element having css selector ".gh-btn-green"
    Then I enter "Post de Prueba Kraken" into input field having css selector "textarea"
    Then I click on element having css selector ".koenig-editor__editor"
    Then I enter "Que duro es hacer el primer script de pruebas" into input field having css selector ".koenig-editor__editor"
    Then I click on element having css selector ".view-actions"
    Then I click on element having css selector ".gh-publishmenu-button"
    #Then I click on element having css selector ".post-settings"
    
    Given I navigate to page "<URL>"
    Then I click on element having css selector "a[href*="pages"]"
    Then I click on element having css selector ".gh-btn-green"
    Then I enter "Pagina de Prueba Kraken" into input field having css selector "textarea"
    Then I click on element having css selector ".koenig-editor__editor"
    Then I enter "Que duro es hacer el primer script de pruebas" into input field having css selector ".koenig-editor__editor"
    Then I click on element having css selector ".view-actions"
    Then I click on element having css selector ".gh-publishmenu-button"
    #Then I click on element having css selector ".post-settings"
    
    Given I navigate to page "<URL>"
    Then I click on element having css selector "a[href*="tags"]"
    Then I click on element having css selector ".gh-btn-green"
    Then I enter "tag ejemplo kraken" into input field having id "tag-name"   
    Then I enter "tag ejemplo kraken" into input field having id "tag-description"
    Then I click on element having css selector ".view-actions"
    Given I navigate to page "<TAG>"

    Then I click on element having css selector "a[href*="design"]"    
    Then I click on element having css selector ".view-actions"
    
    
    Given I navigate to page "<URL>"
    Then I click on element having css selector "a[href*="tags"]"
    Then I click on element having css selector "a[href*="/tags/tag-ejemplo-kraken/"]"
    Then I click on element having css selector ".gh-btn-red"
    Then I click on element having css selector ".modal-footer"

    
    Given I navigate to page "<URL>"
    Then I click on element having css selector "a[href*="staff"]"   
    Then I click on element having css selector ".gh-btn-green"
    Then I enter "kraken@uniandes.edu.co" into input field having id "new-user-email"  
    Then I select option with value "607324a9b7c1f6103c048e74" for dropdown with id "new-user-role"
    Then I click on element having css selector ".modal-footer" 	
