@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @predefined2
  Scenario: Predefined steps for Yahoo
    Given I open url "https://www.yahoo.com/"
    Then I should see page title as "Yahoo"
    Then element with xpath "//input[@id='header-search-input']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='header-search-input']"
    Then I click on element using JavaScript with xpath "//button[@id='header-desktop-search-button']"
    Then I wait for element with xpath "//div[@id='web']" to be present
    Then element with xpath "//div[@id='web']" should contain text "Cucumber"

  @predefined3
  Scenario: Predefined steps for Bing
    Given I open url "https://www.bing.com/"
    Then I should see page title as "Bing"
    Then element with xpath "//input[@id='sb_form_q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='sb_form_q']"
    Then I click on element using JavaScript with xpath "//label[@class='search icon tooltip']"
    Then I wait for element with xpath "//ol[@id='b_results']" to be present
    Then element with xpath "//ol[@id='b_results']" should contain text "Cucumber"

  @predefined4
  Scenario: Predefined steps for Gibiru
    Given I open url "https://gibiru.com/"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//button[@id='button-addon2']"
    Then I wait for element with xpath "//div[@class='gsc-wrapper']" to be present
    Then element with xpath "//div[@class='gsc-wrapper']" should contain text "Cucumber"

  @predefined5
  Scenario: Predefined steps for Duckduckgo
    Given I open url "https://duckduckgo.com/"
    Then I should see page title as "DuckDuckGo — Максимум конфиденциальности, минимум усилий."
    Then element with xpath "//input[@id='search_form_input_homepage']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='search_form_input_homepage']"
    Then I click on element using JavaScript with xpath "//input[@id='search_button_homepage']"
    Then I wait for element with xpath "//div[@id='links']" to be present
    Then element with xpath "//div[@id='links']" should contain text "Cucumber"

  @predefined6
  Scenario: Predefined steps for Swisscows
    Given I open url "https://swisscows.com/"
    Then I should see page title as "Swisscows - альтернативная и безопасная для данных поисковая система."
    Then element with xpath "//input[@name='query']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='query']"
    Then I click on element using JavaScript with xpath "//button[@class='search-submit']"
    Then I wait for element with xpath "//div[@class='web-results']" to be present
    Then element with xpath "//div[@class='web-results']" should contain text "Cucumber"

  @predefined7
  Scenario: Predefined steps for Searchencrypt
    Given I open url "https://searchencrypt.com/home"
    Then I should see page title as "Search Encrypt | Home"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//button[@class='search-bar__submit']"
    Then I wait for element with xpath "//section[@class='serp__results container']" to be present
    Then element with xpath "//section[@class='serp__results container']" should contain text "Cucumber"

  @predefined8
  Scenario: Predefined steps for Startpage
    Given I open url "https://www.startpage.com/"
    Then I should see page title as "Startpage.com - The world's most private search engine"
    Then element with xpath "//input[@id='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//button[@class='search-form-home__form__button']"
    Then I wait for element with xpath "//div[@class='layout-web__mainline']" to be present
    Then element with xpath "//div[@class='layout-web__mainline']" should contain text "Cucumber"

  @predefined9
  Scenario: Predefined steps for Yandex
    Given I open url "https://yandex.com/"
    Then I should see page title as "Yandex"
    Then element with xpath "//input[@id='text']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@id='text']"
    Then I click on element using JavaScript with xpath "//button[contains(@class,'button mini-suggest')]"
    Then I wait for element with xpath "//ul[@id='search-result']" to be present
    Then element with xpath "//ul[@id='search-result']" should contain text "Cucumber"

  @predefined10
  Scenario: Predefined steps for Boardreader
    Given I open url "https://boardreader.com/"
    Then I should see page title as "Boardreader - Forum Search Engine"
    Then element with xpath "//input[@id='title-query']" should be present
    When I type "behavior" into element with xpath "//input[@id='title-query']"
    Then I wait for 5 sec
    Then element with xpath "//ul[@class='mdl-list']" should contain text "behavior"

  @predefined11
  Scenario: Predefined steps for Ecosia
    Given I open url "https://www.ecosia.org/"
    Then I should see page title as "Ecosia - the search engine that plants trees"
    Then element with xpath "//input[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//input[@name='q']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//div[@class='mainline-results']" to be present
    Then element with xpath "//div[@class='mainline-results']" should contain text "Cucumber"

  @predefined12
  Scenario: Validate responsive UI
    Given I open url "https://skryabin.com/market/quote.html"
    When I resize window to 1280 and 1024
    Then element with xpath "//b[@id='currentDate']" should be displayed
    When I resize window to 400 and 882
    Then element with xpath "//b[@id='currentDate']" should not be displayed
    When I resize window to 800 and 882
    Then element with xpath "//b[@id='currentDate']" should be displayed

  @predefined13
  Scenario: Validate Username field
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "a" into element with xpath "//input[@name='username']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='username-error']" should be displayed
    When I type "a" into element with xpath "//input[@name='username']"
    Then element with xpath "//label[@id='username-error']" should not be displayed

  @predefined14
  Scenario: Validate Email field
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "JohnDoe" into element with xpath "//input[@name='email']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='email-error']" should be displayed
    When I clear element with xpath "//input[@name='email']"
    And I type "John@yahoo.com" into element with xpath "//input[@name='email']"
    Then element with xpath "//label[@id='email-error']" should not be displayed

  @predefined15
  Scenario: Validate Password field
    Given I open url "https://skryabin.com/market/quote.html"
    Then element with xpath "//input[@id='confirmPassword']" should be disabled
    When I type "abc" into element with xpath "//input[@id='password']"
    Then element with xpath "//input[@id='confirmPassword']" should be enabled

  @predefined16
  Scenario: Validate Name field
    Given I open url "https://skryabin.com/market/quote.html"
    When I click on element with xpath "//input[@id='name']"
    Then element with xpath "//div[@id='nameDialog']" should be displayed
    When I type "John" into element with xpath "//input[@id='firstName']"
    And I type "Daniel" into element with xpath "//input[@id='middleName']"
    And I type "Doe" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "(//button[contains(@class,'ui-button')])[2]"
    Then element with xpath "//input[@id='name']" should have attribute "value" as "John Daniel Doe"

  @predefined17
  Scenario: Validate Privacy Policy
    Given I open url "https://skryabin.com/market/quote.html"
    When I click on element with xpath "//input[@id='name']"
    And I type "John" into element with xpath "//input[@id='firstName']"
    And I type "Daniel" into element with xpath "//input[@id='middleName']"
    And I type "Doe" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "(//button[contains(@class,'ui-button')])[2]"
    And I type "John" into element with xpath "//input[@name='username']"
    And I type "John@yahoo.com" into element with xpath "//input[@name='email']"
    And I type "12345" into element with xpath "//input[@id='password']"
    And I type "12345" into element with xpath "//input[@id='confirmPassword']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should be displayed
    When I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should not be displayed

  @predefined18
  Scenario: Entering non-required fields
    Given I open url "https://skryabin.com/market/quote.html"
    When I type "7735248888" into element with xpath "//input[@name='phone']"
    And I click on element with xpath "//option[contains(text(),'Austria')]"
    And I click on element with xpath "//label[@class='checkbox_radio']/*[@value='male']"
    And I click on element with xpath "//input[@name='allowedToContact']"
    And I type "929 N Main St, Rockford, IL 61103" into element with xpath "//textarea[@id='address']"
    And I click on element with xpath "//option[contains(text(),'Toyota')]"
    And I click on element with xpath "//button[@id='thirdPartyButton']"
    And I accept alert
    And I type "07/31/1985" into element with xpath "//input[@id='dateOfBirth']"

  @predefined19
  Scenario: Validate Submitted information
    Given I open url "https://skryabin.com/market/quote.html"
    When I click on element with xpath "//input[@id='name']"
    And I type "John" into element with xpath "//input[@id='firstName']"
    And I type "Daniel" into element with xpath "//input[@id='middleName']"
    And I type "Doe" into element with xpath "//input[@id='lastName']"
    And I click on element with xpath "(//button[contains(@class,'ui-button')])[2]"
    And I type "User" into element with xpath "//input[@name='username']"
    And I type "John@yahoo.com" into element with xpath "//input[@name='email']"
    And I type "12345" into element with xpath "//input[@id='password']"
    And I type "12345" into element with xpath "//input[@id='confirmPassword']"
    And I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    And I click on element with xpath "//button[@id='formSubmit']"
    Then element with xpath "//div[@id='quotePageResult']" should contain text "John"
    Then element with xpath "//div[@id='quotePageResult']" should contain text "Daniel"
    Then element with xpath "//div[@id='quotePageResult']" should contain text "Doe"
    Then element with xpath "//div[@id='quotePageResult']" should contain text "User"
    Then element with xpath "//div[@id='quotePageResult']" should contain text "John@yahoo.com"
    Then element with xpath "//div[@id='quotePageResult']" should not contain text "12345"




    





