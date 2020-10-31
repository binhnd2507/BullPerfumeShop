package businessLogics;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javaBeans.QuangCao;

public class QuangCaoBL {
	private static JdbcTemplate jdbc = CSDL.getJdbc();
	private static class AnhXaDong implements RowMapper<QuangCao>{
		@Override
		public QuangCao mapRow(ResultSet rs, int arg1) throws SQLException {
			QuangCao qc = new QuangCao();
			qc.setId(rs.getInt("id"));
			qc.setHinhAnh(rs.getString("hinhanh"));
			qc.setThongDiep(rs.getString("thongdiep"));
			qc.setThongTinCT(rs.getString("thongtinchitiet"));
			qc.setNgayDang(rs.getDate("ngaydang"));
			return qc;
		}
	}
	public static List<QuangCao> docTatCa(){
		String sql = "select * from quangcao";
		return jdbc.query(sql, new AnhXaDong());
	}
	
	//Test
	public static void main(String[] args) {
		
		//Phương thức đọc tất cả quảng cáo
		List<QuangCao> dsqc = docTatCa();
		for (QuangCao quangCao : dsqc) {
			System.out.println(quangCao.getThongDiep());
		}
	}
}
