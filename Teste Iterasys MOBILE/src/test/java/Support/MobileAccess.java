package Support;

import io.appium.java_client.AppiumDriver;

import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.remote.MobileCapabilityType;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

import org.openqa.selenium.remote.DesiredCapabilities;

import java.net.MalformedURLException;
import java.net.URL;

public class MobileAccess {


    public static AndroidDriver<MobileElement> createMobile() throws MalformedURLException, InterruptedException {

        String URL = "http://localhost:4723/wd/hub";


        DesiredCapabilities desiredCapabilities = new DesiredCapabilities();
        desiredCapabilities.setCapability("platformName", "Android");
        desiredCapabilities.setCapability("deviceName", "VirtualDevice");
        desiredCapabilities.setCapability("automationName", "uiautomator2");
        desiredCapabilities.setCapability(MobileCapabilityType.APP,
                "C:\\QA\\Teste Iterasys MOBILE\\src\\test\\java\\br.com.petz-3.15.19.apk");
        AppiumDriver driver = new AndroidDriver(new URL(URL), desiredCapabilities);
//
//        AndroidDriver<MobileElement> driver = new AndroidDriver(new URL("http://localhost:4723/wd/hub"),
//                desiredCapabilities);
        driver.findElement(By.id("br.com.petz:id/tv_start_without_login")).click();

        Thread.sleep(5000);

        return (AndroidDriver<MobileElement>) driver;
    }



}

