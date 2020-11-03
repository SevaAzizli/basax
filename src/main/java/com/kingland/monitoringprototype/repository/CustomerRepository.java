package com.kingland.monitoringprototype.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.kingland.monitoringprototype.model.Customer;


@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer> {

}
