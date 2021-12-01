package Project;
import java.lang.*;
import java.io.*;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.*;
public class Excel_Import {
	public String[][] excel_i(String path,int r,int c)  {
		 String data[][] = new String[r+1][c]; 
		// System.out.print(path);
		try{ 
         FileInputStream input = new FileInputStream(path); 
         XSSFWorkbook wb = new XSSFWorkbook(input);
         XSSFSheet sheet = wb.getSheetAt(0);
         XSSFRow row;
         for(int i=1; i<=r; i++){
             row = sheet.getRow(i);
             for(int j=0;j<c;j++) {
            	 data[0][1]="Columns found 	"+j;
            	 	switch(row.getCell(j).getCellType()) {
            	 	case NUMERIC:  data[i][j] = Math.round(row.getCell(j).getNumericCellValue())+"";break;
            	 	
            	 	case STRING :  data[i][j] = row.getCell(j).getStringCellValue();break;
            	 	}
            	 }	
          }
         wb.close();
         input.close();
         data[0][0]="Error Not Found	";
         return data;
     }catch(Exception ioe){
         System.out.println(ioe);	
        data[0][0]=ioe.toString();
	}
		 return data;
}
	public int getRowCount(String path) throws IOException {
		FileInputStream input = new FileInputStream(path); 
        XSSFWorkbook wb = new XSSFWorkbook(input);
        XSSFSheet sheet = wb.getSheetAt(0);
        return sheet.getLastRowNum();
	}
	public String[][] CSV_i(String path,int r,int c) {
		String[][] data = new String[r][c];
		try {
			String line = "";   
			int i=0;
			Boolean Header = true;
			BufferedReader br = new BufferedReader(new FileReader(path));  
			while ((line = br.readLine()) != null && i<r)   //returns a Boolean value  
			{  
				if(Header) {
					Header=false;
					continue;					
				}
			 String[] col = line.split(",");    // use comma as separator  
			 for(int j=0;j<c;j++)
	               data[i][j] = col[j];
			 i++;
			} 
			return data;
		}
	catch(Exception e) {
        System.out.println(e);	
	}
		return data;
		
}
}