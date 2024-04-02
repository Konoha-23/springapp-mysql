package practice24.dragonballspring;

import org.springframework.data.repository.CrudRepository;

import practice24.dragonballspring.User;

public interface UserRepository extends CrudRepository<User, Integer> {

}
