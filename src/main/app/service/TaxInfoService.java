package main.app.service;

import main.app.domain.TaxInfo;
import main.app.repository.TaxInfoRepository;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class TaxInfoService {
    private TaxInfoRepository taxInfoRepository;

    public TaxInfoService(TaxInfoRepository taxInfoRepository) {
        this.taxInfoRepository = taxInfoRepository;
    }

    public List<TaxInfo> findAll() {
        return taxInfoRepository.findAll();
    }

    public TaxInfo findById(int id) {
        return taxInfoRepository.findById(id);
    }

    public void save(TaxInfo taxInfo) {
        taxInfoRepository.save(taxInfo);
    }

    public void update(TaxInfo taxInfo) {
        taxInfoRepository.update(taxInfo);
    }

    public void delete(TaxInfo taxInfo) {
        taxInfoRepository.delete(taxInfo);
    }
}