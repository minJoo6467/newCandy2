package org.candy.service;

import org.candy.domain.Criteria;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml"})

public class TruckServiceTests {
	@Setter(onMethod_= {@Autowired})
	private TruckService service;
	
	@Test
	public void readTest() {
		log.info(service.read(1));
	}
	@Test
	public void getTotalTest() {
		log.info(service.getTotal(new Criteria()));
	
	}
	 /*insert into tbl_review (fno, rcontent, replyer) values(#{fno},#{rcontent}, #{replyer})*/
	
}
