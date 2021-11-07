package Project;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import com.opencsv.CSVWriter;

public class CSV_Import {
public void DataExport() {
	try {
		String path="E:\\file.csv";
		File f = new File(path);
		FileWriter fw = new FileWriter(f);
		CSVWriter cw = new CSVWriter(fw);
		String[] header = { "Name", "Class", "Marks" };
		cw.writeNext(header);
		cw.writeNext(header);
		cw.writeNext(header); 	
	} catch (Exception e) {
		System.out.println(e);
		e.printStackTrace();
	}
	
}
}
