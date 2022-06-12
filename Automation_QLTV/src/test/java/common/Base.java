package common;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Parameters;
import utils.ReadProperties;

public class Base {
    public static WebDriver driver;
    public static WebDriverWait wait;
    public String baseURL = "https://localhost:44356/Login.aspx";

    @BeforeTest
    @Parameters("browser")
    public void setup(String browser) throws Exception {
        String pathProject = System.getProperty("user.dir");

        switch (browser) {
            case "Chrome":
                System.setProperty("webdriver.chrome.driver", pathProject + "/libs/chromedriver.exe");
                driver = new ChromeDriver();
                break;

            case "Firefox":
                System.setProperty("webdriver.gecko.driver", pathProject + "/libs/geckodriver.exe");
                System.setProperty("webdriver.firefox.bin", "C:/Program Files/Mozilla Firefox/firefox.exe");
                driver = new FirefoxDriver();
                break;

            default:
                throw new IllegalStateException("Unexpected value: " + browser);
        }

        wait = new WebDriverWait(driver, Long.parseLong(ReadProperties.getPropertyValue("CONFIC_WAITTING_TIME")));

    }
    @AfterTest
    public void tearDown() throws InterruptedException {
        driver.close();
    }
}
