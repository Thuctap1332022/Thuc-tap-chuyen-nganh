package testScripts;

import PageObject.AddSach;
import PageObject.Home;
import PageObject.Login;
import PageObject.Sach;
import common.Base;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;
import utils.ReadDataFromExcelFile;
import utils.ReadProperties;

import static utils.ReadDataFromExcelFile.*;
import static utils.ReadDataFromExcelFile.getCellData;

public class AddSachScrt extends Base {
    public Home objHome;
    public Login objLogin;
    public Sach objSach;
    public AddSach objAddSP;

    private String strMaSach = "Mã sách";
    private String strTacGia = "Tác giả";
    private String strNXB = "NXB";
    private String strTheLoai = "Thể loại";
    private String strTenSach = "Tên sách";
    private String strGia = "Giá";
    private String strSoLuong = "Số lượng";
    private String strTonKho = "Tồn kho";
    private String strAnh = "Ảnh";
    private String strColMesgName = "Mesg";

    private int intColNumMaSach;
    private int intColNumTacGia;
    private int intColNumNXB;
    private int intColNumTheLoai;
    private int intColNumTenSach;
    private int intColNumGia;
    private int intColNumSoLuong;
    private int intColNumTonKho;
    private int intColNumAnh;
    private int intColNumMesg;

    @BeforeClass
    public void setUpClassAddProductScrt() throws Exception{
        objHome = new Home(driver,wait);
        objLogin = new Login(driver,wait);
        objSach = new Sach(driver,wait);
        objAddSP = new AddSach(driver,wait);
        String pathProject = System.getProperty("user.dir");
        ReadDataFromExcelFile.setExcelFile(pathProject+"/testdata/DataTest.xlsx","AddProduct");
        intColNumMaSach = getColBaseOnFieldName(strMaSach);
        intColNumTacGia = getColBaseOnFieldName(strTacGia);
        intColNumNXB = getColBaseOnFieldName(strNXB);
        intColNumTheLoai = getColBaseOnFieldName(strTheLoai);
        intColNumTenSach = getColBaseOnFieldName(strTenSach);
        intColNumGia = getColBaseOnFieldName(strGia);
        intColNumSoLuong = getColBaseOnFieldName(strSoLuong);
        intColNumTonKho = getColBaseOnFieldName(strTonKho);
        intColNumAnh = getColBaseOnFieldName(strAnh);
        intColNumMesg = getColBaseOnFieldName(strColMesgName);

        driver.get(baseURL);
        String strUserName= ReadProperties.getPropertyValue("CONFIC_USERNAME");
        String strPass = ReadProperties.getPropertyValue("CONFIC_PASSWORD");
        objLogin.inputDataLogin(strUserName,strPass);
        objHome.clickLinkSach();
        objSach.clickLinkAddsach();

    }
    @BeforeMethod
    public void goToAddProductPage(){
        driver.navigate().refresh();
    }
    @Test
    public void TC_000_NhapTenSanPhamNhoHonMin() throws Exception {
        String strTestCaseID="TC_016";
        int rowTC= getRowBaseOnTCID(strTestCaseID);
        objAddSP.inputDataAddSpThanhCong(
                getCellData(rowTC,intColNumMaSach),getCellData(rowTC,intColNumTenSach),
                getCellData(rowTC,intColNumGia),getCellData(rowTC,intColNumSoLuong),
                getCellData(rowTC,intColNumTonKho),getCellData(rowTC,intColNumAnh));
        objAddSP.clickAddSach();
        objAddSP.clickBack();
        Assert.assertEquals(getCellData(rowTC,intColNumMesg),objSach.getLinkAddsach());
    }
}
