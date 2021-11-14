package com.Text;

import org.junit.Test;

import java.util.Locale;
import java.util.ResourceBundle;

public class I18nTest {

    @Test
    public void test01(){
        Locale locale= Locale.CHINA;
        ResourceBundle bundle = ResourceBundle.getBundle("i18n",locale);
        System.out.println("username = "+bundle.getString("username"));
        System.out.println("password = "+bundle.getString("password"));
        System.out.println("login = "+bundle.getString("login"));
        System.out.println("login_page = "+bundle.getString("login_page"));
    }
}
