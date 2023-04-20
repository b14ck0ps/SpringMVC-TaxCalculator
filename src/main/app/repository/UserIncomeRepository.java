package main.app.repository;

import main.app.domain.UserIncome;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.TypedQuery;
import java.util.List;


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


    public UserIncome findById(int user_id) {
        Session session = sessionFactory.getCurrentSession();
        TypedQuery<UserIncome> query = session.createQuery("SELECT ui FROM UserIncome ui WHERE ui.user.userId = :userId", UserIncome.class);
        query.setParameter("userId", user_id);
        if (query.getResultList().size() == 0) {
            return null;
        }
        return query.getSingleResult();
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
