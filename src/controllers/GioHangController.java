package controllers;

import java.io.IOException;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import businessLogics.GioHang;
import businessLogics.LoaiBL;
import businessLogics.SanPhamBL;
import businessLogics.ThuongHieuBL;
import javaBeans.Loai;
import javaBeans.SanPham;
import javaBeans.ThuongHieu;

@Controller
public class GioHangController {

	@RequestMapping(path = "/gio-hang")
	public String gioHang(Model model) {
		
		List<Loai> dsl = LoaiBL.docTatCa();
		List<ThuongHieu> dsth = ThuongHieuBL.docTatCa();
		List<SanPham> dsspbc = SanPhamBL.banChayNhat(4);
		
		model.addAttribute("dsl", dsl);
		model.addAttribute("dsth", dsth);
		model.addAttribute("dsspbc", dsspbc);
		
		return "gioHang";
	}
	@RequestMapping(path = "/them-gio-hang", method = RequestMethod.GET)
	public void themGioHang(Model model, @RequestParam(name = "idsp") int idsp, @RequestParam(name = "sl") int sl, HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		HttpSession session = request.getSession();
		GioHang gioHang = (GioHang) session.getAttribute("gioHang");
		
		if(gioHang == null) {
			gioHang = new GioHang();
			session.setAttribute("gioHang", gioHang);
		}
		
		gioHang.them(idsp, sl);
		
		Locale lc = new Locale("vi", "VN");
		NumberFormat nf = NumberFormat.getInstance(lc);
		
		String tongTien = nf.format(gioHang.tongTien());
		int soMatHang = gioHang.soMatHang();
		
		response.getWriter().print(soMatHang+","+tongTien+"/");
	}
	@RequestMapping(path = "/them-gio-hang", method = RequestMethod.POST)
	public String themGioHang(Model model, HttpServletRequest request, @RequestParam(name = "idsp") int idsp, @RequestParam(name = "qty") int slm) {
		
		List<Loai> dsl = LoaiBL.docTatCa();
		List<ThuongHieu> dsth = ThuongHieuBL.docTatCa();
		List<SanPham> dsspbc = SanPhamBL.banChayNhat(4);
		
		model.addAttribute("dsl", dsl);
		model.addAttribute("dsth", dsth);
		model.addAttribute("dsspbc", dsspbc);
		
		HttpSession session = request.getSession();
		GioHang gioHang = (GioHang) session.getAttribute("gioHang");
		
		if(gioHang == null) {
			gioHang = new GioHang();
			session.setAttribute("gioHang", gioHang);
		}
		
		gioHang.them(idsp, slm);
		
		return "redirect:/gio-hang";
	}
	@RequestMapping(path = "/cap-nhat-gio-hang", method = RequestMethod.POST)
	public String capNhat(Model model, HttpServletRequest request, @RequestParam(name = "slMua") String[] slm) {
		HttpSession session = request.getSession();
		GioHang gioHang = (GioHang) session.getAttribute("gioHang");
		
		if(gioHang != null) {
			gioHang.sua(slm);
			session.setAttribute("gioHang", gioHang);
		}
		List<Loai> dsl = LoaiBL.docTatCa();
		List<ThuongHieu> dsth = ThuongHieuBL.docTatCa();
		List<SanPham> dsspbc = SanPhamBL.banChayNhat(4);
		
		model.addAttribute("dsl", dsl);
		model.addAttribute("dsth", dsth);
		model.addAttribute("dsspbc", dsspbc);
		
		return "gioHang";
	}
	@RequestMapping(path = "/xoa-san-pham")
	public void xoaSanPham(Model model, @RequestParam(name = "idsp") int idsp, HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		GioHang gioHang = (GioHang) session.getAttribute("gioHang");
		
		if(gioHang != null) {
			gioHang.xoa(idsp);
			session.setAttribute("gioHang", gioHang);
		}
		
		Locale lc = new Locale("vi", "VN");
		NumberFormat nf = NumberFormat.getInstance(lc);
		
		String tongTien = nf.format(gioHang.tongTien());
		int soMatHang = gioHang.soMatHang();
		
		try {
			response.getWriter().print(tongTien + "," + soMatHang + ";" + idsp);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	@RequestMapping(path = "/xoa-toan-bo", method = RequestMethod.POST)
	public String xoaToanBo(Model model, HttpServletRequest request) {
		List<Loai> dsl = LoaiBL.docTatCa();
		List<ThuongHieu> dsth = ThuongHieuBL.docTatCa();
		List<SanPham> dsspbc = SanPhamBL.banChayNhat(4);
		
		model.addAttribute("dsl", dsl);
		model.addAttribute("dsth", dsth);
		model.addAttribute("dsspbc", dsspbc);
		
		HttpSession session = request.getSession();
		GioHang gioHang = (GioHang) session.getAttribute("gioHang");
		
		if(gioHang != null) {
			gioHang.xoaToanBoSanPham();
			session.setAttribute("gioHang", gioHang);
		}
		return "gioHang";
	}
}
