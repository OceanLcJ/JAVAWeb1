package com.lcj.text;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.lcj.entity.Person;
import org.junit.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class JSONTest {

    @Test
    public void test01() {
        Person p = new Person(1L, "张三", 24);
        Gson gson = new Gson();
        String personStr = gson.toJson(p);
        System.out.println(personStr);
        Person person = gson.fromJson(personStr, Person.class);
        System.out.println(person);
    }

    @Test
    public void test02() {
        List<Person> people = new ArrayList<>();
        people.add(new Person(1L, "张三", 18));
        people.add(new Person(2L, "李四", 19));
        people.add(new Person(3L, "王五", 20));
        people.add(new Person(4L, "赵六", 21));
        Gson gson = new Gson();
        String personStr = gson.toJson(people);
        System.out.println(personStr);
        List<Person> list = gson.fromJson(personStr, new TypeToken<List<Person>>() {
        }.getType());
        System.out.println(list);
        System.out.println(list.get(1));
    }

    @Test
    public void test03() {
        Map<Integer, Person> map = new HashMap<>();
        map.put(1, new Person(1L, "张三", 18));
        map.put(2, new Person(2L, "李四", 19));
        map.put(3, new Person(3L, "王五", 20));
        map.put(4, new Person(4L, "赵六", 21));
        Gson gson = new Gson();
        //1.把map集合转成字符串
        String mapStr = gson.toJson(map);
        System.out.println(mapStr);
        //2.把字符串转成map集合
        Map<Integer, Person> map1 = gson.fromJson(mapStr, new TypeToken<Map<Integer, Person>>() {
        }.getType());
        System.out.println(map1);
    }
}
