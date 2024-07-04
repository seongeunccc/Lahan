package kr.hotel.lahan.dao;

import java.util.ArrayList;


import kr.hotel.lahan.dto.ProductDto;

public interface ProductDao {
	
	  public void upProduct(ProductDto productDto);
	  public ArrayList<ProductDto> list();

}
