package com.kh.lahol.mypage.normal.model.service;

import java.util.List;

import com.kh.lahol.member.model.vo.Member;
import com.kh.lahol.mypage.common.PageInfo;
import com.kh.lahol.mypage.normal.model.vo.ClassDetail;
import com.kh.lahol.mypage.normal.model.vo.Coupon;
import com.kh.lahol.mypage.normal.model.vo.PayList;
import com.kh.lahol.mypage.partner.model.vo.Search;

public interface nMypageService {

	int updateMember(Member m);

	Member selectMember(Member m);

	int deleteMember(String id);

	int selectCouponCount(String id);

	List<Coupon> selectCouponList(String id, PageInfo pi);

	int selectPayListCount(String id);

	List<PayList> selectPayList(String id, PageInfo pi);

	int searchPaymentCount(Search search);

	List<PayList> searchPaymentList(Search search, PageInfo pi);

	ClassDetail selectClass(String pay_no);

}
