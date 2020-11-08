package controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import businessLogics.BinhChonBL;
import businessLogics.LoaiBL;
import businessLogics.SanPhamBL;
import businessLogics.ThuongHieuBL;
import javaBeans.BinhChon;
import javaBeans.Loai;
import javaBeans.SanPham;
import javaBeans.ThuongHieu;

@Controller
public class ChiTietSanPhamController {

	@RequestMapping(path = "/chi-tiet-san-pham", method = RequestMethod.GET)
	public String chiTietSanPham(Model model, @RequestParam(name = "idsp") int idsp) {
		
		SanPham sp = SanPhamBL.docTheoIdSanPham(idsp);
		
		Loai loai = LoaiBL.docTheoIdLoai(sp.getIdLoai());
		
		ThuongHieu thuongHieu = ThuongHieuBL.docTheoIdThuongHieu(sp.getIdThuongHieu());
		
		List<SanPham> dssplq = SanPhamBL.docTheoIdThuongHieu(sp.getIdThuongHieu());
		List<SanPham> dsspytn = SanPhamBL.yeuThichNhat(8);
		List<Loai> dsl = LoaiBL.docTatCa();
		List<ThuongHieu> dsth = ThuongHieuBL.docTatCa();
		
		model.addAttribute("sp", sp);
		model.addAttribute("loai", loai);
		model.addAttribute("thuongHieu", thuongHieu);
		model.addAttribute("dssplq", dssplq);
		model.addAttribute("dsspytn", dsspytn);
		model.addAttribute("dsl", dsl);
		model.addAttribute("dsth", dsth);
		
		return "chiTietSanPham";
	}
	@RequestMapping(path = "/them-danh-gia", method = RequestMethod.POST)
	public String themDanhGia(Model model, BinhChon bc)	{
		
		BinhChonBL.them(bc);
		
		int idsp = bc.getIdSanPham();
		
		model.addAttribute("idsp", idsp);
		
		return "redirect:/chi-tiet-san-pham";
	}
	@RequestMapping(path = "/chi-tiet-san-pham-phu/{idsp}")
	public String chiTietSanPhamPhu(Model model, @PathVariable(name = "idsp") int idsp) {
		
		SanPham sp = SanPhamBL.docTheoIdSanPham(idsp);
		
		model.addAttribute("sp", sp);
		
		return "chiTietSanPhamPhu";
	}
}
