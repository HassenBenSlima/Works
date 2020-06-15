package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.GroupeDAO_IMPL;
import model.Groupe;
import model.Groupeenseignant;

/**
 * Servlet implementation class CompostageController
 */
@WebServlet("/CompostageController")
public class CompostageController extends HttpServlet {
	private List<Groupe> groups ;
	private static final long serialVersionUID = 1L;
	
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompostageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doPost(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GroupeDAO_IMPL groupeDAO = new GroupeDAO_IMPL();
		String action = request.getParameter("action");
		if(action==null)
		{	request.setAttribute("groups", groupeDAO.findAll());	
		}
        else 
        	if(action.equals("Recherche")){	
        		String rperiode=request.getParameter("rperiode");
       			String rannee=request.getParameter("rannee");  
        		if(request.getParameter("codeGroupe")!=null){
        		    int codeGroupe= Integer.parseInt(request.getParameter("codeGroupe"));
                    List<Groupe> groupes=new ArrayList<Groupe>() ;
                    groupes.add(groupeDAO.Recherche( codeGroupe, rannee , rperiode )); 
                    request.setAttribute("groups", groupes);		
        		}else {
        			 groups = groupeDAO.findAll();
        			for (Groupe gr:groups)
        			{
        				int i=gr.getCode();
        				gr=groupeDAO.Recherche( i, rannee , rperiode );
        			}
        			request.setAttribute("groups", groups);
        		
        		}

		}
		request.setAttribute("sGroups", groupeDAO.findAll());
		request.getRequestDispatcher("/Compostage.jsp").forward(request, response);
		}
		
	

}