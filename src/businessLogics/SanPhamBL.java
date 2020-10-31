package businessLogics;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javaBeans.SanPham;

public class SanPhamBL {
	private static JdbcTemplate jdbc = CSDL.getJdbc();
	private static class AnhXaDong implements RowMapper<SanPham>{
		@Override
		public SanPham mapRow(ResultSet rs, int arg1) throws SQLException {
			SanPham sp = new SanPham();
			sp.setId(rs.getInt("id"));
			sp.setTenSanPham(rs.getString("tensanpham"));
			sp.setMoTa(rs.getString("mota"));
			sp.setHinhAnh(rs.getString("hinhanh"));
			sp.setDonGia(rs.getDouble("dongia"));
			sp.setDonGiaKM(rs.getDouble("dongiaKM"));
			sp.setSoLuong(rs.getInt("soluong"));
			sp.setNgayTao(rs.getDate("ngaytao"));
			sp.setHienThi(rs.getInt("hienthi"));
			sp.setIdLoai(rs.getInt("id_loai"));
			sp.setIdThuongHieu(rs.getInt("id_thuonghieu"));
			return sp;
		}
	}
	public static List<SanPham> docTatCa(){
		String sql = "select * from sanpham";
		return jdbc.query(sql, new AnhXaDong());
	}
	public static SanPham docTheoIdSanPham(int idsp) {
		String sql = "select * from sanpham where id = ?";
		return jdbc.queryForObject(sql, new AnhXaDong(), idsp);
	}
	public static List<SanPham> docTheoIdThuongHieu(int idThuongHieu) {
		String sql = "select * from sanpham where id_thuonghieu = ?";
		return jdbc.query(sql, new AnhXaDong(), idThuongHieu);
	}
	public static List<SanPham> timTheoTenSanPham(String tenSanPham){
		String sql = "select * from sanpham where tensanpham like ?";
		return jdbc.query(sql, new AnhXaDong(), "%"+tenSanPham+"%");
	}
	public static int them(SanPham sp) {
		String sql = "insert into sanpham (tensanpham, mota, hinhanh, dongia, dongiaKM, soluong, ngaytao, hienthi, id_loai, id_thuonghieu) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		return jdbc.update(sql, sp.getTenSanPham(), sp.getMoTa(), sp.getHinhAnh(), sp.getDonGia(), sp.getDonGiaKM(), sp.getSoLuong(), sp.getNgayTao(), sp.getHienThi(), sp.getIdLoai(), sp.getIdThuongHieu());
	}
	public static int sua(SanPham sp) {
		String sql = "update sanpham set tensanpham = ?, mota = ?, hinhanh = ?, dongia = ?, dongiaKM = ?, soluong = ?, ngaytao = ?, hienthi = ?, id_loai = ?, id_thuonghieu = ? where id = ?";
		return jdbc.update(sql, sp.getTenSanPham(), sp.getMoTa(), sp.getHinhAnh(), sp.getDonGia(), sp.getDonGiaKM(), sp.getSoLuong(), sp.getNgayTao(), sp.getHienThi(), sp.getIdLoai(), sp.getIdThuongHieu(), sp.getId());
	}
	public static int xoa(int idsp) {
		String sql = "delete from sanpham where id = ?";
		return jdbc.update(sql, idsp);
	}
	public static List<SanPham> giamGiaNhieuNhat(int size){
		String sql = "SELECT sp.*, MAX(sp.dongia - sp.dongiaKM) AS ggn FROM sanpham sp "
				+ "GROUP BY sp.id ORDER BY ggn DESC LIMIT 0, "+size;
		return jdbc.query(sql, new AnhXaDong());
	}
	public static List<SanPham> banChayNhat(int size){
		String sql = "SELECT sp.*, SUM(ct.soluong) AS tsl FROM sanpham sp "
				+ "INNER JOIN chitietdonhang ct ON ct.id_sanpham = sp.id "
				+ "GROUP BY ct.id_sanpham ORDER BY tsl DESC LIMIT 0, "+size;
		return jdbc.query(sql, new AnhXaDong());
	}
	public static List<SanPham> sanPhamMoi(int size){
		String sql = "SELECT * FROM sanpham ORDER BY ngaytao DESC LIMIT 0, "+size;
		return jdbc.query(sql, new AnhXaDong());
	}
	public static List<SanPham> yeuThichNhat(int size){
		String sql = "SELECT sp.*, MAX(bc.diem) AS ytn from sanpham sp "
				+ "INNER JOIN binhchon bc on bc.id_sanpham = sp.id "
				+ "GROUP BY sp.id ORDER BY ytn DESC LIMIT 0, "+size;
		return jdbc.query(sql, new AnhXaDong());
	}
	public static int tsmtTatCa() {
		String sql = "select count(*) as total from sanpham";
		return jdbc.queryForObject(sql, new RowMapper<Integer>(){
			@Override
			public Integer mapRow(ResultSet rs, int arg1) throws SQLException {
				return rs.getInt("total");
			}
		});
	}
	public static int tsmtTheoIdLoai(int idLoai) {
		String sql = "select count(*) as total from sanpham where id_loai = "+idLoai;
		return jdbc.queryForObject(sql, new RowMapper<Integer>() {
			@Override
			public Integer mapRow(ResultSet rs, int arg1) throws SQLException {
				return rs.getInt("total");
			}
		});
	}
	public static int tsmtTheoLoaiThuongHieu(int idLoai, int idThuongHieu) {
		String sql = "select count(*) as total from sanpham where id_loai = ? and id_thuonghieu = ?";
		return jdbc.queryForObject(sql, new RowMapper<Integer>() {
			@Override
			public Integer mapRow(ResultSet rs, int arg1) throws SQLException {
				return rs.getInt("total");
			}
		}, idLoai, idThuongHieu);
	}
	public static List<SanPham> phanTrangTatCaSanPham(int vtDau, int soSanPhamMoiTrang){
		String sql = "select * from sanpham limit ?, ?";
		return jdbc.query(sql, new AnhXaDong(), vtDau, soSanPhamMoiTrang);
	}
	public static List<SanPham> phanTrangTheoLoai(int idLoai, int vtDau, int soSanPhamMoiTrang){
		String sql = "select * from sanpham where id_loai = ? limit ?, ?";
		return jdbc.query(sql, new AnhXaDong(), idLoai, vtDau, soSanPhamMoiTrang);
	}
	public static List<SanPham> phanTrangTheoLoaiThuongHieu(int idLoai, int idThuongHieu, int vtDau, int soSanPhamMoiTrang){
		String sql = "select * from sanpham where id_loai = ? and id_thuonghieu = ? limit ?, ?";
		return jdbc.query(sql, new AnhXaDong(), idLoai, idThuongHieu, vtDau, soSanPhamMoiTrang);
	}
	
	//Test
	public static void main(String[] args) {
		//phương thức đọc tất cả sản phẩm
		List<SanPham> dssp = docTatCa();
		for (SanPham sanPham : dssp) {
			System.out.println(sanPham.getTenSanPham());
		}
		System.out.println("--------------------------------");
		
		//phương thức đọc các sản phẩm giảm giá nhiều nhất
		List<SanPham> dsgg = giamGiaNhieuNhat(8);
		for (SanPham sanPham : dsgg) {
			System.out.println(sanPham.getTenSanPham());
		}
		System.out.println("--------------------------------");
		
		//phương thức đọc các sản phẩm bán chạy nhất
		List<SanPham> dsbc = banChayNhat(8);
		for (SanPham sanPham : dsbc) {
			System.out.println(sanPham.getTenSanPham());
		}
		System.out.println("--------------------------------");
		
		//phương thức đọc các sản phẩm mới nhất
		List<SanPham> dsm = sanPhamMoi(8);
		for (SanPham sanPham : dsm) {
			System.out.println(sanPham.getTenSanPham());
		}
		System.out.println("--------------------------------");
		
		//phương thức đọc theo id sản phẩm
		SanPham sp = docTheoIdSanPham(4);
		System.out.println(sp.getTenSanPham());
		System.out.println("--------------------------------");
		
		//phương thức đọc số mẫu tin cột sản phẩm
		int total = tsmtTatCa();
		System.out.println(total);
		System.out.println("--------------------------------");
		
		//phương thức đọc số mẫu tin cột sản phẩm theo Loại
		int total2 = tsmtTheoIdLoai(1);
		System.out.println(total2);
		System.out.println("--------------------------------");
		
		//phương thức đọc số mẫu tin cột sản phẩm theo Loại, Thương hiệu
		int total3 = tsmtTheoLoaiThuongHieu(1, 1);
		System.out.println(total3);
		System.out.println("--------------------------------");
		
		//phương thức phân trang cho tất cả sản phẩm
		List<SanPham> ds1 = phanTrangTatCaSanPham(2, 21);
		for (SanPham sanPham : ds1) {
			System.out.println(sanPham.getTenSanPham());
		}
		System.out.println("--------------------------------");
		
		//phương thức phân trang cho sản phẩm theo Loại
		List<SanPham> ds2 = phanTrangTheoLoai(1, 2, 15);
		for (SanPham sanPham : ds2) {
			System.out.println(sanPham.getTenSanPham());
		}
		System.out.println("--------------------------------");
		
		//phương thức phân trang cho sản phẩm theo Loại, Thương hiệu
		List<SanPham> ds3 = phanTrangTheoLoaiThuongHieu(1, 1, 2, 2);
		for (SanPham sanPham : ds3) {
			System.out.println(sanPham.getTenSanPham());
		}
		System.out.println("--------------------------------");
		
		//phương thức tìm danh sách sản phẩm theo id thương hiệu
		List<SanPham> ds4 = docTheoIdThuongHieu(2);
		for (SanPham sanPham : ds4) {
			System.out.println(sanPham.getTenSanPham());
		}
		System.out.println("--------------------------------");
		
		//phương thức tìm danh sách sản phẩm theo tên san phẩm
		List<SanPham> ds5 = timTheoTenSanPham("versace");
		for (SanPham sanPham : ds5) {
			System.out.println(sanPham.getDonGia());
		}
		System.out.println("--------------------------------");
		
		//phương thức thêm sản phẩm
//		SanPham s = new SanPham();
//		s.setTenSanPham("aaaa");
//		s.setMoTa("abc");
//		s.setHinhAnh("a.pnj");
//		s.setDonGia(100000);
//		s.setDonGiaKM(50000);
//		s.setSoLuong(10);
//		s.setNgayTao(new Date(new java.util.Date().getTime()));
//		s.setHienThi(1);
//		s.setIdLoai(1);;
//		s.setIdThuongHieu(1);
//		them(s);
//		System.out.println("--------------------------------");
		
		//phương thức sửa sản phẩm
		SanPham ss = new SanPham();
		ss.setTenSanPham("bbbbbb");
		ss.setMoTa("abc");
		ss.setHinhAnh("a.pnj");
		ss.setDonGia(100000);
		ss.setDonGiaKM(50000);
		ss.setSoLuong(10);
		ss.setNgayTao(new Date(new java.util.Date().getTime()));
		ss.setHienThi(1);
		ss.setIdLoai(1);;
		ss.setIdThuongHieu(1);
		ss.setId(33);
		sua(ss);
		System.out.println("--------------------------------");
		
		//phương thức tìm danh sách sản phẩm yêu thích nhất
		List<SanPham> ds6 = yeuThichNhat(8);
		for (SanPham sanPham : ds6) {
			System.out.println(sanPham.getTenSanPham());
		}
	}
}
