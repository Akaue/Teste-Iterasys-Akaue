package Support;

import io.appium.java_client.MobileDriver;
import io.appium.java_client.android.AndroidDriver;
import org.openqa.selenium.WebDriver;

public class BasePage {
    public AndroidDriver driver;

    public BasePage(MobileDriver driver) {

        this.driver = (AndroidDriver) driver;
    }


}
