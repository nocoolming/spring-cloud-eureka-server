package org.ming.spring.cloud.eureka.server;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.aspectj.bridge.MessageUtil.fail;

@RunWith(SpringRunner.class)
@SpringBootTest
public class EurekaServiceApplicationTests {

    @Test
    public void contextLoads() {
    }

    @Test
    public void testAppConstructor() {
        try {
            EurekaServiceApplication app = new EurekaServiceApplication();
        } catch (Exception e) {
            fail("Construction failed.");
        }
    }
}
