package main.app.service;

import main.app.domain.TaxInfo;
import main.app.repository.TaxInfoRepository;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class TaxInfoService {
    private static TaxInfoRepository taxInfoRepository;

    public TaxInfoService(TaxInfoRepository taxInfoRepository) {
        this.taxInfoRepository = taxInfoRepository;
    }

    public static List<TaxInfo> findAll() {
        return taxInfoRepository.findAll();
    }

    public static TaxInfo findById(int id) {
        return taxInfoRepository.findById(id);
    }

    public static void save(TaxInfo taxInfo) {
        taxInfoRepository.save(taxInfo);
    }

    public static void update(TaxInfo taxInfo) {
        taxInfoRepository.update(taxInfo);
    }

    public static void delete(TaxInfo taxInfo) {
        taxInfoRepository.delete(taxInfo);
    }
}