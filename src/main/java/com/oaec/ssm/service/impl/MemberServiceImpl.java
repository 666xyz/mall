package com.oaec.ssm.service.impl;

import com.oaec.ssm.dao.MemberDao;
import com.oaec.ssm.po.Member;
import com.oaec.ssm.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("memberService")
public class MemberServiceImpl implements MemberService {

    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private MemberDao memberDao;


    @Override
    public List<Member> queryAll() {
        List<Member> members = memberDao.queryAll();
        return members;
    }

    @Override
    public Member query(String mname, String password) {
        Member query = memberDao.query(mname, password);
        return query;
    }

    @Override
    public Member queryByName(String mname) {
        Member byName = memberDao.queryByName(mname);
        return byName;
    }

    @Override
    public Member queryByPhone(String phone) {
        Member byPhone = memberDao.queryByPhone(phone);
        return byPhone;
    }

    @Override
    public int doInsert(Member member) {
        int i = memberDao.doInsert(member);
        return i;
    }

    @Override
    public int doUpdate(Integer mid) {
        int i = memberDao.doUpdate(mid);
        return i;
    }
}
