context('Actions', () => {
    beforeEach(() => {
      cy.visit('http://localhost:2368/ghost/#/signin')
    })

    it('1. Intento de login con contraseña inválida', () => {
      cy.get('#ember8').type('m.leguizamong@uniandes.edu.co', { force: true })
      cy.get('#ember10').type('hjhjh!', { force: true })
      cy.get('#ember12').click()
      cy.wait(2000);
      cy.get('p').should(($p) => {
        expect($p.first()).to.contain('Your password is incorrect.')
      })
    })

    it('2. Intento de login con usuario inválido', () => {
        cy.get('#ember8').type('noExiste@uniandes.edu.co', { force: true })
        cy.get('#ember10').type('123456789!', { force: true })
        cy.get('#ember12').click()
        cy.wait(2000);
        cy.get('p').should(($p) => {
          expect($p.first()).to.contain('Access denied.')
        })
    })

    it('3. Inicio de sesión sin información', () => {
      cy.get('#ember12').click()
      cy.wait(2000);
          cy.get('p').should(($p) => {
            expect($p.first()).to.contain('Please fill out the form to sign in.')
          })
      })

    it('4. Inicio de sesión con usuario válido', () => {
      cy.get('#ember8').type('m.leguizamong@uniandes.edu.co', { force: true })
      cy.get('#ember10').type('123456789!', { force: true })
      cy.get('#ember12').click()
      cy.wait(7000);
      cy.url().should('eq', 'http://localhost:2368/ghost/#/site')
    })

})