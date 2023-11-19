package IPL.DAO;

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

}
