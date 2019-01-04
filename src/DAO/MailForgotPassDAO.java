package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.mysql.jdbc.Connection;

import BEAN.Member;

public class MailForgotPassDAO {
	public static ArrayList<Member> checkMemberForgotPassByEmail( Connection conn,Member member) {
		PreparedStatement ptmt=null;
		String sql =" select * from member";
		ArrayList<Member> list=new ArrayList<>();
		try {
			ptmt=conn.prepareStatement(sql);
			ResultSet rs=ptmt.executeQuery();
			while(rs.next()) {
				Member memberMail=new Member();
				String email=rs.getString("email");
				String username=rs.getString("username");
				String password=rs.getString("password");
				memberMail.setUsername(username);
				memberMail.setPassword(password);
				memberMail.setEmail(email);
				list.add(memberMail);
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	public static boolean sendMail(String to, String subject, String text) {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("thanhhienpupils@gmail.com", "HHHHHHHHH");
			}
		});
		try {
			Message message = new MimeMessage(session);
			message.setHeader("Content-Type", "text/plain; charset=UTF-8");
			message.setFrom(new InternetAddress("thanhhienpupils@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText(text);
			Transport.send(message);
		} catch (MessagingException e) {
			return false;
		}
		return true;
	}
}
