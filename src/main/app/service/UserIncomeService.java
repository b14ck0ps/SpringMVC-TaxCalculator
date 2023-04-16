package main.app.service;

import main.app.domain.UserIncome;
import main.app.repository.UserIncomeRepository;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class UserIncomeService {
    private static UserIncomeRepository userIncomeRepository;

    public UserIncomeService(UserIncomeRepository userIncomeRepository) {
        this.userIncomeRepository = userIncomeRepository;
    }

    public static List<UserIncome> findAll() {
        return userIncomeRepository.findAll();
    }

    public static UserIncome findById(int id) {
        return userIncomeRepository.findById(id);
    }

    public static void save(UserIncome userIncome) {
        userIncomeRepository.save(userIncome);
    }

    public static void update(UserIncome userIncome) {
        userIncomeRepository.update(userIncome);
    }

    public static void delete(UserIncome userIncome) {
        userIncomeRepository.delete(userIncome);
    }

}
