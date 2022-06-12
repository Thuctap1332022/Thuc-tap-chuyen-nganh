package PageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;
import java.util.Random;

public class AddSach {
    WebDriver driver;
    WebDriverWait wait;
    String pathProject = System.getProperty("user.dir");

    By txtMaSach = By.xpath("//input[@id='NoiDung_FormView1_maSachTextBox']");
    By selectTheLoai = By.xpath("//select[@id='NoiDung_FormView1_DropDownList1']");
    By selectTacGia = By.xpath("//select[@id='NoiDung_FormView1_DropDownList2']");
    By selectNhaXuatBan = By.xpath("//select[@id='NoiDung_FormView1_DropDownList3']");
    By txtTenSach = By.xpath("//input[@id='NoiDung_FormView1_tenSachTextBox']");
    By fileUpLoadAnh = By.xpath("//input[@id='NoiDung_FormView1_FileUpload1']");
    By txtGia = By.xpath("//input[@id='NoiDung_FormView1_giaTextBox']");
    By txtSoLuong = By.xpath("//input[@id='NoiDung_FormView1_soLuongTextBox']");
    By txtTonKho = By.xpath("//input[@id='NoiDung_FormView1_soLuongTonTextBox']");

    By btnInsert = By.xpath("//a[@id='NoiDung_FormView1_InsertButton']");
    By btnCancel = By.xpath("//a[@id='NoiDung_FormView1_InsertCancelButton']");
    By btnBack = By.xpath("//a[contains(text(),'Quay lại')]");

    public AddSach(WebDriver driver,WebDriverWait wait){
        this.driver = driver;
        this.wait = wait;
    }
    private void inputMaSach(String strTenSp){
        driver.findElement(txtMaSach).sendKeys(strTenSp);
    }
    private void inputTenSach(String strTenSach){
        driver.findElement(txtTenSach).sendKeys(strTenSach);
    }
    private void inputGia(String strGia){
        driver.findElement(txtGia).sendKeys(strGia);
    }
    private void inputSoLuong(String strSL){
        driver.findElement(txtSoLuong).sendKeys(strSL);
    }
    private void inputTonKho(String strTonKho){
        driver.findElement(txtTonKho).sendKeys(strTonKho);
    }
    private void upLoadingFileAnh(String strULF){
        driver.findElement(fileUpLoadAnh).sendKeys(pathProject+"/img/"+strULF);
    }
    private void inputTheLoai(){
        WebElement eleSelect = driver.findElement(selectTheLoai);
        Select oSelect = new Select(eleSelect);
        eleSelect.click();
        oSelect.selectByIndex(2);
        eleSelect.click();
    }
    private void inputTacGia(){
        WebElement eleSelect = driver.findElement(selectTacGia);
        Select oSelect = new Select(eleSelect);
        eleSelect.click();
        oSelect.selectByIndex(2);
        eleSelect.click();
    }
    private void inputNXB(){
        WebElement eleSelect = driver.findElement(selectNhaXuatBan);
        Select oSelect = new Select(eleSelect);
        eleSelect.click();
        oSelect.selectByIndex(2);
        eleSelect.click();
    }
    public void clickAddSach(){
        driver.findElement(btnInsert).click();
    }
    public void clickBack(){
        driver.findElement(btnBack).click();
    }
    public void clickingAddSach(){
        this.clickAddSach();
    }
    public void clickingBack(){
        this.clickBack();
    }
    public void inputDataAddSpThanhCong(String strMaSach, String strTenSach, String strGia,
                                        String strSoLuong, String strTonKho, String strUpFile){
        this.inputMaSach(strMaSach);
        this.inputTheLoai();
        this.inputTacGia();
        this.inputNXB();
        this.inputTenSach(strTenSach);
        this.inputGia(strGia);
        this.inputSoLuong(strSoLuong);
        this.inputTonKho(strTonKho);
        this.upLoadingFileAnh(strUpFile);
    }
}
