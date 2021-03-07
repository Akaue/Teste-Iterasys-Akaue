package Pages;

import Support.BasePage;
import io.appium.java_client.MobileDriver;
import io.appium.java_client.MobileElement;

import org.openqa.selenium.By;

import static java.lang.Thread.sleep;

public class HomePage extends BasePage {


    public HomePage(MobileDriver driver) {
        super(driver);
    }

    // Pesquisa produto
    public HomePage searchProduct(String product) throws InterruptedException {

        driver.findElement(By.id("br.com.petz:id/et_search")).sendKeys(product);
        sleep(2000);


        return this;

    }

    // Clica no botão Allow para permitir localizão do dispositivo e clica na lupa de pesquisa
    public HomePage btnSearch() throws InterruptedException {
        sleep(1000);
        MobileElement el2 = (MobileElement) driver.findElementById("com.android.packageinstaller:id/permission_allow_button");
        el2.click();
        sleep(1000);
        MobileElement el7 = (MobileElement) driver.findElementByAccessibilityId("pesquisa");
        el7.click();

        return this;

    }

    // Clica no 3 elemento da lista
    public HomePage clickList() {

        MobileElement clickList = (MobileElement) driver.findElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[3]");
        clickList.click();

        return this;
    }

    // Valida nome do produto
    public String productName() {
        return driver.findElement(By.xpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.TextView")).getText();

    }

    // Valida preço do produto
    public String productPrice() {

        return driver.findElement(By.id("br.com.petz:id/tv_prod_main_price")).getText();
    }

    // Botão adicionar no carrinho
    public HomePage btnAddCart() {
        MobileElement btnAddCart = (MobileElement) driver.findElement(By.id("br.com.petz:id/rl_add_to_cart"));
        btnAddCart.click();
        return this;
    }

    // Botão para ir para o carrinho
    public CartPage btnGoToCart() {
        MobileElement btnGoToCart = (MobileElement) driver.findElement(By.id("br.com.petz:id/rl_go_to_shopping_cart"));
        btnGoToCart.click();

        return new CartPage(driver);
    }

}


