package controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import businessLogics.LoaiBL;
import businessLogics.QuangCaoBL;
import businessLogics.SanPhamBL;
import businessLogics.ThuongHieuBL;
import javaBeans.Loai;
import javaBeans.QuangCao;
import javaBeans.SanPham;
import javaBeans.ThuongHieu;

@Controller
public class HomeController {
	@RequestMapping(path = {"/","/trang-chu"})
	public String home(Model model) {
		int size = 8;
		
		List<Loai> dsl = LoaiBL.docTatCa();
		List<QuangCao> dsqc = QuangCaoBL.docTatCa();
		List<ThuongHieu> dsth = ThuongHieuBL.docTatCa();
		List<SanPham> dsspgg = SanPhamBL.giamGiaNhieuNhat(size);
		List<SanPham> dsm = SanPhamBL.sanPhamMoi(size);
		List<SanPham> dsspbc = SanPhamBL.banChayNhat(size);
		
		model.addAttribute("dsl", dsl);
		model.addAttribute("dsqc", dsqc);
		model.addAttribute("dsth", dsth);
		model.addAttribute("dsspgg", dsspgg);
		model.addAttribute("dsspm", dsm);
		model.addAttribute("dsspbc", dsspbc);
		
		return "home";
	}
}
