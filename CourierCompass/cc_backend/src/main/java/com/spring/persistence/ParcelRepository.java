package com.spring.persistence;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.spring.domain.Parcel;

@Repository
public interface ParcelRepository extends JpaRepository<Parcel, Integer> {
    Parcel findByBarcode(int barcode);
}
