package springboot.my_first_application.model;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import javax.persistence.*;

@Entity
@Table(name = "student")
@EntityListeners(AuditingEntityListener.class)
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long std_id;

    private String std_name;
    private int std_age;
    private String std_address;
    private String std_placeofbirth;

    public Student() { }
    
	public Student(Long std_id, String std_name, int std_age, String std_address, String std_placeofbirth) {
		
	    this.std_id = std_id;
	    this.std_name = std_name;
	    this.std_age = std_age;
	    this.std_address = std_address;
	    this.std_placeofbirth = std_placeofbirth;
	}
    
    //getter
    public Long getStd_id() {
        return std_id;
    }
    public String getStd_name() {
        return std_name;
    }
    public int getStd_age() {
        return std_age;
    }
    public String getStd_address() {
        return std_address;
    }
    public String getStd_placeofbirth() {
        return std_placeofbirth;
    }

    //setter
    public void setStd_id(Long std_id) {
        this.std_id = std_id;
    }
    public void setStd_name(String std_name) {
        this.std_name = std_name;
    }
    public void setStd_age(int std_age) {
        this.std_age = std_age;
    }
    public void setStd_address(String std_address) {
        this.std_address = std_address;
    }
    public void setStd_placeofbirth(String std_placeofbirth) {
        this.std_placeofbirth = std_placeofbirth;
    }
}

