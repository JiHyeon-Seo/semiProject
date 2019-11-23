/**
 *
 */
package member.controller;
 
import javax.mail.PasswordAuthentication;
import javax.mail.Authenticator;
 
/**
 * @author viper9
 *
 */
public class SMTPAuthenticator extends Authenticator {
    public SMTPAuthenticator() {
        super();
    }
 
    public PasswordAuthentication getPasswordAuthentication() {
        String username = "borabyul1103@gmail.com";
        String password = "seo@5587518e";
        return new PasswordAuthentication(username, password);
    }
};

