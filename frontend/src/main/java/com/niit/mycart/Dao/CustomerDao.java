package com.niit.mycart.Dao;

import com.niit.mycart.model.Customer;

import java.util.List;

public interface CustomerDao {

    void addCustomer (Customer customer);

    Customer getCustomerById (int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername (String username);

}