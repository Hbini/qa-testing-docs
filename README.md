# qa-testing-docs

> Complete QA Testing Documentation Project - Manual Functional Testing in Agile Environment | SwagLabs Platform | BDD Test Cases | Step-by-Step Test Cases | DIO Challenge

---

## 📋 Project Overview

This repository contains comprehensive documentation for **Manual Functional Testing** in an agile environment. The project is based on the **SwagLabs e-commerce platform** and demonstrates professional QA practices, test case design, and defect management.

**Formation**: Digital Innovation One (DIO) - Quality Assurance Experience  
**Author**: Hernane Bini  
**Last Updated**: February 2026  

---

## 🎯 Project Objectives

- Review and practice fundamental concepts of manual functional testing
- Understand the daily activities of a QA professional
- Create professional test documentation (BDD and Step-by-Step)
- Document test planning and workflow processes
- Practice defect lifecycle management
- Apply agile testing methodologies

---

## 📁 Project Structure

```
qa-testing-docs/
├── README.md                          # Project documentation
├── docs/
│   ├── test-plan.md                  # Test planning strategy
│   ├── user-stories.md               # User stories and acceptance criteria
│   ├── test-cases-step-by-step.md    # Step-by-step test cases
│   ├── test-cases-bdd.feature       # BDD scenarios (Gherkin)
│   ├── bug-lifecycle.md              # Bug lifecycle documentation
│   └── workflow-process.md           # QA workflow process
├── test-data/
│   ├── test-users.json              # Test user credentials
│   └── test-scenarios.json          # Test scenario data
└── examples/
    ├── mind-map.md                  # Mind map example
    └── test-execution-report.md     # Sample test report
```

---

## 🧪 Test Deliverables

### 1. **Test Planning**
- Comprehensive test strategy
- Test scope definition
- Test data preparation
- Resource allocation

### 2. **User Stories** (2 Stories)

#### User Story 1: Login Functionality
```
As a user
I want to log in to the SwagLabs store
So that I can access my account and browse products

Acceptance Criteria:
✓ User can enter valid credentials
✓ User receives confirmation upon successful login
✓ User is redirected to products page
✓ Invalid credentials display error message
✓ Password field masks input
```

#### User Story 2: Add to Cart
```
As a user
I want to add products to my shopping cart
So that I can purchase them later

Acceptance Criteria:
✓ User can select multiple products
✓ Cart counter updates
✓ Products remain in cart after navigation
✓ User can view cart contents
✓ Quantity can be modified
```

### 3. **Step-by-Step Test Cases** (2 Cases)

#### Test Case 1: Valid Login with Standard User Credentials
```
Test ID: TC-001
Test Case: Valid Login with Standard User Credentials
Description: Verify user can successfully login with valid credentials
Priority: High
Precondition: User is on SwagLabs login page

Steps:
1. Enter username 'standard_user' in username field
2. Enter password 'secret_sauce' in password field
3. Click 'Login' button
4. Verify user is redirected to products page
5. Verify 'Swag Labs' header is displayed
6. Verify product grid is loaded with at least one product

Expected Result: User successfully logs in and products page loads
Test Data: username='standard_user', password='secret_sauce'
Environment: https://www.saucedemo.com/
Status: [Pass/Fail]
```

#### Test Case 2: Verify Product Add to Cart Functionality
```
Test ID: TC-002
Test Case: Verify Product Add to Cart Functionality
Description: Verify that user can add products to shopping cart
Priority: High
Precondition: User is logged in and on products page

Steps:
1. Click 'ADD TO CART' button on first product
2. Verify button text changes to 'REMOVE'
3. Click shopping cart icon
4. Verify cart page loads
5. Verify product is listed in cart
6. Verify quantity is set to 1
7. Verify product price is displayed correctly

Expected Result: Product successfully added to cart with correct details
Test Data: Any available product
Environment: https://www.saucedemo.com/
Status: [Pass/Fail]
```

### 4. **BDD Test Cases** (Gherkin Format) (2 Scenarios)

#### Feature: User Authentication
```gherkin
Feature: User Authentication
  As a user
  I want to log in to the system
  So that I can access my account

  Scenario: Successful login with valid credentials
    Given the user is on the SwagLabs login page
    And the login form is displayed
    When the user enters 'standard_user' in the username field
    And the user enters 'secret_sauce' in the password field
    And the user clicks the 'Login' button
    Then the user should be redirected to the products page
    And the 'Swag Labs' header should be displayed
    And the product grid should be loaded with at least one product
    And the shopping cart icon should be visible in the top right
```

#### Feature: Shopping Cart Management
```gherkin
Feature: Shopping Cart Management
  As a user
  I want to manage my shopping cart
  So that I can prepare my purchase

  Scenario: Add single product to cart from products page
    Given the user is logged in as 'standard_user'
    And the user is viewing the products page
    And at least one product is displayed
    When the user clicks the 'ADD TO CART' button on the first product
    Then the button text should change to 'REMOVE'
    And the shopping cart badge should show count of 1
    When the user clicks the shopping cart icon
    Then the user should be navigated to the cart page
    And the added product should be listed in the cart
    And the product quantity should be set to 1
```

---

## 🐛 Bug Lifecycle

### Bug States
1. **NEW** - Bug is reported and documented
2. **ASSIGNED** - Bug is assigned to developer
3. **IN PROGRESS** - Developer is working on fix
4. **FIXED** - Developer has submitted fix
5. **VERIFIED** - QA verified the fix
6. **CLOSED** - Bug is resolved and closed
7. **REOPENED** - Bug reappeared after fix attempt

### Bug Report Template
```
Bug ID: BUG-001
Title: [Bug Title]
Severity: High/Medium/Low
Status: New
Reporter: [Name]
Assigned To: [Developer]
Description: [Detailed description]
Steps to Reproduce: [Steps]
Expected Result: [Expected behavior]
Actual Result: [Actual behavior]
Attachments: [Screenshots/Videos]
```

---

## 📊 QA Workflow Process

### Phase 1: Requirements Analysis
- Gather requirements from product manager
- Understand business objectives
- Identify critical features
- Define test scope

### Phase 2: Test Planning
- Create test strategy
- Define test approach
- Identify test data
- Allocate resources
- Create test schedule

### Phase 3: Test Case Design
- Design step-by-step test cases
- Design BDD test cases
- Review test cases
- Prioritize test cases
- Create mind maps for visualization

### Phase 4: Test Execution
- Execute test cases
- Document results
- Report defects
- Retest fixes
- Track metrics

### Phase 5: Test Reporting
- Generate test reports
- Document metrics
- Communicate status
- Lessons learned

---

## 🎓 Key Concepts Covered

- ✅ **Functional Testing** - Testing application functionality
- ✅ **Manual Testing** - Human-based test execution
- ✅ **Agile Testing** - Testing in agile environments
- ✅ **Test Case Design** - Creating effective test cases
- ✅ **BDD (Behavior-Driven Development)** - User-focused testing
- ✅ **Exploratory Testing** - Unscripted testing approach
- ✅ **Test Planning** - Strategic test approach
- ✅ **Defect Management** - Bug tracking and lifecycle
- ✅ **Requirements Analysis** - Understanding what to test
- ✅ **Quality Assurance** - Ensuring software quality

---

## 🛠️ Technologies & Tools

| Tool | Purpose |
|------|----------|
| **JIRA** | Project and bug tracking management |
| **Zephyr Scale** | Test case and cycle management |
| **Gherkin/Cucumber** | BDD test scenario writing |
| **SwagLabs** | E-commerce platform for testing |
| **Git/GitHub** | Version control and repository |
| **GitLab** | Repository mirror and CI/CD |

---

## 🌐 Test Environment

**Platform**: SwagLabs - Virtual E-commerce Store  
**URL**: https://www.saucedemo.com/  

### Test Credentials
```json
{
  "standard_user": "secret_sauce",
  "locked_out_user": "secret_sauce",
  "problem_user": "secret_sauce",
  "performance_glitch_user": "secret_sauce",
  "error_user": "secret_sauce",
  "visual_user": "secret_sauce"
}
```

---

## 📈 Test Metrics

### Sample Metrics
- **Total Test Cases**: 4+
- **Passed Tests**: [To be filled]
- **Failed Tests**: [To be filled]
- **Skipped Tests**: [To be filled]
- **Pass Rate**: [To be calculated]
- **Bugs Found**: [To be tracked]
- **Bug Severity**: High, Medium, Low

---

## 💡 Best Practices Applied

1. **Clear Test Objectives** - Know what you're testing and why
2. **Test Case Organization** - Logical grouping and prioritization
3. **Comprehensive Coverage** - Cover happy paths and edge cases
4. **Detailed Documentation** - Clear steps and expected results
5. **Effective Communication** - Report findings clearly
6. **Continuous Learning** - Understand the application thoroughly
7. **Attention to Detail** - Catch subtle defects
8. **Time Management** - Execute tests efficiently
9. **Data Security** - Use appropriate test data
10. **Professional Standards** - Follow industry best practices

---

## 📚 Learning Resources

- [ISTQB QA Certification](https://www.istqb.org/)
- [Agile Testing](https://www.agile-testing.com/)
- [BDD with Gherkin](https://cucumber.io/docs/gherkin/)
- [JIRA Documentation](https://www.atlassian.com/software/jira)
- [SwagLabs Platform](https://www.saucedemo.com/)
- [Digital Innovation One](https://www.dio.me/)

---

## 🤝 Contributing

This is an educational project. Contributions and improvements are welcome!

### How to Contribute
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/improvement`)
3. Commit changes (`git commit -m 'Add improvement'`)
4. Push to branch (`git push origin feature/improvement`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

---

## 👨‍💼 Author

**Hernane Bini**
- GitHub: [@Hbini](https://github.com/Hbini)
- Education: DIO Quality Assurance Formation
- Focus: QA Testing, Manual Testing, Agile Methodologies

---

## 📞 Contact & Support

For questions or support regarding this project:

- Open an Issue on GitHub
- Check the Documentation folder
- Review the Examples folder

---

## 🙏 Acknowledgments

- **Digital Innovation One (DIO)** - For the QA Formation
- **SwagLabs** - For providing the test platform
- **JIRA & Zephyr Scale** - For test management tools
- **Gherkin/Cucumber** - For BDD framework
- **GitHub & GitLab** - For version control

---

## 📌 Notes

This project demonstrates:
- Professional test documentation
- Complete test case creation
- BDD implementation
- Agile testing approach
- Industry best practices
- Quality assurance standards

**Last Updated**: February 3, 2026  
**Project Status**: ✅ Active & Maintained  
**Quality Level**: Professional Grade

---

<div align="center">

**Made with ❤️ for Quality Assurance Excellence**

If you found this helpful, please consider giving it a ⭐ Star!

</div>
