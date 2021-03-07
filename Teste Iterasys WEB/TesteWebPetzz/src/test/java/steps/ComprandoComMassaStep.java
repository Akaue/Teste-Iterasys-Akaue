package steps;

import org.easetech.easytest.annotation.DataLoader;
import org.easetech.easytest.annotation.Param;
import org.easetech.easytest.runner.DataDrivenTestRunner;
import org.junit.*;
import org.junit.rules.TestName;
import org.junit.runner.RunWith;
import org.openqa.selenium.WebDriver;
import pages.CartPage;
import pages.HomePage;
import support.AccesWeb;
import support.Generator;
import support.Screenshot;

import static java.lang.Thread.sleep;


@RunWith(DataDrivenTestRunner.class)
@DataLoader(filePaths = "C:\\QA\\Teste Iterasys WEB\\TesteWebPetzz\\src\\test\\java\\resources\\comprandoComMassaTest.csv")
public class ComprandoComMassaStep {
    public WebDriver driver;

    @Rule
    public TestName test = new TestName();


    @Before
    public void setUp() {
        driver = AccesWeb.createChrome();
    }

    @After
    public void tearDown() {
        driver.quit();
    }

    @Test
    public void testcomprandoComMassa(@Param(name = "produto") String produto, @Param(name = "nomeProduto") String nomeProduto, @Param(name = "nomeProduto2") String nomeProduto2) throws InterruptedException {
        HomePage homePage = new HomePage(driver);
        CartPage cartPage = new CartPage(driver);

        //Consultar produto a partir do arquivo csv e selecionar o terceiro da lista
        homePage.searchProduct(produto);
        System.out.println(cartPage.validationCart());

        //validar
        sleep(1000);
        Assert.assertEquals(nomeProduto, homePage.productNameHome());

        //Inserir produto no carrinho
        homePage.btnInsertCart();

        //validar
        sleep(1000);
        Assert.assertEquals(nomeProduto2, cartPage.productNameCart());

        // Gerando evidências
        Screenshot.take(driver, "C:\\QA\\Teste Iterasys WEB\\TesteWebPetzz\\src\\test\\java\\screenshot\\" + Generator.dataHoraArquivo() + test.getMethodName() + ".png");
    }

}
