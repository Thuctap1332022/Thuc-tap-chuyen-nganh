package PageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Home {
    WebDriver driver;
    WebDriverWait wait;

    By btnSach = By.xpath("//a[contains(text(),'Sách')]");

    By btnDangXuat= By.xpath("//input[@id='NoiDung_btnLogout']");

    public Home(WebDriver driver,WebDriverWait wait){
        this.driver = driver;
        this.wait = wait;
    }
    public void clickLinkSach(){
        driver.findElement(btnSach).click();
    }

    public void clickBtnDangXuat(){
        driver.findElement(btnDangXuat).click();
    }
    public String getDangXuatBtn(){
        wait.until(ExpectedConditions.visibilityOfElementLocated(btnDangXuat));
        return driver.findElement(btnDangXuat).getText();
    }

}
