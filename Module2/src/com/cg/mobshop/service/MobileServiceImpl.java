package com.cg.mobshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cg.mobshop.dao.MobileDao;
import com.cg.mobshop.dto.Mobiles;

@Service
@Transactional
public class MobileServiceImpl implements MobileService{
	@Autowired
	MobileDao dao;
	
	public MobileDao getDao() {
		return dao;
	}
	public void setDao(MobileDao dao) {
		this.dao = dao;
	}
	@Override
	public List<Mobiles> getAllMobiles() {
		return dao.getAllMobiles();
	}
	@Override
	public Mobiles getMobileDetails(int mobid) {
		// TODO Auto-generated method stub
		return dao.getMobileDetails(mobid);
	}
	@Override
	public int updateMobile(Mobiles mob) {
		// TODO Auto-generated method stub
		return dao.updateMobile(mob);
	}
	@Override
	public List<Mobiles> delete(int mobid) {
		return dao.delete(mobid);
	}
}
