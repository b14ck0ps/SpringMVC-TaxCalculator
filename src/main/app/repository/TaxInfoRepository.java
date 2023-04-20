package main.app.repository;


import java.util.List;

import javax.persistence.TypedQuery;

import main.app.domain.TaxInfo;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class TaxInfoRepository {

    private SessionFactory sessionFactory;

    @Autowired
    public TaxInfoRepository(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<TaxInfo> findAll() {
        Session session = sessionFactory.getCurrentSession();
        TypedQuery<TaxInfo> query = session.createQuery("FROM TaxInfo", TaxInfo.class);
        return query.getResultList();
    }

    public List<TaxInfo> findById(int user_id) {
        Session session = sessionFactory.getCurrentSession();
        TypedQuery<TaxInfo> query = session.createQuery("SELECT ti FROM TaxInfo ti WHERE ti.user.userId = :userId", TaxInfo.class);
        query.setParameter("userId", user_id);
        if (query.getResultList().size() == 0) {
            return null;
        }
        return query.getResultList();
    }

    public void save(TaxInfo taxInfo) {
        Session session = sessionFactory.getCurrentSession();
        session.save(taxInfo);
    }

    public void update(TaxInfo taxInfo) {
        Session session = sessionFactory.getCurrentSession();
        session.update(taxInfo);
    }

    public void delete(TaxInfo taxInfo) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(taxInfo);
    }
}
