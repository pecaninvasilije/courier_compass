package com.couriercompass.cc_backend.parcel_to_deliver;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ParcelService {

    @Autowired
    private ParcelRepository parcelRepository;

    public List<Parcel> getAllParcels() {
        return parcelRepository.findAll();
    }
}
