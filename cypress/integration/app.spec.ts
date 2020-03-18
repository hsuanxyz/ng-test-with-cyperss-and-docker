describe('App', () => {
  it('Should match previous screenshot', () => {
    cy.visit('/');
    cy.document().matchImageSnapshot('app');
  });
});
