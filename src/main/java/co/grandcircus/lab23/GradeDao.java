package co.grandcircus.lab23;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.lab23.Grade;

//import co.grandcircus.entity.Grade;

@Repository
public class GradeDao {
	@Autowired
	private JdbcTemplate jdbc;

	public List<Grade> findAll() {
		String sql = "SELECT * FROM grade";
		// .query returns a List
		// RowMapper converts the SLQ table results to Grade objects, matching the field names
		return jdbc.query(sql, new BeanPropertyRowMapper<>(Grade.class));
	}
	public Grade findById(Long id) {
		// ? leaves a "blank" called a parameter to fill in later
		String sql = "SELECT * FROM grade WHERE id = ?";
		// .queryForObject returns a single object
		// the value(s) for ? params are specified at the end...
		return jdbc.queryForObject(sql, new BeanPropertyRowMapper<>(Grade.class), id);
	}
	public void create(Grade grade) {
		String sql = "INSERT INTO grade(name, type, score,total,percentage) VALUES (?, ?, ?,?,?)";
		// .update is used for any modification (INSERT, UPDATE, DELETE)
		// the value(s) for ? params are specified at the end...
		jdbc.update(sql, grade.getName(), grade.getType(), grade.getScore(),grade.getTotal(),grade.getPercentage());
	}
	public void delete(Long id) {
		String sql = "DELETE FROM grade WHERE id = ?";
		jdbc.update(sql, id);
	}



}
