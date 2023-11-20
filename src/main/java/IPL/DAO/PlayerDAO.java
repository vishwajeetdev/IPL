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

}
