# Step-by-Step Test Cases - SwagLabs E-commerce Platform

## Test Case 1: Login with Valid Credentials

**Test ID:** TC-001  
**Priority:** High  
**Test Type:** Functional  
**Module:** Authentication  

### Preconditions:
- User has not logged in
- URL: https://www.saucedemo.com is accessible
- Browser: Chrome/Firefox/Safari

### Test Steps:

| Step | Action | Expected Result |
|------|--------|----------|
| 1 | Navigate to https://www.saucedemo.com | Login page is displayed |
| 2 | Enter username "standard_user" in username field | Username is entered |
| 3 | Enter password "secret_sauce" in password field | Password is masked |
| 4 | Click Login button | Products page is displayed |
| 5 | Verify user session | Session is active |

### Expected Result:
User successfully logs in and is redirected to the products page

### Actual Result:
[To be filled during test execution]

### Status:
[ ] Pass  [ ] Fail  [ ] Blocked

---

## Test Case 2: Login with Invalid Username

**Test ID:** TC-002  
**Priority:** High  
**Test Type:** Functional  
**Module:** Authentication  

### Preconditions:
- User has not logged in
- URL: https://www.saucedemo.com is accessible

### Test Steps:

| Step | Action | Expected Result |
|------|--------|----------|
| 1 | Navigate to https://www.saucedemo.com | Login page is displayed |
| 2 | Enter username "invalid_user" | Username is entered |
| 3 | Enter password "secret_sauce" | Password is masked |
| 4 | Click Login button | Error message displayed |
| 5 | Verify error message | Message contains "user does not exist" |

### Expected Result:
Error message is displayed, user remains on login page

### Actual Result:
[To be filled during test execution]

### Status:
[ ] Pass  [ ] Fail  [ ] Blocked

---

## Test Case 3: Add Product to Cart

**Test ID:** TC-003  
**Priority:** High  
**Test Type:** Functional  
**Module:** Shopping Cart  

### Preconditions:
- User is logged in with "standard_user"
- On the products page
- At least one product is visible

### Test Steps:

| Step | Action | Expected Result |
|------|--------|----------|
| 1 | Locate "Sauce Labs Backpack" product | Product is visible on page |
| 2 | Click "Add to cart" button | Button changes to "Remove" |
| 3 | Verify cart icon counter | Counter shows "1" |
| 4 | Add another product "Sauce Labs Bolt T-Shirt" | Button changes to "Remove" |
| 5 | Verify cart icon counter | Counter shows "2" |

### Expected Result:
Products are added to cart and counter is updated correctly

### Actual Result:
[To be filled during test execution]

### Status:
[ ] Pass  [ ] Fail  [ ] Blocked

---

## Test Case 4: Checkout Process

**Test ID:** TC-004  
**Priority:** High  
**Test Type:** Functional  
**Module:** Checkout  

### Preconditions:
- User is logged in
- At least one product is in the cart
- On products or cart page

### Test Steps:

| Step | Action | Expected Result |
|------|--------|----------|
| 1 | Click cart icon | Cart page is displayed |
| 2 | Verify items in cart | Items match added products |
| 3 | Click "Checkout" button | Checkout information page is displayed |
| 4 | Enter First Name "John" | First name is entered |
| 5 | Enter Last Name "Doe" | Last name is entered |
| 6 | Enter Postal Code "12345" | Postal code is entered |
| 7 | Click "Continue" button | Order review page is displayed |
| 8 | Verify order items and total | Correct items and price shown |
| 9 | Click "Finish" button | Order confirmation page displayed |
| 10 | Verify confirmation message | Message contains "Thank you" |

### Expected Result:
Checkout process completes successfully with order confirmation

### Actual Result:
[To be filled during test execution]

### Status:
[ ] Pass  [ ] Fail  [ ] Blocked

---

## Test Case 5: Product Sorting by Price (Low to High)

**Test ID:** TC-005  
**Priority:** Medium  
**Test Type:** Functional  
**Module:** Product Browsing  

### Preconditions:
- User is logged in
- On products page
- Multiple products are displayed

### Test Steps:

| Step | Action | Expected Result |
|------|--------|----------|
| 1 | Locate sorting dropdown | Dropdown shows current sort order |
| 2 | Click sorting dropdown | List of sort options displayed |
| 3 | Select "Price (low to high)" | Option is selected |
| 4 | Verify product order | Products ordered by ascending price |
| 5 | Compare prices | Each price >= previous price |

### Expected Result:
Products are sorted correctly by price in ascending order

### Actual Result:
[To be filled during test execution]

### Status:
[ ] Pass  [ ] Fail  [ ] Blocked

---

## Test Case 6: Remove Product from Cart

**Test ID:** TC-006  
**Priority:** Medium  
**Test Type:** Functional  
**Module:** Shopping Cart  

### Preconditions:
- User is logged in
- At least two products are in the cart
- On cart page

### Test Steps:

| Step | Action | Expected Result |
|------|--------|----------|
| 1 | View cart page | Cart items displayed |
| 2 | Count items in cart | Initial count noted |
| 3 | Click "Remove" button on first item | Item is removed |
| 4 | Verify item removal | Item no longer in cart |
| 5 | Verify cart counter | Counter decremented correctly |

### Expected Result:
Product is removed from cart and counter is updated

### Actual Result:
[To be filled during test execution]

### Status:
[ ] Pass  [ ] Fail  [ ] Blocked

---

## Test Case 7: User Logout

**Test ID:** TC-007  
**Priority:** Medium  
**Test Type:** Functional  
**Module:** Authentication  

### Preconditions:
- User is logged in
- On any page (e.g., products page)

### Test Steps:

| Step | Action | Expected Result |
|------|--------|----------|
| 1 | Click menu (hamburger icon) | Menu is displayed |
| 2 | Locate "Logout" option | Option is visible |
| 3 | Click "Logout" | User is logged out |
| 4 | Verify redirect | Login page is displayed |
| 5 | Attempt to access products directly | Redirected to login |

### Expected Result:
User is successfully logged out and session is terminated

### Actual Result:
[To be filled during test execution]

### Status:
[ ] Pass  [ ] Fail  [ ] Blocked

---

## Test Case 8: Product Details Page

**Test ID:** TC-008  
**Priority:** Medium  
**Test Type:** Functional  
**Module:** Product Details  

### Preconditions:
- User is logged in
- On products page

### Test Steps:

| Step | Action | Expected Result |
|------|--------|----------|
| 1 | Click on a product name | Product details page opened |
| 2 | Verify product image | Image is displayed |
| 3 | Verify product name | Name matches product clicked |
| 4 | Verify product price | Price is displayed |
| 5 | Verify product description | Description is visible |
| 6 | Click "Add to Cart" | Product added to cart |
| 7 | Click "Back to Products" | Returns to products page |

### Expected Result:
Product details are displayed correctly and product can be added to cart

### Actual Result:
[To be filled during test execution]

### Status:
[ ] Pass  [ ] Fail  [ ] Blocked

---

## Test Execution Summary

| Test ID | Test Case | Status | Notes |
|---------|-----------|--------|-------|
| TC-001 | Login with Valid Credentials | | |
| TC-002 | Login with Invalid Username | | |
| TC-003 | Add Product to Cart | | |
| TC-004 | Checkout Process | | |
| TC-005 | Product Sorting | | |
| TC-006 | Remove Product from Cart | | |
| TC-007 | User Logout | | |
| TC-008 | Product Details Page | | |

**Total Test Cases:** 8  
**Passed:** [ ]  
**Failed:** [ ]  
**Blocked:** [ ]  

---

## Notes and Observations

[Space for test execution notes]
