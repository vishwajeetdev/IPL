package IPL.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import IPL.DAO.PlayerDAO;
import IPL.DTO.Player;

@RestController
public class Player_Controller 
{
	
	@Autowired
	Player player;
	
	@Autowired
	PlayerDAO playerDAO;
	
	
	@RequestMapping("playersignup")
	public void playerSignup(@ModelAttribute Player player) 
	{
		player.setStatus("pending");
		
		playerDAO.playerSignup(player);
		
	}

}
