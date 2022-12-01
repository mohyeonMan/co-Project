package com.bit.team_project.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "payments")
public class PaymentsController {
	@RequestMapping("/success")
	public String success() {
		return "payment/success";
	}

	@RequestMapping("/fail")
	public String fail() {
		return "payment/fail";
	}

	@RequestMapping(value = "complete")
	@ResponseBody
	public String kakaopay() {
		try {
			URL url = new URL("https://kapi.kakao.com/v1/payment/ready"); // 주소
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "KakaoAK 1d46c556d47255718b8bf8a0663667b5");
			conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			conn.setDoOutput(true);

			String param = 
					"cid=TC0ONETIME"
					+ "&partner_order_id=partner_order_id"
					+ "&partner_user_id=partner_user_id"
					+ "&item_name=team_project"
					+ "&quantity=1" 
					+ "&total_amount=1"
					+ "&vat_amount=200"
					+ "&tax_free_amount=0"
					+ "&approval_url=http://localhost:8080/team_project/index"
					+ "&fail_url=http://localhost:8080/team_project/index"
					+ "&cancel_url=http://localhost:8080/team_project/index";

			
			OutputStream outputStream = conn.getOutputStream();
			DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
			dataOutputStream.writeBytes(param);
			dataOutputStream.close();

			int resultCode = conn.getResponseCode();

			InputStream inputStream;

			if (resultCode == 200) {
				inputStream = conn.getInputStream(); // 생성
			} else {
				inputStream = conn.getErrorStream();
			}

			InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
			BufferedReader bufferedReader = new BufferedReader(inputStreamReader);

			String result2 = bufferedReader.readLine();
			System.out.println(result2);

			return result2;

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return "{\"result\":\"NO\"}";
	}

}