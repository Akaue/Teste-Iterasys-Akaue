package Pages;

import Support.BasePage;
import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;
import org.openqa.selenium.By;

public class CartPage extends BasePage {


    public CartPage(AndroidDriver driver) {
        super(driver);
    }

    // Valida nome do produto no carrinho
    public String productName() {
        return driver.findElement(By.id("br.com.petz:id/tv_prod_name")).getText();
    }

    // Valida  preço do produto
    public String ProductPrice() {
        return driver.findElement(By.id("br.com.petz:id/tv_price_subtotal")).getText();
    }


}
