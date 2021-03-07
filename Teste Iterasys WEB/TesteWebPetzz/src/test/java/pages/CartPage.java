package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import support.BasePage;

public class CartPage extends BasePage {


    public CartPage(WebDriver driver) {
        super(driver);
    }

    // valida��o da ra��o escolhida na lista no carrinho
    public String productNameCart() {
        return driver.findElement(By.xpath("//*[@class=\"td-resumo\"]")).getText();
    }


    // valida��o da do pre�o normal no carrinho
    public String priceCurrentCart() {

        return driver.findElement(By.xpath("//td[@class=\"preco\"]")).getText();
    }


    public String validationCart() {

        return driver.findElement(By.xpath("//h1[@itemprop=\"name\"]")).getText();

    }
}
