package IPL.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import IPL.DTO.Team;

@Component
public class TeamDAO {

	@Autowired
	EntityManager entityManager;

	public void teamSignup(Team team) {
		EntityTransaction entityTransaction = entityManager.getTransaction();

		entityTransaction.begin();
		entityManager.persist(team);
		entityTransaction.commit();

	}

	public Team teamLogin(String username) {
		List<Team> list = entityManager.createQuery("select x from Team x where username=?1").setParameter(1, username).getResultList();

		if (list.isEmpty()) {
			return null;
		} else {
			return list.get(0);
		}

	}

	public List<Team> viewAllTeam() {

		List<Team> teams = entityManager.createQuery("select x from Team x").getResultList();

		return teams;
	}

	public Team viewPlayerOfRespectiveTeam(int tid) {

		Team team = entityManager.find(Team.class, tid);
		return team;

	}

	public Team changeStatus(int tid) {

		Team team = entityManager.find(Team.class, tid);

		return team;
	}

	public void updateTeam(Team team) {
		EntityTransaction entityTransaction = entityManager.getTransaction();

		entityTransaction.begin();
		entityManager.merge(team);
		entityTransaction.commit();

	}

	public Team addAmount(int id) {

		Team team = entityManager.find(Team.class, id);

		return team;

	}

	public List<Team> getAll() {
		List<Team> teams = entityManager.createQuery("select x from Team x").getResultList();

		return teams;

	}

}
