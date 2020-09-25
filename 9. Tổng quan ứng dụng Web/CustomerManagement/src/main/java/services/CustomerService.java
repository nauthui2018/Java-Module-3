package services;

import model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CustomerService {
    public static int totalCustomer = 0;
    public static HashMap<Integer, Customer> customerList = new HashMap<Integer, Customer>();
    Customer customer = new Customer();

    public void add(String name, String address, String email) {
        Customer newCustomer = new Customer();
        totalCustomer ++;
        newCustomer.setName(name);
        newCustomer.setAddress(address);
        newCustomer.setEmail(email);
        newCustomer.setId(totalCustomer);
        customerList.put(totalCustomer, newCustomer);
    }

    public void update(int id, String name, String address, String email) {
        Customer current = getCustomerByID(id);
        Customer replace = new Customer(name, address, email, id);
        customerList.replace(id, current, replace);
    }

    public void delete(int id) {
        customerList.remove(id);
    }

    public Customer getCustomerByID(int id) {
        return customerList.get(id);
    }

}
