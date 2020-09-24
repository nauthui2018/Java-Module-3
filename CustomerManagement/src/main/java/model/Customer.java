package model;

public class Customer {
    private String name;
    private String address;
    private String email;
    private int id;

    public Customer() {
    }

    public Customer(String name, String address, String email, int id) {
        this.name = name;
        this.address = address;
        this.email = email;
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public String getEmail() {
        return email;
    }

    public int getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setId(int id) {
        this.id = id;
    }
}