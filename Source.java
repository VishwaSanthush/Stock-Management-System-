
import java.awt.Color;
import java.awt.Component;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JRadioButton;
import javax.swing.JSpinner;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableModel;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author acer
 */
public class Source {

    public int confirm(Component e, String message) {
        int x = 0;
        x = JOptionPane.showConfirmDialog(e, message, "Title", JOptionPane.YES_NO_OPTION, JOptionPane.WARNING_MESSAGE);
        return x;
    }

    public void close() {
        Runtime.getRuntime().exit(0);
    }

    public void Checkbox(JCheckBox box, JPasswordField password) {

        if (box.isSelected()) {
            password.setEchoChar((char) 0);

        } else {
            password.setEchoChar('*');
        }

    }

    public void uppercase(JTextField text) {
        switch (text.getText()) {
            case "":
                text.setText("");
                break;
            default:
                String name = text.getText();
                String result = name.substring(0, 1).toUpperCase() + name.substring(1);
                text.setText(result);
        }

    }

    public void uppercase1(JPasswordField password) {
        switch (password.getText()) {
            case "":
                password.setText("");
                break;
            default:
                String name = password.getText();
                String result = name.substring(0, 1).toUpperCase() + name.substring(1);
                password.setText(result);
        }

    }

    public void change(JPanel start, JPanel start1, JPanel start2, JPanel start3, JPanel start4, JPanel start6) {
        start.setVisible(true);
        start1.setVisible(false);
        start2.setVisible(false);
        start3.setVisible(false);
        start4.setVisible(false);
        
        start6.setVisible(false);

    }

    public static Connection mycon() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockdb", "root", "");
            return con;

        } catch (ClassNotFoundException | SQLException x) {
            System.out.println(x);
            return null;
        }
    }
    
     public void delete(JTextField del1, JTextField del2, JTextField del3, JTextField del4) {
        del1.setText("");
        del2.setText("");
        del3.setText("");
        del4.setText("");
       

    }

}
