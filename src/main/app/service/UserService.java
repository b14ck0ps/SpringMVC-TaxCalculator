package main.app.service;


import main.app.domain.User;
import main.app.repository.UserRepository;
import org.springframework.stereotype.Service;


import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class UserService {

    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> list() {
        return userRepository.findAll();
    }

    public User get(Long id) {
        return userRepository.findById(id);
    }

    public boolean create(User user) {
        return userRepository.save(user);
    }

    public boolean update(User user) {
        return userRepository.update(user);
    }

    public boolean delete(User user) {
        return userRepository.delete(user);
    }

}
