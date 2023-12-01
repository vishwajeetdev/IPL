package IPL.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import IPL.DAO.TeamDAO;
import IPL.DTO.Team;

@RestController
public class TeamController {

	@Autowired
	Team team;

	@Autowired
	TeamDAO teamDAO;

	ModelAndView modelAndView = new ModelAndView();

	@RequestMapping("teamsignup")
	public ModelAndView teamSignup(@ModelAttribute Team team) {

		teamDAO.teamSignup(team);

		// ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("msg", "Team Account created successfully");
		modelAndView.setViewName("index.jsp");

		return modelAndView;

	}

	@RequestMapping("teamlogin")
	public ModelAndView teamLogin(@RequestParam String username, @RequestParam String password, HttpSession httpSession) {
		Team team = teamDAO.teamLogin(username);

		// ModelAndView modelAndView = new ModelAndView();

		if (team == null) {

			modelAndView.addObject("msg", "Invalid Username");
			modelAndView.setViewName("teamlogin.jsp");

		} else {
			// httpSession.setAttribute("team", team); // here it is used to take the current user information -- to edit or update purpose

			if (team.getPassword().equals(password)) {

				if (team.isStatus()) {
					httpSession.setAttribute("team", team);
					modelAndView.addObject("msg", "Login Succesfull");
					modelAndView.addObject("name", team.getName());
					modelAndView.setViewName("teamhome.jsp");

				} else {

					modelAndView.addObject("msg", "Inactive Account.");
					modelAndView.addObject("name", team.getName());
					modelAndView.setViewName("managementhome.jsp");

				}

			} else {

				modelAndView.addObject("msg", "Invalid Password");
				modelAndView.setViewName("teamlogin.jsp");
			}
		}

		return modelAndView;

	}

	@RequestMapping("viewallteam")
	public ModelAndView viewAllTeam() {

		List<Team> teams = teamDAO.viewAllTeam();

		// ModelAndView modelAndView = new ModelAndView();

		if (teams.isEmpty()) {
			modelAndView.addObject("msg", "No Team Avilable");
			modelAndView.setViewName("managementhome.jsp");

		} else {
			modelAndView.addObject("teams", teams);
			modelAndView.setViewName("viewallteams.jsp");

		}
		return modelAndView;

	}

	@RequestMapping("changeteamstatus")
	public ModelAndView changeStatus(@RequestParam("id") int tid) {

		Team team = teamDAO.changeStatus(tid);

		if (team.isStatus()) {
			team.setStatus(false);
		} else
			team.setStatus(true);

		teamDAO.updateTeam(team);

		// ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("msg", team.getName() + "'s Status Update Successfully");
		// modelAndView.setViewName("managementhome.jsp");

		return viewAllTeam();

	}

	@RequestMapping("addamount")
	public ModelAndView addAmount(@RequestParam double amount, int id, RedirectAttributes redirectAttributes) {

		Team team = teamDAO.addAmount(id);

		double updatedWallet = team.getWallet() + amount;

		team.setWallet(updatedWallet);

		teamDAO.updateTeam(team);

		redirectAttributes.addFlashAttribute("msg", amount + "cr has been added into " + team.getUsername() + "'s wallet");

		return new ModelAndView("redirect:/viewallteam");

	}

	@RequestMapping("setzero")
	public ModelAndView setzero(@RequestParam int id) {
		Team team = teamDAO.addAmount(id);
		team.setWallet(0);

		teamDAO.updateTeam(team);

		return viewAllTeam();

	}

}
