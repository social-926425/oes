//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package oes.global;

import java.util.ArrayList;
import java.util.List;

public class Contant {
    public static final String ROLES_STUDENT = "学生";
    public static final String ROLES_TEACHER = "老师";
    public static final String ROLES_ADMIN = "管理员";
    public static final String CREATE = "创建";
    public static final String REVIEW = "批阅";
    public static final String FINISH = "交卷";
    public static final String OPTION = "单选题";
    public static final String OPTIONS = "多选题";
    public static final String SUBJECTIVE = "主观题";

    public Contant() {
    }

    public static List<String> getRoles() {
        List<String> list = new ArrayList();
        list.add("学生");
        list.add("老师");
        list.add("管理员");
        return list;
    }
    public static List<String> getStart(){
        List<String> list = new ArrayList();
        list.add("yes");
        list.add("no");
        return list;
    }

    public static List<String> getOption() {
        List<String> list = new ArrayList();
        list.add("单选题");
        list.add("多选题");
        return list;
    }
}
