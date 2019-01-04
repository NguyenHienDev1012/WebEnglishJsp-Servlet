package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.SliderBanner;


public class HomeDAO {
	public static List<SliderBanner> displaySlideBanner(Connection conn) {
		List<SliderBanner> list = new ArrayList<SliderBanner>();
		PreparedStatement ptmt = null;
		String sql = "select * from slidebanner";
		try {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();

			while (rs.next()) {
				SliderBanner slide=new SliderBanner();
				String slidename=rs.getString("slidename");
				String slidecontent=rs.getString("slidecontent");
				String slideimage=rs.getString("slideimage");
				slide.setSlidename(slidename);
				slide.setSlidecontent(slidecontent);
				slide.setSlideimage(slideimage);
				list.add(slide);

			}
			ptmt.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}


}
