package controllers;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import businessLogics.SanPhamBL;
import javaBeans.SanPham;

@RestController
public class SanPhamRestApiController {
	@GetMapping(path = "/san-pham-api")
	public List<SanPham> sanPhamList(){
		List<SanPham> ds = SanPhamBL.docTatCa();
		return ds;
	}
	@GetMapping(path = "/san-pham-api/{id}")
	public SanPham sanPham(@PathVariable(name = "id")int idsp) {
		return SanPhamBL.docTheoIdSanPham(idsp);
	}
	@PostMapping(path = "/them-san-pham-api")
	public int them(@RequestBody SanPham sp) {
		return SanPhamBL.them(sp);
	}
	@PutMapping(path = "/sua-san-pham-api")
	public int sua(@RequestBody SanPham sp) {
		return SanPhamBL.sua(sp);
	}
	@DeleteMapping(path = "/xoa-san-pham-api")
	public int xoa(@RequestBody int idsp) {
		return SanPhamBL.xoa(idsp);
	}
}
