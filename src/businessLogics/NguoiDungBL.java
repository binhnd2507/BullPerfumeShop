package businessLogics;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javaBeans.NguoiDung;

public class NguoiDungBL {
	private static JdbcTemplate jdbc = CSDL.getJdbc();
	public static NguoiDung docTheoEmailPassword(String email, String password) {
		String sql = "select * from nguoidung where email = ? and password = ?";
		try {
			return jdbc.queryForObject(sql, new RowMapper<NguoiDung>() {
				@Override
				public NguoiDung mapRow(ResultSet rs, int arg1) throws SQLException {
					NguoiDung nd = new NguoiDung();
					nd.setId(rs.getInt("id"));
					nd.setEmail(rs.getString("email"));
					nd.setPassword(rs.getString("password"));
					nd.setHoTen(rs.getString("hoten"));
					nd.setDiaChi(rs.getString("diachi"));
					nd.setDienThoai(rs.getString("dtdd"));
					nd.setIdVaiTro(rs.getInt("id_vaitro"));
					return nd;
				}
			}, email, password);
		} catch (Exception e) {
			return null;
		}
	}
	
	//Test phương thức đọc email, password
	public static void main(String[] args) {
		NguoiDung nd = NguoiDungBL.docTheoEmailPassword("bichle@gmail.com", "bichl");
		if(nd != null)
			System.out.println(nd.getHoTen());
		else
			System.out.println("lỗi");
	}
}
