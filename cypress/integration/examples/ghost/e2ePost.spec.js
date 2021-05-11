context('Actions', () => {
    beforeEach(() => {
      cy.visit('http://localhost:2368/ghost/#/signin')
      cy.get('#ember8').type('m.leguizamong@uniandes.edu.co', { force: true })
      cy.get('#ember10').type('123456789!', { force: true })
      cy.get('#ember12').click()
      cy.wait(7000);
    })
    
    it('5. Dado una sesión válida- Crear post con título - navegación', () => {
        cy.get('#ember28').click()
        cy.wait(7000);
        cy.url().should('eq', 'http://localhost:2368/ghost/#/posts')
    })

    it('6. Dado una sesión válida-Crear post con título navegación segundo nivel', () => {
        cy.get('#ember28').click()
        cy.wait(7000);
        cy.url().should('eq', 'http://localhost:2368/ghost/#/posts')
        cy.get('#ember113').click()
        cy.wait(7000);
        cy.url().should('eq', 'http://localhost:2368/ghost/#/editor/post')
    })

    it('7. Dado una sesión válida-Crear post con título', () => {
        cy.get('#ember28').click()
        cy.wait(7000);
        cy.url().should('eq', 'http://localhost:2368/ghost/#/posts')
        cy.get('a[href*="editor/post"]').first().click()
        cy.wait(7000);
        cy.url().should('eq', 'http://localhost:2368/ghost/#/editor/post')
        cy.get('.gh-editor-title.ember-text-area.gh-input.ember-view').type('Cypress post').should('have.value', 'Cypress post')
    })
    
    it('8. Dado una sesión válida-Crear post con título - ir al listado de post', () => {
        cy.get('#ember28').click()
        cy.wait(2000);
        cy.url().should('eq', 'http://localhost:2368/ghost/#/posts')
        cy.get('a[href*="editor/post"]').first().click()
        cy.wait(2000);
        cy.url().should('eq', 'http://localhost:2368/ghost/#/editor/post')
        cy.get('.gh-editor-title.ember-text-area.gh-input.ember-view').type('Cypress post consulta')
        cy.wait(2000);
        cy.visit('http://localhost:2368/ghost/#/posts')
        cy.wait(2000);
        
    })

    it('9. Dado una sesión válida-Crear post con título - buscar en el listado', () => {
        cy.get('#ember28').click()
        cy.wait(2000);
        cy.url().should('eq', 'http://localhost:2368/ghost/#/posts')
        cy.get('a[href*="editor/post"]').first().click()
        cy.wait(2000);
        cy.url().should('eq', 'http://localhost:2368/ghost/#/editor/post')
        cy.get('.gh-editor-title.ember-text-area.gh-input.ember-view').type('Cypress post consulta')
        cy.wait(2000);
        cy.visit('http://localhost:2368/ghost/#/posts')
        cy.wait(2000);
        cy.get('.gh-list-row.gh-posts-list-item.ember-view').should(($p) => {
            expect($p.first()).to.contain('Cypress post consulta')
          })
    })
})
