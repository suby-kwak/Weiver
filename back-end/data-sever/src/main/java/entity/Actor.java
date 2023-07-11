package entity;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Document(collection = "actor")
@Builder
@Setter
@Getter
public class Actor {
	@Id
	private String _id;
	private String name;
	private String profileImage;
	private Casting[] castings;
	
	@Builder
	@Setter
	@Getter
	public static class Casting {
		private String _id;
		private String title;
		private String posterImage;
		private Date stDate;
		private Date edDate;
		private String role;
	}

}
