package IPL.DTO;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Team {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	int tid;

	String name;

	String username;

	String password;

	double wallet;

	boolean status;

	@OneToMany
	List<Player> list;

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public double getWallet() {
		return wallet;
	}

	public void setWallet(double wallet) {
		this.wallet = wallet;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public List<Player> getList() {
		return list;
	}

	public void setList(List<Player> list) {
		this.list = list;
	}

}