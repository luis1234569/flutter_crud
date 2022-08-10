package yavirac.movilapp.Request;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RequestService {

    @Autowired
    RequestRepository requestRepository;

    //CRUD = Create, Read, Update, Delete

    public Request save(Request request){

        return requestRepository.save(request);
    }

    public Request findById(long id){
        return requestRepository.findById(id).orElse(new Request());
    }

    public Request update(Request request){
        return requestRepository.save(request);
    }

    public void deleteById(long id){
        requestRepository.deleteById(id);
    }

    public List<Request> findAll(){
        return requestRepository.findAll();
    }


    
}
