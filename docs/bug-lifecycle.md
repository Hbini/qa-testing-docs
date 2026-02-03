# Bug Lifecycle and Management - SwagLabs QA Testing

## Overview

This document defines the defect/bug lifecycle, severity levels, priority classification, and the process for reporting, tracking, and resolving defects identified during testing of the SwagLabs e-commerce platform.

## Bug Severity Levels

### 1. Critical (P0)
**Definition:** Issues that completely prevent the application from functioning or result in data loss/corruption.

**Examples:**
- Application crashes or becomes unresponsive
- Complete loss of functionality
- Data corruption or loss
- Security breach
- Payment processing failures

**Fix Timeline:** Immediate (same day)
**Test Impact:** Testing blocked

---

### 2. High (P1)
**Definition:** Major functionality is broken or significantly impaired, preventing normal user workflows.

**Examples:**
- Login functionality doesn't work
- Cart cannot be checked out
- Products cannot be viewed
- Critical calculation errors
- Missing critical UI elements

**Fix Timeline:** Within 24 hours
**Test Impact:** Testing severely impacted

---

### 3. Medium (P2)
**Definition:** Feature or function is not working as expected, but users can work around it. Core functionality is still available.

**Examples:**
- Minor UI elements misaligned
- Some product images not loading
- Error messages slightly unclear
- Non-critical features partially broken
- Performance issues

**Fix Timeline:** Within 3-5 business days
**Test Impact:** Testing can continue with workarounds

---

### 4. Low (P3)
**Definition:** Cosmetic issues, typos, or minor inconsistencies that don't affect functionality.

**Examples:**
- Spelling errors in text
- Font size inconsistencies
- Minor color variations
- Unused UI elements
- Documentation errors

**Fix Timeline:** Next release (can be deferred)
**Test Impact:** No impact on testing

---

## Bug Status Workflow

```
NEW → ASSIGNED → IN PROGRESS → FIXED → VERIFIED FIXED → CLOSED
 ↓        ↓                        ↓                        ↑
 └───────→ REJECTED ───────────────┘                        │
          ↓                                                 │
          DUPLICATE ────────────────────────────────────────┘
          ↓
          DEFERRED
```

### Status Definitions

**NEW**
- Bug just reported
- Waiting for initial review
- QA: Reports bug
- Dev: Performs initial triage

**ASSIGNED**
- Bug validated and confirmed
- Assigned to developer
- Dev: Begins investigation

**IN PROGRESS**
- Developer is actively working on fix
- May request more information from QA
- Expected completion date set

**FIXED**
- Fix implemented in code
- Waiting for QA verification
- Build deployed to test environment

**VERIFIED FIXED**
- QA has tested and confirmed fix
- Bug is resolved
- Ready for production

**CLOSED**
- Bug is officially closed
- Documentation updated
- Final sign-off complete

**REJECTED**
- Bug is invalid or "as designed"
- Detailed explanation provided
- Can be reopened with new evidence

**DUPLICATE**
- Bug is same as another reported issue
- Linked to original bug report
- Closed and consolidated

**DEFERRED**
- Bug acknowledged but delayed
- Scheduled for future release
- Not critical for current release

---

## Sample Bug Reports

### Bug Report Template

```
Bug ID: [Auto-generated]
Title: [Clear, concise description]
Severity: [Critical/High/Medium/Low]
Priority: [P0/P1/P2/P3]
Status: NEW
Reported Date: [Date]
Reported By: [QA Name]

### Environment:
- Browser: Chrome v[version]
- OS: Windows 10
- Resolution: 1920x1080
- URL: https://www.saucedemo.com

### Steps to Reproduce:
1. [First step]
2. [Second step]
3. [Action that causes bug]

### Expected Result:
[What should happen]

### Actual Result:
[What actually happened]

### Screenshots/Attachments:
[Attach relevant screenshots or logs]

### Workaround:
[If available, describe any temporary workaround]

### Root Cause:
[To be filled by development]

### Resolution:
[To be filled by development]
```

### Example Bug Report 1: Login Failure

**Bug ID:** BUG-001  
**Title:** Login button not responding to clicks  
**Severity:** Critical  
**Priority:** P0  
**Status:** NEW  
**Reported Date:** 2024-01-15  
**Reported By:** QA Team  

**Environment:**
- Browser: Chrome 120.0.6099.129
- OS: Windows 11
- Resolution: 1920x1080

**Steps to Reproduce:**
1. Navigate to https://www.saucedemo.com
2. Enter username: standard_user
3. Enter password: secret_sauce
4. Click Login button
5. Observe behavior

**Expected Result:**
User should be logged in and redirected to products page

**Actual Result:**
Login button does not respond. No action occurs when clicked. No error message displayed.

**Screenshots:**
[Screenshot showing login page with credentials entered]

**Workaround:**
None available

---

### Example Bug Report 2: Price Display Error

**Bug ID:** BUG-002  
**Title:** Product price displays with incorrect currency symbol  
**Severity:** High  
**Priority:** P1  
**Status:** ASSIGNED  
**Reported Date:** 2024-01-15  
**Reported By:** QA Team  
**Assigned To:** Dev Team  

**Environment:**
- Browser: Firefox 121.0
- OS: macOS 13.2
- Resolution: 2560x1600

**Steps to Reproduce:**
1. Log in as standard_user
2. Navigate to products page
3. Locate "Sauce Labs Backpack"
4. Observe price display

**Expected Result:**
Price should display as "$49.99"

**Actual Result:**
Price displays as "€49.99" (Euro symbol instead of Dollar)

**Screenshots:**
[Screenshot of product card showing incorrect currency]

**Workaround:**
User can infer correct price is in USD

---

## Bug Metrics and Reporting

### Metrics to Track
- Total bugs reported
- Bugs by severity
- Bugs by status
- Average time to fix
- Defect escape rate
- High-severity bugs trend

### Sample Bug Metrics Dashboard

| Metric | Count |
|--------|-------|
| Total Bugs Reported | 25 |
| Critical | 2 |
| High | 5 |
| Medium | 10 |
| Low | 8 |
| Fixed | 15 |
| In Progress | 6 |
| Deferred | 4 |

---

## Bug Resolution Process

1. **Report**: QA identifies and documents bug
2. **Review**: QA Lead reviews for clarity and reproducibility
3. **Assign**: Bug assigned to development team
4. **Investigate**: Developer investigates root cause
5. **Fix**: Code is modified and unit tested
6. **Deploy**: Build with fix deployed to test environment
7. **Verify**: QA tests fix and verifies resolution
8. **Close**: Bug officially closed and documented
9. **Monitor**: Track for regression in future testing

---

## Escalation Process

**Condition:** Critical bugs blocking testing or affecting functionality  
**Action:** Immediate escalation to Project Manager  
**Notification:** Email + direct communication  
**Follow-up:** Daily status updates  
**Owner:** QA Lead  

---

## Best Practices

1. **Clear Titles:** Use descriptive, specific titles
2. **Reproducibility:** Ensure steps to reproduce are clear and accurate
3. **Attachments:** Include screenshots and logs
4. **Environment Details:** Document exact environment for replication
5. **No Duplicates:** Search existing bugs before reporting
6. **Timely Updates:** Update bug status promptly
7. **Communication:** Maintain clear communication between QA and Dev
8. **Version Tracking:** Note which version bug appears in

---

## References

- Test Plan: `test-plan.md`
- Test Cases: `test-cases-step-by-step.md`
- User Stories: `user-stories.md`
