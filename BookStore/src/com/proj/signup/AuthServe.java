package com.proj.signup;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AuthServe
 */
@WebServlet("/AuthServe")
public class AuthServe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthServe() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String j="";
		String a=request.getParameter("username");
		String b=request.getParameter("password");
		try {
			String qu="http://localhost:8080/AuthorizationService/rest/auth/ulogin/"+a+"/"+b;
			URL url = new URL(qu);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Accept", "application/json");

			if (conn.getResponseCode() != 200) {
				throw new RuntimeException("Failed : HTTP error code : " + conn.getResponseCode());
			}

			BufferedReader br = new BufferedReader(new InputStreamReader((conn.getInputStream())));

			String output;
			j=j.trim();
					

			while ((output = br.readLine()) != null) {
				j+=output;
			}
			conn.disconnect();

		} catch (MalformedURLException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();

		}
		PrintWriter out=response.getWriter();
		out.println("<html><body>");
		if(j.equals("VALID")) {
			response.sendRedirect("adminHome.jsp");
		}
		else {
			response.sendRedirect("loginAdmin.jsp");
		}
		out.println(request.getParameter("username"));
		out.println("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
