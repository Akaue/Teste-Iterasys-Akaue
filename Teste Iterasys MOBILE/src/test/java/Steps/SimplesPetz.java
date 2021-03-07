package Steps;

import Pages.CartPage;
import Pages.HomePage;
import Support.Generator;
import Support.MobileAccess;
import Support.Screenshot;
import io.appium.java_client.android.AndroidDriver;

import java.net.MalformedURLException;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Rule;
import org.junit.Test;
import org.junit.rules.TestName;

import static java.lang.Thread.sleep;

public class SimplesPetz {

    public AndroidDriver driver;

    @Rule
    public TestName test = new TestName();


    @Before
    public void setUp() throws MalformedURLException, InterruptedException {

        driver = MobileAccess.createMobile();

    }

    @Test
    public void consultaPetzTest() throws InterruptedException {
        HomePage homePage = new HomePage(driver);
        CartPage cartPage = new CartPage(driver);

        // Clicando no bot�o de pesquisar
        homePage.btnSearch();

        // Pesquisando ra��o
        homePage.searchProduct("ra��o");

        //    sleep(2000);
        // Selecionando terceira ra��o na lista
        homePage.clickList();

        // Validando  na pagina do produto
        sleep(2000);
        Assert.assertEquals("Ra��o Royal Canin Golden Retriever - C�es Adultos - 12kg", homePage.productName());
        Assert.assertEquals("246.19", homePage.productPrice());
        Screenshot.take(driver, "C:\\QA\\Teste Iterasys MOBILE\\src\\test\\java\\Screenshots\\" + Generator.dataHoraArquivo() + test.getMethodName() + ".png");

        // Adicionando ao carrinho
        sleep(2000);
        homePage.btnAddCart();


        //Indo para o carrinho
        homePage.btnGoToCart();

        // Validando produto no carrinho
        sleep(2000);
        Assert.assertEquals("Ra��o Royal Canin Golden Retriever - C�es Adultos - 12kg - 1 Unidade", cartPage.productName());
        Assert.assertEquals("246.19", cartPage.ProductPrice());
        Screenshot.take(driver, "C:\\QA\\Teste Iterasys MOBILE\\src\\test\\java\\Screenshots\\" + Generator.dataHoraArquivo() + "consultaPetzTest2.png");

    }

}
