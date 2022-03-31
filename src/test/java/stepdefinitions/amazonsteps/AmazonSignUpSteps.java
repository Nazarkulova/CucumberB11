package stepdefinitions.amazonsteps;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;
import pages.amazonpages.AmazonSignUpPage;
import utils.DriverHelper;

import java.util.List;

public class AmazonSignUpSteps {

    WebDriver driver= DriverHelper.getDriver();
    AmazonSignUpPage amazonSignUpPage=new AmazonSignUpPage(driver);

    @When("the user clicks the sign in and create your amazon account button")
    public void the_user_clicks_the_sign_in_and_create_your_amazon_account_button() {
    driver.navigate().to("https://www.amazon.com/");
    amazonSignUpPage.setCreateAccount();
    }


    @Then("the user validate the header")
    public void the_user_validate_the_header(DataTable dataTable) {
        List<String> header =dataTable.asList();
        Assert.assertEquals(header.get(0),amazonSignUpPage.getHeaderText());
    }
    @Then("the user provides the information:")
    public void the_user_provides_the_information(io.cucumber.datatable.DataTable dataTable) {
        List<String> allinformationDataTable=dataTable.asList();
        amazonSignUpPage.allInformation(allinformationDataTable.get(0),allinformationDataTable.get(1)
                ,allinformationDataTable.get(2),allinformationDataTable.get(3));
    }

}
