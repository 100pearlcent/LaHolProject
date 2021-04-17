package com.kh.lahol.admin.model.service;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.lahol.admin.model.dao.AdminDao;
import com.kh.lahol.member.model.vo.Coupon;
import com.kh.lahol.member.model.vo.Member;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDao adminDao;
	
	@Override
	public List<Member> selectNormalList() {	
		return adminDao.selectNormalList();
	}

	@Override
	public List<Member> selectPartnerList() {
		return adminDao.selectPartnerList();
	}

	@Override
	public List<Coupon> selectCouponByDate(String date) {
		return adminDao.selectCouponByDate(date);
	}

	@Override
	public List<Coupon> selectCouponByTerm(Map<String, Object> dates) {
		return adminDao.selectCouponByTerm(dates);
	}

}
