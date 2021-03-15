package com.cosmos.service;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import com.cosmos.dao.*;
import com.cosmos.dto.*;


@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao mdao;	
	
	@Override
	public int insert(Member member) {	
		
		String email =  member.getEid() + "@" + member.getDomain();
		member.setEmail(email);
		
		return mdao.insertMember(member);
	}
	

	@Override
	public int update(Member member) {
		
		String email =  member.getEid() + "@" + member.getDomain();
		member.setEmail(email);
	
		return mdao.updateMember(member);
	}

	@Override
	public int delete(String id) {		
		return mdao.deleteMember(id);
	}

	@Override
	public Member[] select() {		
		return mdao.getMemberList();
	}

	@Override
	public Map<String, String> loginService(Member member) {					
		return mdao.loginProc(member);		
	}

	@Override
	public int idDoubleCheck(String id) {
		
		return mdao.idDoubleCheck(id);
	}

	@Override
	public Member getMember(String id) {
		
		return mdao.getMember(id);
	}

}
