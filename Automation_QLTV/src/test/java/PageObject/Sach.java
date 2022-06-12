package PageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Sach {

    WebDriver driver;
    WebDriverWait wait;
    By btnAdd = By.xpath("//a[contains(text(),'+')]");

    public Sach(WebDriver driver,WebDriverWait wait){
        this.driver = driver;
        this.wait = wait;
    }

    public void clickLinkAddsach(){
        driver.findElement(btnAdd).click();
    }
    public String getLinkAddsach(){
        wait.until(ExpectedConditions.visibilityOfElementLocated(btnAdd));
        return driver.findElement(btnAdd).getText();
    }

}
