package businessLogics;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javaBeans.Loai;

public class LoaiBL {
	private static JdbcTemplate jdbc = CSDL.getJdbc();
	private static class AnhXaDong implements RowMapper<Loai>{
		@Override
		public Loai mapRow(ResultSet rs, int arg1) throws SQLException {
			Loai l = new Loai();
			l.setId(rs.getInt("id"));
			l.setTenLoai(rs.getString("tenloai"));
			return l;
		}
	}
	public static List<Loai> docTatCa(){
		String sql = "select * from loai";
		return jdbc.query(sql, new AnhXaDong());
	}
	public static Loai docTheoIdLoai(int idLoai) {
		String sql = "select * from loai where id = ?";
		return jdbc.queryForObject(sql, new AnhXaDong(), idLoai);
	}
	
	//Test
	public static void main(String[] args) {
		//phương thức đọc tất cả loại
		List<Loai> dsl = docTatCa();
		for (Loai loai : dsl) {
			System.out.println(loai.getTenLoai());
		}
		System.out.println("-----------------------");
		//phương thức đọc theo id loại;
		Loai l = docTheoIdLoai(2);
		System.out.println(l.getTenLoai());
		System.out.println("-----------------------");
	}
}
