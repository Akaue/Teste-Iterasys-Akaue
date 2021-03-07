package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import support.BasePage;

public class HomePage extends BasePage {

    public HomePage(WebDriver driver) {
        super(driver);
    }

    // Pesquisa por ra��o, e clica no terceiro item que aparece na lista dropdown
    public HomePage searchProduct(String product) throws InterruptedException {

        driver.findElement(By.id("search")).sendKeys(product);
        driver.findElement(By.xpath("//div[@class=\"autocomplete-suggestions\"]//*[3]")).click();
        Thread.sleep(2000);
        return this;

    }

    // valida��o da ra��o escolhida na lista
    public String productNameHome() {

        return driver.findElement(By.xpath("//h1[contains(text(),'')]")).getText();
    }

    // valida��o do fornecedor
    public String providerNameHome() {

        return driver.findElement(By.xpath("//span[@class=\"blue\"]")).getText();
    }

    // valida��o da do pre�o normal
    public String priceCurrentHome() {

        return driver.findElement(By.xpath("//*[@class=\"price-current\"]")).getText();
    }

    // valida��o do pre�o para assinantes
    public String priceSubscriberHome() {

        return driver.findElement(By.xpath("//*[@class=\"price-subscriber\"]")).getText();
    }


    // insere item no carringo
    public CartPage btnInsertCart() throws InterruptedException {

        driver.findElement(By.id("adicionarAoCarrinho")).click();
        Thread.sleep(5000);
        return new CartPage(driver);
    }


}
