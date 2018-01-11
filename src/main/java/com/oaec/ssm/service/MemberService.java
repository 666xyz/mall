package com.oaec.ssm.service;

import com.oaec.ssm.po.Member;

import java.util.List;
import java.util.Map;

public interface MemberService {
    /*查询全部*/
    public List<Member> queryAll();
    /*根据用户名和密码查询*/
    public Member query(String mname, String password);
    /*根据用户名查询*/
    public Member queryByName(String mname);
    /*根据手机号查询*/
    public Member queryByPhone(String phone);
    /*插入一条记录*/
    public int doInsert(Member member);
    /*修改一条数据，根据id*/
    public int doUpdate(Integer mid);
}
