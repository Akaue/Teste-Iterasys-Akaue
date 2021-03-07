package support;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;

import java.io.File;
import java.io.IOException;

public class Screenshot {

	public static void take(WebDriver driver, String archive) {
		File screenshot = ((TakesScreenshot)driver).getScreenshotAs(OutputType.FILE);
	    try {
			FileUtils.copyFile(screenshot, new File(archive));
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	
}
