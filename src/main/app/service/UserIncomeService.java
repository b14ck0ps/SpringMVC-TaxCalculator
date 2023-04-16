package main.app.service;

import main.app.domain.UserIncome;
import main.app.repository.UserIncomeRepository;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class UserIncomeService {
    private UserIncomeRepository userIncomeRepository;

    public UserIncomeService(UserIncomeRepository userIncomeRepository) {
        this.userIncomeRepository = userIncomeRepository;
    }

    public List<UserIncome> findAll() {
        return userIncomeRepository.findAll();
    }

    public UserIncome findById(int id) {
        return userIncomeRepository.findById(id);
    }

    public void save(UserIncome userIncome) {
        userIncomeRepository.save(userIncome);
    }

    public void update(UserIncome userIncome) {
        userIncomeRepository.update(userIncome);
    }

    public void delete(UserIncome userIncome) {
        userIncomeRepository.delete(userIncome);
    }

}
