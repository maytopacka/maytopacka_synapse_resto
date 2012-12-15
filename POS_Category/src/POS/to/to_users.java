/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package POS.to;

/**
 *
 * @author u2
 */
public class to_users {

    public static String username1;
    public static String user_level1;

    public to_users(String username, String user_level) {
        username1 = username;
        user_level1 = user_level;
    }

    public String getUser_level() {
        return user_level1;
    }

    public String getUsername() {
        return username1;
    }

    @Override
    public String toString() {
        return "to_users{" + "username=" + username1 + ", user_level=" + user_level1 + '}';
    }

    public static String get_lvl() {
        return username1;
    }

    public static String get_user() {
        return username1;
    }

    public static void setUser_level1(String user_level1) {
        to_users.user_level1 = user_level1;
    }

    public static void setUsername1(String username1) {
        to_users.username1 = username1;
    }

    
    public static class u {

        public final String username;
        public final String user_level;
        public final String name;

        public u(String username, String user_level, String name) {
            this.username = username;
            this.user_level = user_level;
            this.name = name;
        }

        
    }
}
