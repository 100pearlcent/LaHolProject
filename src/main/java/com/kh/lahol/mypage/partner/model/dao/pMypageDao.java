package com.kh.lahol.mypage.partner.model.dao;

import java.util.List;

import com.kh.lahol.member.model.vo.Member;
import com.kh.lahol.mypage.common.PageInfo;
import com.kh.lahol.mypage.partner.model.vo.Ad;
import com.kh.lahol.mypage.partner.model.vo.Payment;

public interface pMypageDao {

	Member selectMember(Member m, String query);

	int deleteMember(String id);

	int updateMember(Member m);

	int insertAd(Ad ad);

	int insertPayment(Payment pay);

	int adListCount(String id);

	List<Ad> selectAdList(String id, PageInfo pi);

	Ad selectAdByCode(String ad_code);

	int updateAd(Ad ad);

}
