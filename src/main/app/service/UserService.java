package main.app.service;


import main.app.domain.User;
import main.app.repository.UserRepository;
import org.springframework.stereotype.Service;


import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class UserService {

    private static UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public static List<User> list() {
        return userRepository.findAll();
    }

    public static User get(Long id) {
        return userRepository.findById(id);
    }

    public static boolean create(User user) {
        return userRepository.save(user);
    }

    public static boolean update(User user) {
        return userRepository.update(user);
    }

    public static boolean delete(User user) {
        return userRepository.delete(user);
    }

    public static User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    public static boolean IsAuthenticate(String email, String password) {
        User user = findByEmail(email);
        if (user != null) {
            if (user.getPassword().equals(password)) {
                return true;
            }
        }
        return false;
    }
}
