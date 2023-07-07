package entity;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "musical")
public class Musical {
	@Id
	private String _id;
	private String posterImage;
	private String title;
	private String theater;
	private Date stDate;
	private Date edDate;
	private int runngingTime;
	private String viewingAge;
	private String ticketPrice;
	private String[] actorIds;
}
