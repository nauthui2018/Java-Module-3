package entity;

public class User {
    private String name;
    private String email;
    private String user;
    private String pass;

    public User() {
    }

    public User(String name, String email, String user, String pass) {
        this.name = name;
        this.email = email;
        this.user = user;
        this.pass = pass;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getUser() {
        return user;
    }

    public String getPass() {
        return pass;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
}
