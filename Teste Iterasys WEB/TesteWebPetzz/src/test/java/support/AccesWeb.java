package support;

import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.concurrent.TimeUnit;

public class AccesWeb {

	public static WebDriver createChrome() {

		System.setProperty("WebDriver.Chrome.Driver", "C:\\Tools\\chromedriver.exe");

		Dimension dimension = new Dimension(1400, 900);
		WebDriver driver = new ChromeDriver();
		driver.manage().window().setSize(dimension);
		driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
		driver.get("https://www.petz.com.br/");

		return driver;

	}
}
