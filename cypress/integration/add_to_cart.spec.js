describe("Home Page", () => {
  it("should visit the home page", () => {
    cy.visit("/");
  });

  it("a user should be able to click add to cart on the home page", () => {
    cy.get(".btn").contains("Add").should("be.visible").first().click({force: true});
    cy.get(".nav-link").contains("My Cart (1)");
  });
});
