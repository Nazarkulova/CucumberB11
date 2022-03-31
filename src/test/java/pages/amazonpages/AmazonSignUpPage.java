package pages.amazonpages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utils.BrowserUtils;

public class AmazonSignUpPage {
    public AmazonSignUpPage(WebDriver driver){
        PageFactory.initElements(driver, this);
    }
    @FindBy(id = "nav-link-accountList-nav-line-1")
    private WebElement signInButton;
    @FindBy(id = "createAccountSubmit")
    private WebElement creatAccount;
    @FindBy(id="ap_customer_name")
    private WebElement username;
    @FindBy(id = "ap_email")
    private WebElement email;
    @FindBy(xpath = "//input[@id='ap_email']")
    private WebElement password;
    @FindBy(id = "ap_password_check")
    private WebElement passwordcheck;
    @FindBy(tagName = "h1")
    private WebElement headerText;
    @FindBy(id = "continue")
    private WebElement continueButton;

    public void setCreateAccount(){
        signInButton.click();
        creatAccount.click();
    }
    public String getHeaderText(){
        return BrowserUtils.getTextMethod(headerText);
    }

    public void allInformation(String username, String email, String password, String passwordcheck){
       this.username.sendKeys(username);
       this.email.sendKeys(email);
       this.password.sendKeys(password);
       this.passwordcheck.sendKeys(passwordcheck);
    }

}
