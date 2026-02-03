# ========== SWAGLABS E-COMMERCE PLATFORM - BDD TEST CASES ==========
# Test Framework: Gherkin / Cucumber
# Author: Hernane Bini
# Formation: DIO - Quality Assurance Experience
# Date: February 2026

# ========== FEATURE 1: USER AUTHENTICATION ==========
Feature: User Authentication
  As a user
  I want to log in to the SwagLabs system
  So that I can access my account and browse products

  Background:
    Given the SwagLabs application is loaded
    And the user is on the login page
    And the login form is visible

  Scenario: Successful login with valid standard user credentials
    When the user enters "standard_user" in the username field
    And the user enters "secret_sauce" in the password field
    And the user clicks the Login button
    Then the user should be redirected to the products page
    And the page title should display "Swag Labs"
    And the shopping cart icon should be visible in the top right
    And the products grid should display at least 6 products

  Scenario: Login attempt with invalid username
    When the user enters "invalid_user" in the username field
    And the user enters "secret_sauce" in the password field
    And the user clicks the Login button
    Then an error message should be displayed
    And the error message should contain "Username and password do not match"
    And the user should remain on the login page

  Scenario: Login attempt with invalid password
    When the user enters "standard_user" in the username field
    And the user enters "wrong_password" in the password field
    And the user clicks the Login button
    Then an error message should be displayed
    And the user should remain on the login page

  Scenario: Login attempt with empty credentials
    When the user leaves the username field empty
    And the user leaves the password field empty
    And the user clicks the Login button
    Then an error message should be displayed
    And the error message should contain "Username is required"

  Scenario: Logout functionality
    Given the user is logged in as "standard_user"
    When the user clicks on the menu button
    And the user clicks the Logout option
    Then the user should be redirected to the login page
    And the login form should be visible

# ========== FEATURE 2: SHOPPING CART MANAGEMENT ==========
Feature: Shopping Cart Management
  As an authenticated user
  I want to manage my shopping cart
  So that I can prepare and complete my purchase

  Background:
    Given the user is logged in as "standard_user"
    And the user is on the products page
    And at least one product is visible

  Scenario: Add a single product to cart
    When the user clicks the "ADD TO CART" button for the first product
    Then the button text should change to "REMOVE"
    And the shopping cart badge should show "1"
    And the cart should contain 1 product

  Scenario: Add multiple products to cart
    When the user adds 3 different products to the cart
    Then the shopping cart badge should show "3"
    And the cart should display all 3 products
    And the total count should match the badge number

  Scenario: View cart contents
    Given the user has 2 products in the cart
    When the user clicks the shopping cart icon
    Then the user should be navigated to the cart page
    And the cart page should display the 2 products
    And each product should show its name, price, and quantity

  Scenario: Modify product quantity in cart
    Given the user has a product with quantity 1 in the cart
    And the user is on the cart page
    When the user increases the quantity to 2
    Then the cart should update the product quantity to 2
    And the subtotal should be recalculated
    And the cart total should be updated

  Scenario: Remove product from cart
    Given the user has 2 products in the cart
    When the user removes one product from the cart
    Then the cart should contain 1 product
    And the shopping cart badge should show "1"
    And the removed product should no longer be visible

  Scenario: Proceed to checkout
    Given the user has products in the cart
    And the user is on the cart page
    When the user clicks the "Checkout" button
    Then the user should be navigated to the checkout page
    And a checkout form should be displayed

# ========== FEATURE 3: PRODUCT FILTERING AND SORTING ==========
Feature: Product Filtering and Sorting
  As a user
  I want to filter and sort products
  So that I can find the items I'm looking for more easily

  Background:
    Given the user is logged in
    And the user is on the products page

  Scenario: Sort products by name (A to Z)
    When the user selects "Name (A to Z)" from the sort dropdown
    Then the products should be sorted alphabetically
    And the first product should be "Sauce Labs Backpack"

  Scenario: Sort products by price (low to high)
    When the user selects "Price (low to high)" from the sort dropdown
    Then the products should be sorted by price in ascending order
    And the cheapest product should appear first

  Scenario: Sort products by price (high to low)
    When the user selects "Price (high to low)" from the sort dropdown
    Then the products should be sorted by price in descending order
    And the most expensive product should appear first

# ========== FEATURE 4: PRODUCT DETAILS ==========
Feature: Product Details
  As a user
  I want to view detailed information about products
  So that I can make informed purchasing decisions

  Background:
    Given the user is logged in
    And the user is on the products page

  Scenario: View product details
    When the user clicks on a product
    Then the product details page should load
    And the product image should be displayed
    And the product name should be visible
    And the product description should be shown
    And the product price should be displayed
    And the "ADD TO CART" button should be available

  Scenario: Add product from details page
    Given the user is viewing a product details page
    When the user clicks the "ADD TO CART" button
    Then the product should be added to the cart
    And the shopping cart badge should be updated
    And the button text should change to "REMOVE"

# ========== END OF BDD TEST CASES ==========
# Total Scenarios: 16+
# Total Scenarios Covered:
#   - User Authentication: 5 scenarios
#   - Shopping Cart Management: 6 scenarios
#   - Product Filtering and Sorting: 3 scenarios
#   - Product Details: 2 scenarios
#
# These BDD scenarios provide comprehensive coverage of the main user workflows
# in the SwagLabs e-commerce platform.
