package PageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Login {
    WebDriver driver;
    WebDriverWait wait;

    By txtUserName = By.xpath("//input[@id='txtUserName']");
    By txtPassword = By.xpath("//input[@id='txtPassword']");
    By btnLogin= By.xpath("//input[@id='btnLogin']");
    By mesg = By.xpath("//span[@id='lblErrorMessage']");

    public Login(WebDriver driver,WebDriverWait wait){
        this.driver = driver;
        this.wait = wait;
    }

    private void inputUserName(String strUserName){
        driver.findElement(txtUserName).sendKeys(strUserName);
    }
    private void inputPass(String strPass){
        driver.findElement(txtPassword).sendKeys(strPass);
    }
    private void clickBtnDangNhap(){
        driver.findElement(btnLogin).click();
    }

    public void inputDataLogin(String strUserName,String strPass) {
        this.inputUserName(strUserName);
        this.inputPass(strPass);
        this.clickBtnDangNhap();
    }

    public String getMesgLoi(){
        wait.until(ExpectedConditions.visibilityOfElementLocated(mesg));
        return driver.findElement(mesg).getText();
    }
}
