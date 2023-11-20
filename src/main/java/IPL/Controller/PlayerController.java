package IPL.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import IPL.DAO.PlayerDAO;
import IPL.DTO.Player;

@RestController
public class PlayerController {

	@Autowired
	Player player;

	@Autowired
	PlayerDAO playerDAO;

	@RequestMapping("playersignup")
	public void playerSignup(@ModelAttribute Player player) {
		player.setStatus("pending");

		playerDAO.playerSignup(player);

		ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("msg", "Player Account created successfully");
		modelAndView.setViewName("index.jsp");

	}

	@RequestMapping("playerlogin")
	public ModelAndView mamangementLogin(@RequestParam String username, @RequestParam String password) {
		Player player = playerDAO.playerLogin(username);

		ModelAndView modelAndView = new ModelAndView();

		if (player == null) {

			modelAndView.addObject("msg", "Invalid Username");
			modelAndView.setViewName("playerlogin.jsp");

		} else if (player.getPassword().equals(password)) {

			modelAndView.addObject("msg", "Player Login Succesfully");
			modelAndView.setViewName("playerhome.jsp");
		} else {

			modelAndView.addObject("msg", "Entered Invalid Password");
			modelAndView.setViewName("playerlogin.jsp");
		}

		return modelAndView;

	}

}
