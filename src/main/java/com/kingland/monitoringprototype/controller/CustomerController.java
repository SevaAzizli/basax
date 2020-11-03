package com.kingland.monitoringprototype.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kingland.monitoringprototype.model.Customer;
import com.kingland.monitoringprototype.repository.CustomerRepository;


@RestController
@RequestMapping("/customers")
public class CustomerController {

    @Autowired
    private final CustomerRepository customerRepository;

    public CustomerController(final CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    @GetMapping(produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Customer> getCustomers() {

        return customerRepository.findAll();
    }

}
