package Project;

import java.io.FileOutputStream;
import java.io.FileWriter;
import java.sql.*;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.opencsv.CSVWriter;

public class Excel_export {
	public void Excel_e(String path, String q, String sw) throws SQLException {
		Connection con = ConnectionProvider.getCon();
		try {
			Statement st = con.createStatement();
			XSSFWorkbook workbook = new XSSFWorkbook();
			XSSFSheet sheet = workbook.createSheet("Data");
			if (sw.equals("results")) {
				ResultSet rs1 = st.executeQuery("select * from institute WHERE`ID`='" + q + "'");
				Statement st1 = con.createStatement();
				ResultSet rs = st1.executeQuery("select * from result WHERE`I_ID`='" + q + "'");
				writeResultDataLines(rs, workbook, sheet, rs1);
			} else if (sw.equals("students")) {
				ResultSet rs = st.executeQuery("select * from student WHERE`I_ID`='" + q + "'");
				writeStudentDataLines(rs, workbook, sheet);
			} else if (sw.equals("institutes")) {
				ResultSet rs = st.executeQuery("select * from institute WHERE 1 ");
				writeInstituteDataLines(rs, workbook, sheet);
			}
			FileOutputStream outputStream = new FileOutputStream(path);
			workbook.write(outputStream);
			workbook.close();
		} catch (Exception e) {
			System.out.print(e + "kk");
		}
		con.close();
	}

	private void writeInstituteDataLines(ResultSet result, XSSFWorkbook workbook, XSSFSheet sheet) throws SQLException {
		Row headerRow = sheet.createRow(0);

		Cell headerCell = headerRow.createCell(0);
		headerCell.setCellValue("Institute Name");

		headerCell = headerRow.createCell(1);
		headerCell.setCellValue("Institute ID");

		headerCell = headerRow.createCell(2);
		headerCell.setCellValue("Passwords");
		
		headerCell = headerRow.createCell(3);
		headerCell.setCellValue("Subject 1");

		headerCell = headerRow.createCell(4);
		headerCell.setCellValue("Subject 2");

		headerCell = headerRow.createCell(5);
		headerCell.setCellValue("Subject 3");

		headerCell = headerRow.createCell(6);
		headerCell.setCellValue("Subject 4");

		headerCell = headerRow.createCell(7);
		headerCell.setCellValue("Subject 5");

		headerCell = headerRow.createCell(8);
		headerCell.setCellValue("Subject 6");

		headerCell = headerRow.createCell(9);
		headerCell.setCellValue("Subject 7");
		
		headerCell = headerRow.createCell(10);
		headerCell.setCellValue("Course Name");
		
		headerCell = headerRow.createCell(11);
		headerCell.setCellValue("Semister");
		
		headerCell = headerRow.createCell(12);
		headerCell.setCellValue("R_ID");
		int rowCount = 1;
		while (result.next()) {
			Row row = sheet.createRow(rowCount++);
			String id = "";
			int columnCount = 0;
			for (int i = 1; i <= 13; i++) {
					id = result.getString(i);
					Cell cell = row.createCell(columnCount++);
					cell.setCellValue(id);
			}
		}
	result.close();
	}

	private void writeStudentDataLines(ResultSet result, XSSFWorkbook workbook, XSSFSheet sheet) throws SQLException {
		Row headerRow = sheet.createRow(0);

		Cell headerCell = headerRow.createCell(0);
		headerCell.setCellValue("Course Name");

		headerCell = headerRow.createCell(1);
		headerCell.setCellValue("Branch Name");

		headerCell = headerRow.createCell(2);
		headerCell.setCellValue("Roll No.");

		headerCell = headerRow.createCell(3);
		headerCell.setCellValue("Student Name");

		headerCell = headerRow.createCell(4);
		headerCell.setCellValue("Mothers Name");

		headerCell = headerRow.createCell(5);
		headerCell.setCellValue("Gender");

		headerCell = headerRow.createCell(6);
		headerCell.setCellValue("Institute ID");

		int rowCount = 1;

		while (result.next()) {
			String a = result.getString(result.getMetaData().getColumnName(1));
			String b = result.getString(result.getMetaData().getColumnName(2));
			int c = result.getInt(result.getMetaData().getColumnName(3));
			String d = result.getString(result.getMetaData().getColumnName(4));
			String e = result.getString(result.getMetaData().getColumnName(5));
			String f = result.getString(result.getMetaData().getColumnName(6));
			String g = result.getString(result.getMetaData().getColumnName(7));
			Row row = sheet.createRow(rowCount++);

			int columnCount = 0;
			Cell cell = row.createCell(columnCount++);
			cell.setCellValue(a);

			cell = row.createCell(columnCount++);
			cell.setCellValue(b);

			cell = row.createCell(columnCount++);
			cell.setCellValue(c);

			cell = row.createCell(columnCount++);
			cell.setCellValue(d);

			cell = row.createCell(columnCount++);
			cell.setCellValue(e);

			cell = row.createCell(columnCount++);
			cell.setCellValue(f);

			cell = row.createCell(columnCount);
			cell.setCellValue(g);

		}
	}

	private void writeResultDataLines(ResultSet result, XSSFWorkbook workbook, XSSFSheet sheet, ResultSet rs)
			throws SQLException {
		if (rs.next()) {

			Row headerRow = sheet.createRow(0);

			Cell headerCell = headerRow.createCell(0);
			headerCell.setCellValue("Roll No.");

			headerCell = headerRow.createCell(1);
			headerCell.setCellValue(rs.getString(4));

			headerCell = headerRow.createCell(2);
			headerCell.setCellValue(rs.getString(5));

			headerCell = headerRow.createCell(3);
			headerCell.setCellValue(rs.getString(6));

			headerCell = headerRow.createCell(4);
			headerCell.setCellValue(rs.getString(7));

			headerCell = headerRow.createCell(5);
			headerCell.setCellValue(rs.getString(8));

			headerCell = headerRow.createCell(6);
			headerCell.setCellValue(rs.getString(9));

			headerCell = headerRow.createCell(7);
			headerCell.setCellValue(rs.getString(10));

			headerCell = headerRow.createCell(8);
			headerCell.setCellValue("Institute ID");
			rs.close();
		}

		int rowCount = 1;
		while (result.next()) {
			Row row = sheet.createRow(rowCount++);
			int[] val = new int[10];
			String id = "";
			int columnCount = 0;
			for (int i = 1; i <= 9; i++) {
				if (i == 9) {
					id = result.getString(i);
					Cell cell = row.createCell(columnCount++);
					cell.setCellValue(id);
				} else {
					val[i] = result.getInt(i);
					Cell cell = row.createCell(columnCount++);
					cell.setCellValue(val[i]);
				}
			}
		}
		
		result.close();
	}
}
