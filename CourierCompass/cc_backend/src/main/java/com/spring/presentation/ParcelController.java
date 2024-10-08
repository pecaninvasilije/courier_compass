package com.spring.presentation;

import com.spring.domain.Parcel;
import com.spring.service.ParcelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api/parcels")
public class ParcelController {
    @Autowired
    private ParcelService parcelService;

    @GetMapping
    public List<Parcel> getAllParcels() {
        return parcelService.getAllParcels();
    }

    @GetMapping("/{barcode}")
    public Parcel getParcelById(@PathVariable int barcode) {
        return parcelService.getParcelByBarcode(barcode);
    }
}