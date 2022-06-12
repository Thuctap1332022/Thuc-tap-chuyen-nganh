package testScripts;

import PageObject.Home;
import PageObject.Login;
import common.Base;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;
import utils.ReadDataFromExcelFile;

import static utils.ReadDataFromExcelFile.*;
import static utils.ReadDataFromExcelFile.getCellData;

public class LoginScrt extends Base {
    public Login objLogin;
    public Home objHome;
    private String strUserName = "UserName";
    private String strMatKhau = "Pass";
    private String strColMesgName = "Mesg";

    private int intColNumUserName;
    private int intColNumPass;
    private int intColNumMesg;

    @BeforeClass
    public void setUpClassRegisterScrt() throws Exception{

        objLogin = new Login(driver,wait);
        objHome = new Home(driver,wait);
        String pathProject = System.getProperty("user.dir");
        ReadDataFromExcelFile.setExcelFile(pathProject+"/testdata/DataTest.xlsx","Login");

        intColNumUserName = getColBaseOnFieldName(strUserName);
        intColNumPass = getColBaseOnFieldName(strMatKhau);
        intColNumMesg = getColBaseOnFieldName(strColMesgName);
    }
    @BeforeMethod
    public void goToLoginPage(){
        driver.get(baseURL);
    }

    @Test
    public void TC_001_LogSuc() throws Exception {
        String strTestCaseID="TC_001";
        int rowTC= getRowBaseOnTCID(strTestCaseID);
        objLogin.inputDataLogin(getCellData(rowTC,intColNumUserName),getCellData(rowTC,intColNumPass));
        Assert.assertEquals(getCellData(rowTC,intColNumMesg),objHome.getDangXuatBtn());
    }
    @Test
    public void TC_002_SaiUserName() throws Exception {
        String strTestCaseID="TC_002";
        int rowTC= getRowBaseOnTCID(strTestCaseID);
        objLogin.inputDataLogin(getCellData(rowTC,intColNumUserName),getCellData(rowTC,intColNumPass));
        Assert.assertEquals(getCellData(rowTC,intColNumMesg),objLogin.getMesgLoi());
    }
    @Test
    public void TC_003_SaiPass() throws Exception {
        String strTestCaseID="TC_003";
        int rowTC= getRowBaseOnTCID(strTestCaseID);
        objLogin.inputDataLogin(getCellData(rowTC,intColNumUserName),getCellData(rowTC,intColNumPass));
        Assert.assertEquals(getCellData(rowTC,intColNumMesg),objLogin.getMesgLoi());
    }
    @Test
    public void TC_004_SaiUserNameVaPass() throws Exception {
        String strTestCaseID="TC_004";
        int rowTC= getRowBaseOnTCID(strTestCaseID);
        objLogin.inputDataLogin(getCellData(rowTC,intColNumUserName),getCellData(rowTC,intColNumPass));
        Assert.assertEquals(getCellData(rowTC,intColNumMesg),objLogin.getMesgLoi());
    }
    @Test
    public void TC_005_BlankUserName() throws Exception {
        String strTestCaseID="TC_005";
        int rowTC= getRowBaseOnTCID(strTestCaseID);
        objLogin.inputDataLogin(getCellData(rowTC,intColNumUserName),getCellData(rowTC,intColNumPass));
        Assert.assertEquals(getCellData(rowTC,intColNumMesg),objLogin.getMesgLoi());
    }
    @Test
    public void TC_006_BlankPass() throws Exception {
        String strTestCaseID="TC_006";
        int rowTC= getRowBaseOnTCID(strTestCaseID);
        objLogin.inputDataLogin(getCellData(rowTC,intColNumUserName),getCellData(rowTC,intColNumPass));
        Assert.assertEquals(getCellData(rowTC,intColNumMesg),objLogin.getMesgLoi());
    }
}
