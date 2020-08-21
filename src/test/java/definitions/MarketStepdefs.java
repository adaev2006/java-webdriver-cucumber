package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import static org.assertj.core.api.Assertions.*;

import static support.TestContext.getDriver;

public class MarketStepdefs {
    @Given("I go to {string} page")
    public void iGoToPage(String page) {
        if (page.equalsIgnoreCase("google")) {
            getDriver().get("https://www.google.com/");
        } else if (page.equalsIgnoreCase("yahoo")) {
            getDriver().get("https://www.yahoo.com/");
        } else if (page.equalsIgnoreCase("quote")) {
            getDriver().get("https://skryabin.com/market/quote.html");
        } else {
            throw new RuntimeException("Unsupported page!");
        }

    }

    @When("I print page details")
    public void iPrintPageDetails() {
        System.out.println(getDriver().getTitle());
        System.out.println(getDriver().getCurrentUrl());
    }

    @And("I go back and forward, then refresh")
    public void iGoBackAndForwardThenRefresh() {
        getDriver().navigate().back();
        getDriver().navigate().forward();
        getDriver().navigate().refresh();
    }

    @When("I fill out required fields")
    public void iFillOutRequiredFields() {
        getDriver().findElement(By.xpath("//input[@id='name']")).sendKeys("John Doe");
        getDriver().findElement(By.xpath("//input[@name='username']")).sendKeys("JDoe");
        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys("JohnDoe@example.com");
        getDriver().findElement(By.xpath("//input[@id='password']")).sendKeys("JohnDoe123");
        getDriver().findElement(By.xpath("//input[@id='confirmPassword']")).sendKeys("JohnDoe123");
        getDriver().findElement(By.xpath("//input[@name='agreedToPrivacyPolicy']")).click();
    }

    @And("I submit results")
    public void iSubmitResults() {
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();
    }

    @Then("I verify required fields")
    public void iVerifyRequiredFields() {
        assertThat(getDriver().findElement(By.xpath("//div[@id='quotePageResult']")).getText()).contains("John Doe");
        assertThat(getDriver().findElement(By.xpath("//div[@id='quotePageResult']")).getText()).contains("JDoe");
        assertThat(getDriver().findElement(By.xpath("//div[@id='quotePageResult']")).getText()).contains("JohnDoe@example.com");
        assertThat(getDriver().findElement(By.xpath("//div[@id='quotePageResult']")).getText()).doesNotContain("JohnDoe123");
        assertThat(getDriver().findElement(By.xpath("//b[@name='agreedToPrivacyPolicy']")).getText()).isEqualTo("true");
    }
}
