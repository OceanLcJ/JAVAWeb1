package com.Demo1029.servlet;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

public class Student {
    //普通属性
    private String name;
    //数组
    private Integer[] stuNo;
    //List集合
    private List<String> parentsNames;
    //Map集合
    private Map<String, Object> map;

    @Override
    public String toString() {
        return "Student{" +
                "name='" + name + '\'' +
                ", stuNo=" + Arrays.toString(stuNo) +
                ", parentsNames=" + parentsNames +
                ", map=" + map +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer[] getStuNo() {
        return stuNo;
    }

    public void setStuNo(Integer[] stuNo) {
        this.stuNo = stuNo;
    }

    public List<String> getParentsNames() {
        return parentsNames;
    }

    public void setParentsNames(List<String> parentsNames) {
        this.parentsNames = parentsNames;
    }

    public Map<String, Object> getMap() {
        return map;
    }

    public void setMap(Map<String, Object> map) {
        this.map = map;
    }
}
