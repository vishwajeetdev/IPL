package IPL.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import IPL.DAO.PlayerDAO;
import IPL.DAO.TeamDAO;
import IPL.DTO.Player;
import IPL.DTO.Team;

@RestController
public class PlayerController {

	@Autowired
	Player player;

	@Autowired
	PlayerDAO playerDAO;

	@Autowired
	TeamDAO teamDao;

	ModelAndView modelAndView = new ModelAndView();

	@RequestMapping("playersignup")
	public ModelAndView playerSignup(@ModelAttribute Player player) {

		playerDAO.playerSignup(player);

		modelAndView.addObject("msg", "Player Account created successfully");
		modelAndView.setViewName("index.jsp");

		return modelAndView;

	}

	@RequestMapping("playerlogin")
	public ModelAndView playerLogin(@RequestParam String username, @RequestParam String password, HttpSession httpSession) {
		Player player = playerDAO.playerLogin(username);

		// ModelAndView modelAndView = new ModelAndView();

		if (player == null) {

			modelAndView.addObject("msg", "Invalid Username");
			modelAndView.setViewName("playerlogin.jsp");

		} else {
			httpSession.setAttribute("player", player); // here it is used to take the current user information -- to edit or update purpose

			if (player.getPassword().equals(password)) {
				modelAndView.addObject("msg", "Login Succesfully");
				modelAndView.addObject("name", player.getName());
				modelAndView.setViewName("playerhome.jsp");
			} else {

				modelAndView.addObject("msg", "Invalid Password");
				modelAndView.setViewName("playerlogin.jsp");
			}
		}

		return modelAndView;

	}

	@RequestMapping("editplayer")
	public ModelAndView editInfo(HttpSession httpSession) {

		Player player = (Player) httpSession.getAttribute("player");

		// ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("player", player);
		modelAndView.setViewName("editplayer.jsp");
		return modelAndView;

	}

	@RequestMapping("playerupdate")
	public ModelAndView updateInfo(@ModelAttribute Player player) {
		playerDAO.playerUpdate(player);

		// ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("msg", "Player Info has been updated successfully");
		modelAndView.setViewName("playerhome.jsp");
		return modelAndView;

	}

	@RequestMapping("viewplayers")
	public ModelAndView viewPlayer(@RequestParam("id") int tid) {

		Team team = teamDao.viewPlayerOfRespectiveTeam(tid);

		List<Player> players = team.getList();

		// ModelAndView modelAndView = new ModelAndView();

		if (players.isEmpty()) {
			modelAndView.addObject("msg", "Pehle Player to kharido");
			modelAndView.addObject("teamname", team.getName());
			modelAndView.setViewName("viewTeamPlayers.jsp");

		} else {
			modelAndView.addObject("players", players);
			modelAndView.addObject("teamname", team.getName());
			modelAndView.setViewName("viewTeamPlayers.jsp");

		}

		return modelAndView;

	}

	@RequestMapping("viewallplayers")
	public ModelAndView viewAllPlayersForAuction() {
		// ModelAndView modelAndView = new ModelAndView();

		List<Player> players = playerDAO.viewAllPlayersForAuction();

		if (players.isEmpty()) {

			modelAndView.addObject("msg", "No Players are avilable for auction");
			modelAndView.setViewName("managementhome.jsp");

		} else {
			modelAndView.addObject("players", players);
			modelAndView.setViewName("viewallplayers.jsp");

		}

		return modelAndView;

	}

	@RequestMapping("changeplayerstatus")
	public ModelAndView changeStatus(@RequestParam("id") int id) {

		Player player = playerDAO.changeStatus(id);

		if (player.getStatus().equals("Pending")) {
			player.setStatus("Avilable");
		} else if (player.getStatus().equals("Avilable")) {
			player.setStatus("Pending");

		}

		playerDAO.updateTeam(player);

		// ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("msg", player.getName() + "'s Status Update Successfully");
		// modelAndView.setViewName("managementhome.jsp");

		return viewAllPlayersForAuction();

	}

	@RequestMapping("viewavilableplayer")
	public ModelAndView viewPlayerAllowedForAuction(HttpSession httpSession) {

		Team team = (Team) httpSession.getAttribute("team");

		List<Player> players = playerDAO.viewAllPlayersForPurchase();

		if (players.isEmpty()) {
			modelAndView.addObject("msg", "No Player Avilable");
			modelAndView.setViewName("teamhome.jsp");

		} else {

			modelAndView.addObject("players", players);
			modelAndView.setViewName("buyplayer.jsp");

		}

		modelAndView.addObject("teamname", team.getName());
		modelAndView.addObject("teamwallet", team.getWallet());
		return modelAndView;

	}

	@RequestMapping("buyplayer")
	public ModelAndView buyPlayer(@RequestParam("id") int id, HttpSession httpSession) {

		Team team = (Team) httpSession.getAttribute("team");

		Player player = playerDAO.findPlayerForPurchase(id);

		if (team.getWallet() < player.getPrice()) {
			modelAndView.addObject("msg", "You don't have enough balance");
			modelAndView.setViewName("buyplayer.jsp");

		} else if (player.getStatus().equals("Sold Out")) {

			modelAndView.addObject("msg", player.getName() + " Already Bought ");
			modelAndView.setViewName("buyplayer.jsp");

		}

		else if (player.getStatus().equals("Avilable")) {
			player.setTeam(team);
			player.setStatus("Sold Out");

			team.setWallet(team.getWallet() - player.getPrice());

			playerDAO.playerUpdate(player);
			teamDao.updateTeam(team);

			modelAndView.addObject("msg", "You have Successfully bought " + player.getName());
			modelAndView.setViewName("buyplayer.jsp");

		}

		modelAndView.addObject("teamname", team.getName());
		modelAndView.addObject("teamwallet", team.getWallet());

		return modelAndView;

	}

}
