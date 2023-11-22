package IPL.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import IPL.DAO.TeamDAO;
import IPL.DTO.Team;

@RestController
public class TeamController {

	@Autowired
	Team team;

	@Autowired
	TeamDAO teamDAO;

	@RequestMapping("teamsignup")
	public ModelAndView teamSignup(@ModelAttribute Team team) {

		teamDAO.teamSignup(team);

		ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("msg", "Team Account created successfully");
		modelAndView.setViewName("index.jsp");

		return modelAndView;

	}

	@RequestMapping("teamlogin")
	public ModelAndView mamangementLogin(@RequestParam String username, @RequestParam String password, HttpSession httpSession) {
		Team team = teamDAO.teamLogin(username);

		ModelAndView modelAndView = new ModelAndView();

		if (team == null) {

			modelAndView.addObject("msg", "Invalid Username");
			modelAndView.setViewName("teamlogin.jsp");

		} else {
			httpSession.setAttribute("team", team); // here it is used to take the current user information -- to edit or update purpose

			if (team.getPassword().equals(password)) {
				modelAndView.addObject("msg", "Team Login Succesfully");
				modelAndView.addObject("name", team.getName());
				modelAndView.setViewName("teamhome.jsp");
			} else {

				modelAndView.addObject("msg", "Entered Invalid Password");
				modelAndView.setViewName("teamlogin.jsp");
			}
		}

		return modelAndView;

	}

}
