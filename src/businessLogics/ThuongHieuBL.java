package businessLogics;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javaBeans.ThuongHieu;

public class ThuongHieuBL {
	private static JdbcTemplate jdbc = CSDL.getJdbc();
	private static class AnhXaDong implements RowMapper<ThuongHieu>{
		@Override
		public ThuongHieu mapRow(ResultSet rs, int arg1) throws SQLException {
			ThuongHieu th = new ThuongHieu();
			th.setId(rs.getInt("id"));
			th.setTenThuongHieu(rs.getString("tenthuonghieu"));
			th.setHinhAnh(rs.getString("hinhanh"));
			return th;
		}
	}
	public static List<ThuongHieu> docTatCa(){
		String sql = "select * from thuonghieu";
		return jdbc.query(sql, new AnhXaDong());
	}
	public static ThuongHieu docTheoIdThuongHieu(int idThuongHieu) {
		String sql = "select * from thuonghieu where id = ?";
		return jdbc.queryForObject(sql, new AnhXaDong(), idThuongHieu);
	}
	
	//Test
	public static void main(String[] args) {
		//phương thức đọc tất cả thương hiệu
		List<ThuongHieu> dsth = docTatCa();
		for (ThuongHieu thuongHieu : dsth) {
			System.out.println(thuongHieu.getTenThuongHieu());
		}
		System.out.println("------------------------------");
		
		//phương thức đọc theo id Thương hiệu để tìm thương hiệu
		ThuongHieu th = docTheoIdThuongHieu(3);
		System.out.println(th.getTenThuongHieu());
	}
}
