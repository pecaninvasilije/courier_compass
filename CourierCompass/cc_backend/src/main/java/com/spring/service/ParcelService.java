package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.domain.Parcel;
import com.spring.persistence.ParcelRepository;

import java.util.List;

@Service
public class ParcelService {

    @Autowired
    private ParcelRepository parcelRepository;

    public List<Parcel> getAllParcels() {
        return parcelRepository.findAll();
    }

    public Parcel getParcelByBarcode(int barcode) {
        return parcelRepository.findByBarcode(barcode);
    }
}
