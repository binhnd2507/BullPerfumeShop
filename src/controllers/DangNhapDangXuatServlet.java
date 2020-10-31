package controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import businessLogics.LoaiBL;
import businessLogics.NguoiDungBL;
import businessLogics.QuangCaoBL;
import businessLogics.SanPhamBL;
import businessLogics.ThuongHieuBL;
import javaBeans.Loai;
import javaBeans.NguoiDung;
import javaBeans.QuangCao;
import javaBeans.SanPham;
import javaBeans.ThuongHieu;

@Controller
public class DangNhapDangXuatServlet {
	
	@RequestMapping(path = "/dang-nhap")
	public String dangNhap(Model model) {
		List<Loai> dsl = LoaiBL.docTatCa();
		List<ThuongHieu> dsth = ThuongHieuBL.docTatCa();
		
		model.addAttribute("dsl", dsl);
		model.addAttribute("dsth", dsth);
		
		return "dangNhap";
	}
	@RequestMapping(path = "/dang-nhap", method = RequestMethod.POST)
	public String dangNhap(Model model, HttpServletRequest request, @RequestParam(name = "email") String email, @RequestParam(name = "password") String password) {
		
		NguoiDung nd = NguoiDungBL.docTheoEmailPassword(email, password);
		
		if(nd != null) {
			HttpSession session = request.getSession();
			session.setAttribute("nd", nd);
			String url = session.getAttribute("url").toString();
			return "redirect:/" + url;
		}
		
		return "dangNhap";
	}
	@RequestMapping(path = "/dang-xuat")
	public String dangXuat(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		if(session != null) {
			session.invalidate();
		}
		
		return "redirect:/trang-chu";
	}
}
