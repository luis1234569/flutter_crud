package yavirac.movilapp.Request;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("request")
@CrossOrigin({"*"})
public class RequestController {
    
    @Autowired
    RequestService requestService;

    //CRUD

    //Read
    @GetMapping("/{id}")
    public Request findById(@PathVariable long id){
        return requestService.findById(id);
    }


    //List findAll
    @GetMapping("/list")
    public List<Request> findAll(){
        return requestService.findAll();
    }


        //Create save
    @PostMapping("/save")
    public Request save(@RequestBody Request request){
        return requestService.save(request);
    }

            //Update update
    @PutMapping("/update")
    public Request update(@RequestBody Request request)
    {
        return requestService.save(request);
    }

    //Delete /deleteById
    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable long id){
        requestService.deleteById(id);
    }
}
