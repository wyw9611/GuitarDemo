package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import dao.dataAccess;
import model.Builder;
import model.Type;
import model.Wood;
import model.Instrument;
import model.InstrumentSpec;
import model.InstrumentType;
import model.Inventory;
import model.Style;
import service.InstrumentService;

/**
 * Servlet implementation class InstrumentService
 */
@WebServlet("/guitar/InstrumentService")
public class InstrumentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InstrumentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("backWood值："+request.getParameter("backWood"));
		System.out.println("instrumentType值："+request.getParameter("instrumentType"));
		InstrumentService instrumentSrv = new InstrumentService();
		//根据查询条件构造InstrumentSpec，通常可以使用对象反序列化技术
		Inventory inventory = instrumentSrv.getInventory();
		System.out.println("inventory"+inventory);
		 Map properties = new HashMap();
		 System.out.println("builedr值："+Builder.fromString(request.getParameter("builder")));
		 if(request.getParameter("builedr")!=""){
			 properties.put("builder",  Builder.fromString(request.getParameter("builder")));
			 }
		 if(request.getParameter("type")!=""){
			 properties.put("type",  Type.fromString(request.getParameter("type")));
			 }
		 if(request.getParameter("backWood")!=""){
			 properties.put("backWood",  Wood.fromString(request.getParameter("backWood")));
			 }
		 if(request.getParameter("topWood")!=""){
			 properties.put("topWood",  Wood.fromString(request.getParameter("topWood")));
			 }
		 if(request.getParameter("style")!=""){
			 properties.put("style",  Style.fromString(request.getParameter("style")));
			 }
		 if(request.getParameter("instrumentType")!=""){
			 properties.put("instrumentType", InstrumentType.fromString(request.getParameter("instrumentType")));
			 }
		 
		 InstrumentSpec searchSpec = new InstrumentSpec(properties);
		 System.out.println("whatBryanLikes:"+searchSpec);
		 List matchingInstruments = inventory.search(searchSpec);
		 System.out.println("matchingInstruments:"+matchingInstruments);
		 if (!matchingInstruments.isEmpty()) {
		      System.out.println("Bryan, you might like these instruments:");
		      for (Iterator i = matchingInstruments.iterator(); i.hasNext(); ) {
		    	
		        Instrument instrument = (Instrument)i.next();
		        InstrumentSpec spec = instrument.getSpec();
		        System.out.println("We have a " + spec.getProperty("instrumentType") +
		          " with the following properties:");
		        for (Iterator j = spec.getProperties().keySet().iterator(); 
		             j.hasNext(); ) {
		          String propertyName = (String)j.next();
		          if (propertyName.equals("instrumentType"))
		            continue;
		          System.out.println("    " + propertyName + ": " +
		            spec.getProperty(propertyName));
		        }  
		        System.out.println("  You can have this " + 
		          spec.getProperty("instrumentType") + " for $" + 
		          instrument.getPrice() + "\n---");
		      }
		    } else {
			      request.setAttribute("matchingInstruments", (List<Instrument>)matchingInstruments);
		      System.out.println("Sorry, Bryan, we have nothing for you.");
		    }
//		InstrumentSpec searchSpec = new InstrumentSpec(null);
//		List result = instrumentSrv.searchInstrument(searchSpec);
		
		// TODO Auto-generated method stub
		 RequestDispatcher rd = 
	                request.getRequestDispatcher("/guitar/serach.jsp");
			rd.forward(request, response);
			 System.out.println(matchingInstruments);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		 
		
	}
	
	public void initInventory(Inventory inventory){
		
		ClassPathXmlApplicationContext ac = new ClassPathXmlApplicationContext("beans.xml");
		InstrumentService us = 
				(InstrumentService)ac.getBean("instrumentService");
		//assertNotEquals(null, us);
		inventory = us.getInventory();
	}

}
