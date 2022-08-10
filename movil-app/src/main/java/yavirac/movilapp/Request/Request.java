package yavirac.movilapp.Request;


import java.sql.Timestamp;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("requests")
public class Request {

    @Id
    private long id;
    private String name;
    private String dni;
    private String career;
    private String type;
    private String reason;
    private String description;
    private String phonecontact;
    private Timestamp registerdate;
    private int scorereply;
    private boolean active;

}
