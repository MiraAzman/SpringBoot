package springboot.my_first_application.controller;

import springboot.my_first_application.exception.ResourceNotFoundException;
import springboot.my_first_application.model.Student;
import springboot.my_first_application.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api")
public class StudentController {

    @Autowired
    StudentRepository studentRepository;

    @GetMapping("/students")
    public List<Student> getAllStudent() {
        return studentRepository.findAll();
    }
      
    @PostMapping("/students")
    public Student createStudent(@Valid @RequestBody Student student) {
        return studentRepository.save(student);
    }
	
    @GetMapping("/students/{std_id}")
    public Student getStudentById(@PathVariable(value = "std_id") Long studentId) {
    	
        return studentRepository.findById(studentId)
                .orElseThrow(() -> new ResourceNotFoundException("Student", "std_id", studentId));
    }

    @PutMapping("/students/{std_id}")
    public Student updateStudent(
    		@PathVariable(value = "std_id") Long studentId, 
    		@Valid @RequestBody Student stdDetails) 
    {

    	Student student = studentRepository.findById(studentId)
                .orElseThrow(() -> new ResourceNotFoundException("Student", "std_id", studentId));

    	student.setStd_name(stdDetails.getStd_name());
    	student.setStd_age(stdDetails.getStd_age());
    	student.setStd_address(stdDetails.getStd_address());
    	student.setStd_placeofbirth(stdDetails.getStd_placeofbirth());
    	
        Student updatedStd = studentRepository.save(student);
        return updatedStd;
    }

    @DeleteMapping("/students/{std_id}")
    public ResponseEntity<?> deleteStudent(@PathVariable(value = "std_id") Long studentId) {
    	
    	Student student = studentRepository.findById(studentId)
                .orElseThrow(() -> new ResourceNotFoundException("Student", "std_id", studentId));

        studentRepository.delete(student);

        return ResponseEntity.ok().build();
    }
    
}
