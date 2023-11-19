package IPL.DAO;

import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import IPL.DTO.Player;



@Component
public class PlayerDAO
{
	@Autowired
	EntityManagerFactory entityManagerFactory;
	public void playerSignup(Player player) 
	{
		EntityManager em = entityManagerFactory.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.persist(player);
		et.commit();
		
	}

}
