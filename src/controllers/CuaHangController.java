package controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import businessLogics.LoaiBL;
import businessLogics.SanPhamBL;
import businessLogics.ThuongHieuBL;
import businessLogics.Trang;
import javaBeans.Loai;
import javaBeans.SanPham;
import javaBeans.ThuongHieu;

@Controller
public class CuaHangController {
	
	@RequestMapping(path = "/cua-hang", method = RequestMethod.GET)
	public String cuaHang(Model model, HttpServletRequest request) {
		
		int tongSoTrang, vtDau, tongSoMauTin, viTriDau = 1, viTriCuoi, trang = 1, soSanPhamMoiTrang = 6;
		
		if(request.getParameter("trang") != null) {
			trang = Integer.parseInt(request.getParameter("trang"));
		}
		
		vtDau = Trang.timViTriDau(trang, soSanPhamMoiTrang);
		
		tongSoMauTin = SanPhamBL.tsmtTatCa();
		
		tongSoTrang = Trang.tongSoTrang(tongSoMauTin, soSanPhamMoiTrang);
		
		List<SanPham> dssp = SanPhamBL.phanTrangTatCaSanPham(vtDau, soSanPhamMoiTrang);
		
		if(tongSoTrang > 3) {
			if(trang == 1) {
				viTriDau = trang;
			}
			else {
				viTriDau = (trang + 1) < tongSoTrang ? trang - 1 : tongSoTrang - 2;
			}
			viTriCuoi = viTriDau + 2;
		}
		else {
			viTriDau = 1;
			viTriCuoi = tongSoTrang;
		}
		
		List<Loai> dsl = LoaiBL.docTatCa();
		List<ThuongHieu> dsth = ThuongHieuBL.docTatCa();
		
		model.addAttribute("dssp", dssp);
		model.addAttribute("tongSoTrang", tongSoTrang);
		model.addAttribute("trang", trang);
		model.addAttribute("viTriDau", viTriDau);
		model.addAttribute("viTriCuoi", viTriCuoi);
		model.addAttribute("dsl", dsl);
		model.addAttribute("dsth", dsth);
		
		return "cuaHang";
	}
	@RequestMapping(path = "/phan-trang-cua-hang", method = RequestMethod.GET)
	public String cuaHangAjax(Model model, HttpServletRequest request) {
		
		int tongSoTrang, vtDau, tongSoMauTin, viTriDau = 1, viTriCuoi, trang = 1, soSanPhamMoiTrang = 6;
		
		if(request.getParameter("trang") != null) {
			trang = Integer.parseInt(request.getParameter("trang"));
		}
		
		vtDau = Trang.timViTriDau(trang, soSanPhamMoiTrang);
		
		tongSoMauTin = SanPhamBL.tsmtTatCa();
		
		tongSoTrang = Trang.tongSoTrang(tongSoMauTin, soSanPhamMoiTrang);
		
		List<SanPham> dssp = SanPhamBL.phanTrangTatCaSanPham(vtDau, soSanPhamMoiTrang);
		
		if(tongSoTrang > 3) {
			if(trang == 1) {
				viTriDau = trang;
			}
			else {
				viTriDau = (trang + 1) < tongSoTrang ? trang - 1 : tongSoTrang - 2;
			}
			viTriCuoi = viTriDau + 2;
		}
		else {
			viTriDau = 1;
			viTriCuoi = tongSoTrang;
		}
		
		List<Loai> dsl = LoaiBL.docTatCa();
		List<ThuongHieu> dsth = ThuongHieuBL.docTatCa();
		
		model.addAttribute("dssp", dssp);
		model.addAttribute("tongSoTrang", tongSoTrang);
		model.addAttribute("trang", trang);
		model.addAttribute("viTriDau", viTriDau);
		model.addAttribute("viTriCuoi", viTriCuoi);
		model.addAttribute("dsl", dsl);
		model.addAttribute("dsth", dsth);
		
		return "cuaHangAjax";
	}
	@RequestMapping(path = "/cua-hang-theo-loai", method = RequestMethod.GET)
	public String cuaHang(Model model, @RequestParam(name = "idLoai") int idLoai, HttpServletRequest request) {
		
		int tongSoTrang, vtDau, tongSoMauTin, viTriDau = 1, viTriCuoi, trang = 1, soSanPhamMoiTrang = 6;
		
		if(request.getParameter("trang") != null) {
			trang = Integer.parseInt(request.getParameter("trang"));
		}
		
		vtDau = Trang.timViTriDau(trang, soSanPhamMoiTrang);
		
		tongSoMauTin = SanPhamBL.tsmtTheoIdLoai(idLoai);
		
		tongSoTrang = Trang.tongSoTrang(tongSoMauTin, soSanPhamMoiTrang);
		
		List<SanPham> dssp = SanPhamBL.phanTrangTheoLoai(idLoai, vtDau, soSanPhamMoiTrang);
		
		if(tongSoTrang > 3) {
			if(trang == 1) {
				viTriDau = trang;
			}
			else {
				viTriDau = (trang + 1) < tongSoTrang ? trang - 1 : tongSoTrang - 2;
			}
			viTriCuoi = viTriDau + 2;
		}
		else {
			viTriDau = 1;
			viTriCuoi = tongSoTrang;
		}
		
		List<Loai> dsl = LoaiBL.docTatCa();
		List<ThuongHieu> dsth = ThuongHieuBL.docTatCa();
		
		model.addAttribute("dssp", dssp);
		model.addAttribute("tongSoTrang", tongSoTrang);
		model.addAttribute("trang", trang);
		model.addAttribute("viTriDau", viTriDau);
		model.addAttribute("viTriCuoi", viTriCuoi);
		model.addAttribute("dsl", dsl);
		model.addAttribute("dsth", dsth);
		
		return "cuaHang";
	}
	@RequestMapping(path = "/phan-trang-cua-hang-theo-loai", method = RequestMethod.GET)
	public String cuaHangTheoLoaiAjax(Model model, @RequestParam(name = "idLoai") int idLoai, HttpServletRequest request) {
		
		int tongSoTrang, vtDau, tongSoMauTin, viTriDau = 1, viTriCuoi, trang = 1, soSanPhamMoiTrang = 6;
		
		if(request.getParameter("trang") != null) {
			trang = Integer.parseInt(request.getParameter("trang"));
		}
		
		vtDau = Trang.timViTriDau(trang, soSanPhamMoiTrang);
		
		tongSoMauTin = SanPhamBL.tsmtTheoIdLoai(idLoai);
		
		tongSoTrang = Trang.tongSoTrang(tongSoMauTin, soSanPhamMoiTrang);
		
		List<SanPham> dssp = SanPhamBL.phanTrangTheoLoai(idLoai, vtDau, soSanPhamMoiTrang);
		
		if(tongSoTrang > 3) {
			if(trang == 1) {
				viTriDau = trang;
			}
			else {
				viTriDau = (trang + 1) < tongSoTrang ? trang - 1 : tongSoTrang - 2;
			}
			viTriCuoi = viTriDau + 2;
		}
		else {
			viTriDau = 1;
			viTriCuoi = tongSoTrang;
		}
		
		List<Loai> dsl = LoaiBL.docTatCa();
		List<ThuongHieu> dsth = ThuongHieuBL.docTatCa();
		
		model.addAttribute("dssp", dssp);
		model.addAttribute("tongSoTrang", tongSoTrang);
		model.addAttribute("trang", trang);
		model.addAttribute("viTriDau", viTriDau);
		model.addAttribute("viTriCuoi", viTriCuoi);
		model.addAttribute("dsl", dsl);
		model.addAttribute("dsth", dsth);
		
		return "cuaHangAjax";
	}
	@RequestMapping(path = "/cua-hang-theo-loai-thuong-hieu", method = RequestMethod.GET)
	public String cuaHang(Model model, @RequestParam(name = "idLoai") int idLoai, @RequestParam(name = "idThuongHieu") int idThuongHieu, HttpServletRequest request) {
		
		int tongSoTrang, vtDau, tongSoMauTin, viTriDau = 1, viTriCuoi, trang = 1, soSanPhamMoiTrang = 6;
		
		if(request.getParameter("trang") != null) {
			trang = Integer.parseInt(request.getParameter("trang"));
		}
		
		vtDau = Trang.timViTriDau(trang, soSanPhamMoiTrang);
		
		tongSoMauTin = SanPhamBL.tsmtTheoLoaiThuongHieu(idLoai, idThuongHieu);
		
		tongSoTrang = Trang.tongSoTrang(tongSoMauTin, soSanPhamMoiTrang);
		
		List<SanPham> dssp = SanPhamBL.phanTrangTheoLoaiThuongHieu(idLoai, idThuongHieu, vtDau, soSanPhamMoiTrang);
		
		if(tongSoTrang > 3) {
			if(trang == 1) {
				viTriDau = trang;
			}
			else {
				viTriDau = (trang + 1) < tongSoTrang ? trang - 1 : tongSoTrang - 2;
			}
			viTriCuoi = viTriDau + 2;
		}
		else {
			viTriDau = 1;
			viTriCuoi = tongSoTrang;
		}
		
		List<Loai> dsl = LoaiBL.docTatCa();
		List<ThuongHieu> dsth = ThuongHieuBL.docTatCa();
		
		model.addAttribute("dssp", dssp);
		model.addAttribute("tongSoTrang", tongSoTrang);
		model.addAttribute("trang", trang);
		model.addAttribute("viTriDau", viTriDau);
		model.addAttribute("viTriCuoi", viTriCuoi);
		model.addAttribute("dsl", dsl);
		model.addAttribute("dsth", dsth);
		
		return "cuaHang";
	}
	@RequestMapping(path = "/phan-trang-cua-hang-theo-loai-thuong-hieu", method = RequestMethod.GET)
	public String cuaHangTheoLoaiThuongHieuAjax(Model model, @RequestParam(name = "idLoai") int idLoai, @RequestParam(name = "idThuongHieu") int idThuongHieu, HttpServletRequest request) {
		
		int tongSoTrang, vtDau, tongSoMauTin, viTriDau = 1, viTriCuoi, trang = 1, soSanPhamMoiTrang = 6;
		
		if(request.getParameter("trang") != null) {
			trang = Integer.parseInt(request.getParameter("trang"));
		}
		
		vtDau = Trang.timViTriDau(trang, soSanPhamMoiTrang);
		
		tongSoMauTin = SanPhamBL.tsmtTheoLoaiThuongHieu(idLoai, idThuongHieu);
		
		tongSoTrang = Trang.tongSoTrang(tongSoMauTin, soSanPhamMoiTrang);
		
		List<SanPham> dssp = SanPhamBL.phanTrangTheoLoaiThuongHieu(idLoai, idThuongHieu, vtDau, soSanPhamMoiTrang);
		
		if(tongSoTrang > 3) {
			if(trang == 1) {
				viTriDau = trang;
			}
			else {
				viTriDau = (trang + 1) < tongSoTrang ? trang - 1 : tongSoTrang - 2;
			}
			viTriCuoi = viTriDau + 2;
		}
		else {
			viTriDau = 1;
			viTriCuoi = tongSoTrang;
		}
		
		List<Loai> dsl = LoaiBL.docTatCa();
		List<ThuongHieu> dsth = ThuongHieuBL.docTatCa();
		
		model.addAttribute("dssp", dssp);
		model.addAttribute("tongSoTrang", tongSoTrang);
		model.addAttribute("trang", trang);
		model.addAttribute("viTriDau", viTriDau);
		model.addAttribute("viTriCuoi", viTriCuoi);
		model.addAttribute("dsl", dsl);
		model.addAttribute("dsth", dsth);
		
		return "cuaHangAjax";
	}
	@RequestMapping(path = "/tim-kiem-san-pham", method = RequestMethod.POST)
	public String timKiem(Model model, @RequestParam(name = "timKiem") String tenSanPham) {
		
		List<SanPham> dssp = SanPhamBL.timTheoTenSanPham(tenSanPham);
		List<Loai> dsl = LoaiBL.docTatCa();
		List<ThuongHieu> dsth = ThuongHieuBL.docTatCa();
		
		model.addAttribute("dssp", dssp);
		model.addAttribute("dsl", dsl);
		model.addAttribute("dsth", dsth);
		
		return "cuaHang";
	}
}
