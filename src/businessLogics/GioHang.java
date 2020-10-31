package businessLogics;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

import javaBeans.SanPham;
import javaBeans.SanPhamMua;

public class GioHang {
	private Hashtable<Integer, Integer> dsh;
	public GioHang() {
		dsh = new Hashtable<Integer, Integer>();
	}
	public void them(int idsp, int sl) {
		if(dsh.containsKey(idsp)) {
			dsh.replace(idsp, dsh.get(idsp) + sl);
		}
		else {
			dsh.put(idsp, sl);
		}
	}
	public void sua(String[] slm) {
		List<SanPhamMua> ds = danhSachSanPhamMua();
		for(int i = 0; i < ds.size(); i++) {
			if(dsh.containsKey(ds.get(i).getId())) {
				dsh.replace(ds.get(i).getId(), Integer.parseInt(slm[i]));
			}
		}
	}
	public void xoa(int idsp) {
		if(dsh.containsKey(idsp)) {
			dsh.remove(idsp);
		}
	}
	public void xoaToanBoSanPham() {
		dsh.clear();
	}
	public int soMatHang() {
		return dsh.size();
	}
	public double tongTien() {
		double tt = 0;
		for(int idsp : dsh.keySet()) {
			SanPham sp = SanPhamBL.docTheoIdSanPham(idsp);
			tt += sp.getDonGiaKM() * dsh.get(idsp);
		}
		return tt;
	}
	public List<SanPhamMua> danhSachSanPhamMua(){
		List<SanPhamMua> dsspm = new ArrayList<SanPhamMua>();
		for(int idsp : dsh.keySet()) {
			SanPham sp = SanPhamBL.docTheoIdSanPham(idsp);
			SanPhamMua spm = new SanPhamMua();
			spm.setId(sp.getId());
			spm.setTenSanPham(sp.getTenSanPham());
			spm.setMoTa(sp.getMoTa());
			spm.setHinhAnh(sp.getHinhAnh());
			spm.setDonGia(sp.getDonGia());
			spm.setDonGiaKM(sp.getDonGiaKM());
			spm.setSoLuong(sp.getSoLuong());
			spm.setNgayTao(sp.getNgayTao());
			spm.setHienThi(sp.getHienThi());
			spm.setIdLoai(sp.getIdLoai());
			spm.setIdThuongHieu(sp.getIdThuongHieu());
			
			spm.setSoLuongMua(dsh.get(idsp));
			
			dsspm.add(spm);
		}
		return dsspm;
	}
}
