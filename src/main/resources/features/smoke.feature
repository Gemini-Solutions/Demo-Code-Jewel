Feature: smoke

  @smoke @Jtest
  Scenario Outline: API to get Suite Status Count
    Given Set post token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint     | Method | Expected_status | SampleName   |
      | dashboardApi | post   | 200             | dashboardApi |

  @smoke
  Scenario Outline: Last api(GET)
    Given Set token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Method | Expected_status |
      | lastFiveApi | get    | 200             |

  @smoke
  Scenario Outline: API to get Recent Run Suites
    Given Set post token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint     | Method | Expected_status | SampleName   |
      | recentRunApi | post   | 200             | recentRunApi |

  @smoke
  Scenario Outline: Get Rule Action(GET)
    Given Set token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Method | Expected_status |
      | getRuleApis | get    | 200             |

  @smoke
  Scenario Outline: Get Report Names(GET)
    Given Set token endpoint and method "<endpoint>" and "<Method>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint    | Method | Expected_status |
      | reportNames | get    | 200             |

  @smoke
  Scenario Outline: API to get Running Suites
    Given Set post token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint      | Method | Expected_status | SampleName   |
      | runningRunApi | post   | 200             | recentRunApi |

  @smoke
  Scenario Outline: API to create new Project when project already exists (admin screen)
    Given Set post token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | post   | 200             | adminScreen2 |

  @smoke
  Scenario Outline: API to create new Project with no bearer token (admin screen)
    Given Set post empty token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | post   | 403             | adminScreen1 |

  @smoke
  Scenario Outline: API to create new Project when project name left as empty (admin screen)
    Given Set post token without steps endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | post   | 400             | adminScreen3 |

  @smoke
  Scenario Outline: API to create new Project when description is left as empty (admin screen)
    Given Set post token without steps endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | post   | 400             | adminScreen4 |