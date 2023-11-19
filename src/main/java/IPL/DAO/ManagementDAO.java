package IPL.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import IPL.DTO.Management;

@Component
public class ManagementDAO {

	@Autowired
	EntityManager entityManager;

	public void saveManagement(Management management) {

		EntityTransaction entityTransaction = entityManager.getTransaction();

		entityTransaction.begin();
		entityManager.persist(management);
		entityTransaction.commit();

	}

	public Management managementLogin(String username, String password) {

		// Query query = entityManager.createQuery("select x from Management x where
		// username=?1").setParameter(1,username);

		// List<Management> list = query.getResultList();

		List<Management> list = entityManager.createQuery("select x from Management x where username=?1").setParameter(1, username).getResultList();

		if (list.isEmpty()) {
			return null;
		} else {
			return list.get(0);
		}

	}

}
