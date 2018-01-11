package com.oaec.ssm.po;

import java.util.Date;

public class Member {
    private Integer mid;
    private String mame;
    private String password;
    private String phone;
    private Double balance;
    private String gender;
    private String email;
    private Date time;


    public Member() {
    }

    @Override
    public String toString() {
        return "Member{" +
                "mid=" + mid +
                ", mame='" + mame + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", balance=" + balance +
                ", gender='" + gender + '\'' +
                ", email='" + email + '\'' +
                ", time=" + time +
                '}';
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getMame() {
        return mame;
    }

    public void setMame(String mame) {
        this.mame = mame;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
