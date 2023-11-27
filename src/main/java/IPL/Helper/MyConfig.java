package IPL.Helper;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

// here by using this annotation we will do the Configuration of our project
//@ComponentScan("IPL.Controller")
//@ComponentScan("IPL.DAO")
//@ComponentScan("IPL.DTO")
//@ComponentScan("IPL.Helper")

@Configuration
@ComponentScan("IPL")
public class MyConfig {

	@Bean // it will help to create reference variable of interface type.
	public EntityManager getEntityManagerFactory() {

		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("vishwajeet");
		EntityManager entityManager = entityManagerFactory.createEntityManager();

		return entityManager;
	}

}