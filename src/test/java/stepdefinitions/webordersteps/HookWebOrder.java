package stepdefinitions.webordersteps;

import org.junit.After;
import org.junit.Before;
import utils.DriverHelper;

public class HookWebOrder {
    @Before
    public void beforeScenario(){
        System.out.println("it runs before eachScenario");
    }
    @After
    public void afterScenario(){
        DriverHelper.tearDown();
        System.out.println("it runs after eachScenario");
    }
}
