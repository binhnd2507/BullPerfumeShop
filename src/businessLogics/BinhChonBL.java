package businessLogics;

import org.springframework.jdbc.core.JdbcTemplate;

import javaBeans.BinhChon;

public class BinhChonBL {
	
	private static JdbcTemplate jdbc = CSDL.getJdbc();
	
	public static int them(BinhChon bc) {
		String sql = "insert into binhchon (id, ten, email, diem, danh_gia, id_sanpham) values (?, ?, ?, ?, ?, ?)";
		return jdbc.update(sql, bc.getId(), bc.getTen(), bc.getEmail(), bc.getDiem(), bc.getDanhGia(), bc.getIdSanPham());
	}
	
	//test phương thức thêm bình chọn
	public static void main(String[] args) {
		BinhChon bc = new BinhChon();
		bc.setId(0);
		bc.setTen("apolo");
		bc.setEmail("apolo@gmail.com");
		bc.setDiem(4);
		bc.setDanhGia("sản phẩm rất xịn xò");
		bc.setIdSanPham(2);
		them(bc);
	}
}
