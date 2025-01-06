import {Given,When,Then} from "@badeball/cypress-cucumber-preprocessor";

Given("I visit the login page", () => {
    cy.visit("/login");
});