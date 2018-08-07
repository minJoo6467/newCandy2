package org.candy.service;

import org.candy.domain.ReviewVO;
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

public class ReviewServiceTests {
	
	@Setter(onMethod_= {@Autowired})
	private ReviewService service;
	
	
	
	@Test
	public void createTests() {
		ReviewVO vo = new ReviewVO();
		vo.setFno(37);
		vo.setRcontent("testContent");
		vo.setReplyer("user01");
		log.info(service.create(vo));
	
	}
	 /*insert into tbl_review (fno, rcontent, replyer) values(#{fno},#{rcontent}, #{replyer})*/
	
}
