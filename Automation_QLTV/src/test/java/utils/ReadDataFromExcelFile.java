package utils;

import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.FileInputStream;

public class ReadDataFromExcelFile {
    public static XSSFWorkbook excelWBook;
    public static XSSFCell cell;
    public static XSSFSheet excelWSheet;

    public static String strEmail = "Email";
    public static String strPassword = "Password";
    public static String strColMesgName = "Mesg";

    public static void setExcelFile(String path,String sheetName) throws Exception {
        try {
            File file = new File(path);
            FileInputStream excelFile = new FileInputStream(file);
            // Access the test data sheet
            excelWBook = new XSSFWorkbook(excelFile);
            excelWSheet = excelWBook.getSheet(sheetName);
        } catch (Exception e){
            throw (e);
        }
    }

    //This method is to read the test data from the Excel cell, in this we are passing parameters as Row num and Col num

    public static String getCellData(int rowNum, int colNum) throws Exception{
        try
        {
            cell = excelWSheet.getRow(rowNum).getCell(colNum);
            DataFormatter formatter = new DataFormatter();
            String cellData = formatter.formatCellValue(cell);
            return cellData;
        }
        catch (Exception e)
        {
            System.out.println(e);
            return"";
        }
    }

    public static int getRowBaseOnTCID(String TestCaseID) throws Exception {
        int rowCount = excelWSheet.getLastRowNum();
        int i=1;
        while (i<=rowCount){
            if (getCellData(i,0).equals(TestCaseID))
                return i;
            else
                i++;
        }
        return i;
    }

    public static int getColBaseOnFieldName(String FieldName) throws Exception {
        int firstRow = excelWSheet.getFirstRowNum();
        int lastCol = excelWSheet.getRow(firstRow).getLastCellNum();
        int j=0;
        while (j<=lastCol){
            if (getCellData(firstRow,j).equals(FieldName))
                return j;
            else
                j++;
        }
        return j;
    }
}
