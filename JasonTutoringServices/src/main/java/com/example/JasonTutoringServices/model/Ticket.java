package com.example.JasonTutoringServices.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TICKET")
public class Ticket {

    @Id
    private int id;
    private boolean enrolled;
    private String course_name;
    private String phone_number;
    private String email;
    private String question;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public boolean isEnrolled() {
        return enrolled;
    }

    public void setEnrolled(boolean enrolled) {
        this.enrolled = enrolled;
    }

    public String getCoursename() {
        return course_name;
    }

    public void setCoursename(String course_name) {
        this.course_name = course_name;
    }

    public String getPhonenumber() {
        return phone_number;
    }

    public void setPhonenumber(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

}
