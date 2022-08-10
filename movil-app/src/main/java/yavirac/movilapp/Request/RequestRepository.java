package yavirac.movilapp.Request;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface RequestRepository extends CrudRepository<Request, Long> {
    List<Request> findAll();
}
