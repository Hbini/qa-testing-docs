# User Stories - SwagLabs E-commerce Platform

## Overview
This document details the user stories for the SwagLabs e-commerce platform, focusing on QA testing scenarios for manual functional testing.

## User Stories

### US-001: User Login with Valid Credentials
**As a** customer  
**I want to** log into my account with valid credentials  
**So that** I can access my profile and purchase history  

**Acceptance Criteria:**
- User can enter valid username and password
- System displays success message upon successful login
- User is redirected to products page
- User session is maintained

**Test Data:**
- Username: standard_user
- Password: secret_sauce

---

### US-002: Product Browsing and Filtering
**As a** customer  
**I want to** browse products and filter by price/name  
**So that** I can find the products I'm interested in  

**Acceptance Criteria:**
- All products are displayed correctly
- Sorting by name (A-Z, Z-A) works properly
- Sorting by price (low-high, high-low) works properly
- Product images and descriptions load correctly

**Test Data:**
- Product list: T-Shirts, Jackets, Onesies, etc.
- Price range: $7.99 - $49.99

---

### US-003: Add Product to Cart
**As a** customer  
**I want to** add products to my shopping cart  
**So that** I can purchase multiple items  

**Acceptance Criteria:**
- Product is added to cart
- Cart counter is updated
- Cart icon shows correct item count
- Product details are preserved in cart

**Test Data:**
- Product: Sauce Labs Backpack
- Quantity: 1 or more

---

### US-004: Checkout Process
**As a** customer  
**I want to** proceed through checkout with my items  
**So that** I can complete my purchase  

**Acceptance Criteria:**
- Checkout button is available
- Cart items are displayed in checkout
- User can enter shipping information
- User can enter payment information
- Order summary is displayed
- Confirmation message is shown after purchase

**Test Data:**
- First Name: John
- Last Name: Doe
- Postal Code: 12345

---

### US-005: Product Details Viewing
**As a** customer  
**I want to** view detailed information about a product  
**So that** I can make an informed purchase decision  

**Acceptance Criteria:**
- Product name, price, and description are visible
- Product image is displayed
- Add to cart button is available
- Product specifications are clear

---

### US-006: Cart Management
**As a** customer  
**I want to** manage items in my cart (add/remove/update)  
**So that** I can adjust my purchase before checkout  

**Acceptance Criteria:**
- Items can be removed from cart
- Cart total is recalculated
- Empty cart message is shown when no items
- Continue shopping option is available

---

### US-007: User Logout
**As a** customer  
**I want to** logout from my account  
**So that** I can secure my session  

**Acceptance Criteria:**
- Logout button is available
- User is logged out successfully
- User is redirected to login page
- Session is terminated

---

### US-008: Error Handling
**As a** customer  
**I want to** receive clear error messages  
**So that** I can understand what went wrong  

**Acceptance Criteria:**
- Invalid login shows error message
- Required fields show validation errors
- Network errors are handled gracefully
- Error messages are user-friendly

---

## Testing Priority
1. **High Priority:** US-001, US-002, US-003, US-004
2. **Medium Priority:** US-005, US-006, US-007
3. **Low Priority:** US-008

## Related Test Cases
- See `test-cases-step-by-step.md` for detailed test steps
- See `test-cases-bdd.feature` for BDD scenarios
