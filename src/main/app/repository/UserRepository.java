package main.app.repository;

import java.util.List;

import javax.persistence.TypedQuery;

import main.app.domain.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class UserRepository {

    private SessionFactory sessionFactory;

    @Autowired
    public UserRepository(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<User> findAll() {
        Session session = sessionFactory.getCurrentSession();
        TypedQuery<User> query = session.createQuery("FROM User", User.class);
        return query.getResultList();
    }

    public User findById(long id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(User.class, id);
    }

    public boolean save(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.save(user);
        return true;
    }

    public boolean update(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.update(user);
        return true;
    }

    public boolean delete(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(user);
        return true;
    }

    public User findByEmail(String email) {
        Session session = sessionFactory.getCurrentSession();
        TypedQuery<User> query = session.createQuery("FROM User WHERE email = :email", User.class);
        query.setParameter("email", email);
        if (query.getResultList().size() == 0) {
            return null;
        }
        return query.getSingleResult();
    }
}
