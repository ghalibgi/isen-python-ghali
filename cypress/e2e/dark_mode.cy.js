describe('Dark mode toggle', () => {
    it('Switches between light and dark mode', () => {
      cy.visit('/home')
  
      // Vérifie que le mode par défaut est clair (light mode)
      cy.get('body').should('have.css', 'background-color', 'rgb(255, 255, 255)') // ajuste si besoin
  
      // Clique sur le bouton pour activer le dark mode
      cy.get('#darkModeToggle').click() // suppose que ton bouton a id="darkModeToggle"
  
      // Vérifie que le mode est devenu dark
      cy.get('body').should('have.css', 'background-color', 'rgb(34, 34, 34)') // adapte la couleur si nécessaire
  
      // Clique encore pour revenir en light mode
      cy.get('#darkModeToggle').click()
  
      // Vérifie qu'on revient au light mode
      cy.get('body').should('have.css', 'background-color', 'rgb(255, 255, 255)')
    })
  })  