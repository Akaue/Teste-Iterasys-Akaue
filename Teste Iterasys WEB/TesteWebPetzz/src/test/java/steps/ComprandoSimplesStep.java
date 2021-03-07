package steps;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.WebDriver;
import pages.CartPage;
import pages.HomePage;
import support.AccesWeb;

public class ComprandoSimplesStep {
    public WebDriver driver;

    @Before
    public void setUp() {
        driver = AccesWeb.createChrome();
    }

    @After
    public void tearDown() {
        driver.quit();
    }

    @Test
    public void ComprandoSimplesTest() throws InterruptedException {

        HomePage homePage = new HomePage(driver);
        CartPage cartPage = new CartPage(driver);

        // Realizando pesquisa
        homePage.searchProduct("Ração");

        // Validando produto,fornecedor,preço normal e preço assinante
        String petFood = "Ração Royal Canin Golden Retriever - Cães Adultos - 12kg";
        String petProvider = "Royal Canin";
        String petPrice = "R$ 246,19";
        String petSubs = "R$ 221,57";

        Assert.assertEquals(petFood, homePage.productNameHome());
        Assert.assertEquals(petProvider, homePage.providerNameHome());
        Assert.assertEquals(petPrice, homePage.priceCurrentHome());
        Assert.assertEquals(petSubs, homePage.priceSubscriberHome());


        // Inserindo produto no carrinho de compras
        homePage.btnInsertCart();

        // Validando se os dados do item 3 continuam idêntico
        Assert.assertEquals("Ração Royal Canin Golden Retriever - Cães Adultos - 12kg - 1 Unidade",
                cartPage.productNameCart());
        Assert.assertEquals("R$ 246,19", cartPage.priceCurrentCart());

    }

}
