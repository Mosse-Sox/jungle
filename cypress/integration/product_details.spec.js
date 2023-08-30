describe("Product Details Page", () => {
  it("should visit the home page", () => {
    cy.visit("/");
  });

  it("A user should be able to click a product and navigate to the product details page", () => {
    cy.get(".products article").first().click();

    cy.url().should("include", "/products/2");
    cy.get("h1").contains("Scented Blade");
  });

  it("A user should be able to add the product to their carts from the product details page", () => {
    cy.get(".btn").contains("Add").should("exist").click();
    cy.wait(5000);
    cy.get(".nav-link").contains("My Cart (1)");
  });

  it("A user should be able to navigate back to the home page from the product details page", () => {
    cy.get(".navbar-brand").contains("Jungle").click();
    cy.location("pathname").should("eq", "/");
  });
});
