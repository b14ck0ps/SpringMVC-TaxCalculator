package main.app.repository;

import java.util.List;

import javax.persistence.TypedQuery;

import main.app.domain.UserIncome;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class UserIncomeRepository {

    private SessionFactory sessionFactory;

    @Autowired
    public UserIncomeRepository(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<UserIncome> findAll() {
        Session session = sessionFactory.getCurrentSession();
        TypedQuery<UserIncome> query = session.createQuery("FROM UserIncome", UserIncome.class);
        return query.getResultList();
    }

    public UserIncome findById(int id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(UserIncome.class, id);
    }

    public void save(UserIncome userIncome) {
        Session session = sessionFactory.getCurrentSession();
        session.save(userIncome);
    }

    public void update(UserIncome userIncome) {
        Session session = sessionFactory.getCurrentSession();
        session.update(userIncome);
    }

    public void delete(UserIncome userIncome) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(userIncome);
    }
}
