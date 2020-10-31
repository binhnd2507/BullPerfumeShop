package businessLogics;

public class Trang {

	public static int timViTriDau(int trang, int soSanPhamMoiTrang) {
		int vtDau = 0;
		if(trang > 1) {
			vtDau = (trang - 1) * soSanPhamMoiTrang;
		}
		return vtDau;
	}
	public static int tongSoTrang(int tongSoMauTin, int soSanPhamMoiTrang) {
		int tongSoTrang = tongSoMauTin / soSanPhamMoiTrang + ((tongSoMauTin % soSanPhamMoiTrang) != 0 ? 1 : 0);
		return tongSoTrang;
	}
}
