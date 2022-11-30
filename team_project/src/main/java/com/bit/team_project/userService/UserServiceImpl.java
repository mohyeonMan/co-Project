package com.bit.team_project.userService;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.team_project.DTO.BidDTO;
import com.bit.team_project.DTO.UserDTO;
import com.bit.team_project.userDAO.UserDAO;
import com.google.gson.JsonElement;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;

	
	
	@Override
	public List<BidDTO> getMyBidList(Map<String, String> map) {
		// TODO Auto-generated method stub
		return userDAO.getMyBidList(map);
	}


	@Override
	public UserDTO getUserDetail(Map<String, String> map) {
		// TODO Auto-generated method stub
		return userDAO.getUserDetail(map);
	}


	@Override
	public List<BidDTO> getMyBidList1(Map<String, String> map) {
		// TODO Auto-generated method stub
		return userDAO.getMyBidList1(map);
	}


	@Override
	public List<BidDTO> getMyBidList2(Map<String, String> map) {
		// TODO Auto-generated method stub
		return userDAO.getMyBidList2(map);
	}

	@Override
	public void write(UserDTO userDTO) {
		userDAO.write(userDTO);
	}

	@Override
	public String checkId(String id) {
		return userDAO.checkId(id);
	}

	@Override
	public UserDTO login(Map<String, String> map) {
		return userDAO.login(map);
	}

	@Override
	public String getKakaoAccessToken(String code) {
		String accessToken = "";
		String refreshToken = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";

		try {
			URL url = new URL(reqURL);
			HttpsURLConnection conn = (HttpsURLConnection) url.openConnection();

			// Post 요청을 위해 setDoOutPut을 true로
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);

			// 요구하는 파라미터를 스트림을 통해 전송
			BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder builder = new StringBuilder();
			builder.append("grant_type=authorization_code");
			builder.append("&client_id=268b20cd927776992bc7f4192b57984b"); // REST_API_KEY
			builder.append("&redirect_uri=http://localhost:8080/team_project/user/kakaoLogin"); // 인가코드 받은 redirect_uri
			builder.append("&code=" + code);
			writer.write(builder.toString());
			writer.flush();

			int response = conn.getResponseCode();
			System.out.println("response : " + response);

			// json으로 받은 response 읽기.
			BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";

			while ((line = reader.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);

			com.google.gson.JsonParser parser = new com.google.gson.JsonParser();
			JsonElement element = parser.parse(result);

			accessToken = element.getAsJsonObject().get("access_token").getAsString();
			refreshToken = element.getAsJsonObject().get("refresh_token").getAsString();

			System.out.println("access_token : " + accessToken);
			System.out.println("refresh_token : " + refreshToken);

			reader.close();
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return accessToken;
	}

	@Override
	public Map<String, String> createKakaoUser(String token) {
		Map<String,String> map = new HashMap<String,String>();
		
		String reqURL = "https://kapi.kakao.com/v2/user/me";

		// access_token을 이용하여 사용자 정보 조회
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();

			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			conn.setRequestProperty("Authorization", "Bearer " + token); // 전송할 header 작성, access_token전송

			// 결과 코드가 200이라면 성공
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);

			// 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
			BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";

			while ((line = reader.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);

			// Gson 라이브러리로 JSON파싱
			com.google.gson.JsonParser parser = new com.google.gson.JsonParser();
			JsonElement element = parser.parse(result);

			String id = element.getAsJsonObject().get("id").getAsString();
			String name = element.getAsJsonObject().get("properties").getAsJsonObject().get("nickname").getAsString();

			System.out.println("id : " + id);
			System.out.println("nick : " + name);
			map.put("id", id);
			map.put("name",name);
			
			String exist = userDAO.checkId(id);
			if(exist.equals("0")) {
				userDAO.kakaoWrite(map);
				System.out.println(id+"/"+name+"회원가입 완료");
			}
		
			
			
			reader.close();

		} catch (IOException e) {
			e.printStackTrace();
		}
		return map;
	}
	
	@Override
	public void update(UserDTO userDTO) {
		userDAO.update(userDTO);
	}


	@Override
	public int getMessageCount(String id) {
		return userDAO.getMessageCount(id);
	}

}
