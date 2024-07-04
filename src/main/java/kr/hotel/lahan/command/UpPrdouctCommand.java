package kr.hotel.lahan.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.hotel.lahan.dao.ProductDao;
import kr.hotel.lahan.dto.ProductDto;
import kr.hotel.lahan.util.Constant;

@Component
public class UpPrdouctCommand implements LCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		
		System.out.println("상품등록 익스큐트");
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String realFolder="";
   		String saveFolder="boardupload";
   		
   		int fileSize=5*1024*1024;
   		
   		realFolder=request.getRealPath(saveFolder);
   		
   		boolean result=false;
   		
   		try{
   			MultipartRequest multi=null;
   			multi=new MultipartRequest(request,
   					realFolder,
   					fileSize,
   					"UTF-8",
   					new DefaultFileRenamePolicy());
   			
   			ProductDto productDto = new ProductDto();
   			productDto.setProId(multi.getParameter("proId"));
   			productDto.setProName(multi.getParameter("proName"));
   			productDto.setProTitle(multi.getParameter("proTitle"));
   			productDto.setProScript(multi.getParameter("proScript"));
   			productDto.setProQuant(Integer.parseInt(multi.getParameter("proQuant")));
   			productDto.setProPrice(Integer.parseInt(multi.getParameter("proPrice")));
   			productDto.setProPriceDis(Integer.parseInt(multi.getParameter("proPriceDis")));
   			productDto.setProFile(
	   				multi.getFilesystemName((String)multi.getFileNames().nextElement()));
   			productDto.setProCate(multi.getParameter("proCate"));
   			
   			System.out.println(productDto.getProId());
   			
   			ProductDao dao = Constant.productDao;
   			
   			dao.upProduct(productDto);
		System.out.println("등록성공");
	}catch(Exception ex){
			ex.printStackTrace();
		}

 }
} 