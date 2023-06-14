package beans;

import java.sql.SQLException;
import java.util.List;

import dao.TeamDaoImpl;
import pojos.Team;

public class IplBeans {
	
	private TeamDaoImpl teamDao;
	
	public IplBeans() throws SQLException {
		teamDao=new TeamDaoImpl();
		
	}

	public TeamDaoImpl getTeamDao() {
		return teamDao;
	}

	public void setTeamDao(TeamDaoImpl teamDao) {
		this.teamDao = teamDao;
	}
	public List<Team> validateTeams() throws SQLException {
		
		return teamDao.getSelectedDetails();
		
	}

}
