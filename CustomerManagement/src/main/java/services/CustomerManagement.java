package services;

import model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CustomerManagement {
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
        Customer customer1 = customerList.get(id);
        customer1.setName(name);
        customer1.setAddress(address);
        customer1.setEmail(email);
    }

    public void delete() {

    }

    public ArrayList<Customer> getList() {
        ArrayList<Customer> list = new ArrayList<>(customerList.values());
        return list;
    }

}
