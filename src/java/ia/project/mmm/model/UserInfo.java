package ia.project.mmm.model;

/**
 *
 * @author Mohamed Kamal
 */
public class UserInfo {
    private String username;
    private String fullname;

    public UserInfo() {
    }

    public UserInfo(String username, String fullname) {
        this.username = username;
        this.fullname = fullname;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }
    
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

}
