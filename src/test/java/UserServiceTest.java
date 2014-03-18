import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.rick.management.car.spring.persit.domain.User;
import com.rick.management.car.spring.service.IUserService;


public class UserServiceTest {
	IUserService userService;
	@Test
	public void findAll()
	{
		List<User> users =new ArrayList<User>();
		users=userService.findAll();
		
	}

}
