package IPL.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import IPL.DTO.Player;

@Component
public class PlayerDAO {

	@Autowired
	EntityManager entityManager;

	public void playerSignup(Player player) {
		EntityTransaction entityTransaction = entityManager.getTransaction();

		player.setStatus("Pending");

		entityTransaction.begin();
		entityManager.persist(player);
		entityTransaction.commit();

	}

	public Player playerLogin(String username) {
		List<Player> list = entityManager.createQuery("select x from Player x where username=?1").setParameter(1, username).getResultList();

		if (list.isEmpty()) {
			return null;
		} else {
			return list.get(0);
		}

	}

	public void playerUpdate(Player player) {
		EntityTransaction entityTransaction = entityManager.getTransaction();

		entityTransaction.begin();
		entityManager.merge(player);
		entityTransaction.commit();

	}

	public List<Player> viewAllPlayersForAuction() {

		List<Player> list = entityManager.createQuery("select x from Player x").getResultList();

		return list;

	}

	public Player changeStatus(int id) {

		Player player = entityManager.find(Player.class, id);

		return player;
	}

	public void updateTeam(Player player) {
		EntityTransaction entityTransaction = entityManager.getTransaction();

		entityTransaction.begin();
		entityManager.merge(player);
		entityTransaction.commit();

	}

	public List<Player> viewAllPlayersForPurchase() {

		List<Player> list = entityManager.createQuery("SELECT x FROM Player x WHERE status = 'Avilable' OR status = 'Sold Out'", Player.class).getResultList();
		return list;
//		try {
//			
//		} catch (Exception e) {
//			// Log or print the exception
//			e.printStackTrace();
//			return Collections.emptyList(); // or return null if needed
//		}
	}

	public Player findPlayerForPurchase(int id) {

		Player player = entityManager.find(Player.class, id);

		return player;
	}

}
