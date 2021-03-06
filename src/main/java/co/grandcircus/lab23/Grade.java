package co.grandcircus.lab23;

public class Grade {
	private Long id;
	private String name;
	private String type;
	private Double score;
	private Double total;
	private Double percentage;
	
	public Grade() {
		super();
	}

	public Grade(Long id, String name, String type, Double score, Double total, Double percentage) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.score = score;
		this.total = total;
		this.percentage=percentage;
	}
	
	

	public Double getPercentage() {
		return percentage;
	}

	public void setPercentage(Double percentage) {
		this.percentage = percentage;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Double getScore() {
		return score;
	}

	public void setScore(Double score) {
		this.score = score;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	@Override
	public String toString() {
		return "Grade [id=" + id + ", name=" + name + ", type=" + type + ", score=" + score + ", total=" + total
				+ ", percentage=" + percentage + "]";
	}
	

	
	

}
