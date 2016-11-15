package com.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.logging.Log;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.ClientHttpResponse;
import org.springframework.web.client.ResponseErrorHandler;
import org.springframework.web.client.RestTemplate;

import com.flight.TripSearch;
import com.model.User;
import com.service.RegisterService;
import com.model.Search;
import org.codehaus.jackson.annotate.JsonIgnoreProperties;

public class SearchService extends HttpServlet { 

	private static final long serialVersionUID = 1L;

	public TripSearch search(Search search) {
		
		RestTemplate restTemplate = new RestTemplate();
		TripSearch myPojo = new TripSearch();
        HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		//String requestJson = "{  \"request\": {   \"slice\": [ { \"origin\": \"SFO\", \"destination\": \"MAA\",\"date\": \"2016-11-18\"}, { \"origin\": \"MAA\", \"destination\": \"SFO\", \"date\": \"2016-11-28\"}], \"passengers\": {\"adultCount\": 1,\"infantInLapCount\": 0,\"infantInSeatCount\": 0,\"childCount\": 0,\"seniorCount\": 0}, \"solutions\": 2, \"refundable\": false }}";
		String requestJson = "{  \"request\": {   \"slice\": [ { \"origin\": \""+search.getFrom()+"\", \"destination\": \""+search.getTo()+"\",\"date\": \""+search.getDepDate()+"\"}, { \"origin\": \""+search.getTo()+"\", \"destination\": \""+search.getFrom()+"\", \"date\": \""+search.getRetDate()+"\"}], \"passengers\": {\"adultCount\": "+search.getAdult()+",\"infantInLapCount\": "+search.getInfant()+",\"infantInSeatCount\": 0,\"childCount\": "+search.getChild()+",\"seniorCount\": 0}, \"solutions\": 10, \"refundable\": false }}";
		
		//String requestJson = "{  \"request\": {   \"slice\": [ { \"origin\": \""+search.getFrom()+"\", \"destination\": \""+search.getTo()+"\",\"date\": \""+search.getDepDate()+"\"}], \"passengers\": {\"adultCount\": "+search.getAdult()+",\"infantInLapCount\": "+search.getInfant()+",\"infantInSeatCount\": 0,\"childCount\": "+search.getChild()+",\"seniorCount\": 0}, \"solutions\": 10, \"refundable\": false }}";
		System.out.println("reguest Json : " +requestJson);
		HttpEntity<String> entity = new HttpEntity<String>(requestJson, headers);

		/*restTemplate.setErrorHandler(new ResponseErrorHandler() {
			
			@Override
			public boolean hasError(ClientHttpResponse arg0) throws IOException {
				// TODO Auto-generated method stub
				return false;
			}
			
			@Override
			public void handleError(ClientHttpResponse arg0) throws IOException {
				// TODO Auto-generated method stub
				System.out.println(arg0.getStatusText());
				
			}
		});*/
		ResponseEntity<String> flightSearchResults = restTemplate.exchange(
				"https://www.googleapis.com/qpxExpress/v1/trips/search?key=AIzaSyA1V4N3v7AHFwG6iZ3inHUVziK60GxBwd4",
				HttpMethod.POST, entity, String.class);
		ObjectMapper mapper = new ObjectMapper();

		try {
			// Convert JSON string to Object
			String jsonInString = flightSearchResults.getBody();
			System.out.println(jsonInString);
			 myPojo = mapper.readValue(jsonInString, TripSearch.class);
			//request.setAttribute("flightSearchResults", myPojo);

		} catch (JsonGenerationException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		//response.sendRedirect("searchresults.jsp");
		return myPojo;
	}
}

