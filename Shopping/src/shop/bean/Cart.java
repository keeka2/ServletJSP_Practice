package shop.bean;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import mybatis.vo.ProductVO;

public class Cart {
	/*
	 * 카트의 기능 분석
	 * 1) 제품을 담을 수 있는 공간 : List<ProductVO>
	 * 2) 제품 삭제
	 * 3) 제품 저장
	 * 4) 제품들을 배열로 반환
	 * 5) 검색
	 * 6) 수량 변경
	 * 7) 총액 계산
	 * */
	private Map<String, ProductVO> cart_map;
	private List<ProductVO> cart_list;
	
	public Cart() {
		cart_map = new HashMap<String, ProductVO>();
		cart_list=new ArrayList<ProductVO>();
	}
	

	public ProductVO searchProduct(String pnum) {
		return cart_map.get(pnum);
	}
	
	public ProductVO searchProduct2(String pnum) {	
		// 검색 속도를 높이기 위해 반복자를 사용
		Iterator<ProductVO> it = cart_list.iterator();
		//hasNext - True/False
		while(it.hasNext()) {
			ProductVO vo = it.next();
			if(vo.getP_num().equals(pnum)) {
				return vo;
			}
		}
		return null;
	}	
	
	public ProductVO[] getList() {
		ProductVO[] ar = null;
		if(cart_list!=null && cart_list.size()>0) {
			ar=new ProductVO[cart_list.size()];
			cart_list.toArray(ar);
		}
		return ar;
	}
	
	public boolean delProduct(String pnum) {
		ProductVO vo = searchProduct(pnum);
		if(vo != null) {
			cart_map.remove(pnum);
			cart_list.remove(vo);
			return true;
		}
		return false;
	}
	
	public void addProduct(ShopBean sb, String pnum) {
		ProductVO vo = searchProduct(pnum);
		if(vo!=null) {
			int q = vo.getQuant();
			vo.setQuant(q+1);
		}else{
			sb.setP_num(pnum);
			vo = sb.getProduct();
			System.out.println("add: "+vo.getP_name()+" "+vo.getQuant());
			vo.setQuant(1);
			cart_list.add(vo);
			cart_map.put(pnum,vo);
		}
		return;
	}
	
	public void changeCount(String pnum, int q) {
		ProductVO vo = searchProduct(pnum);
		if(vo != null) {
			vo.setQuant(q);
		}
		return;
	}
	
	
	
	
}
