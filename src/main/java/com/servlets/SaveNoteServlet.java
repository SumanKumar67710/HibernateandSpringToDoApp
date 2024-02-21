package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class SaveNoteServlet
 */
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
	    // getting title,content as parameter from add_note.jsp		
		String title=request.getParameter("title");
		String content= request.getParameter("content");
		
		// Making note construtor all required variables from Note Entity table
		Note note=new Note(title,content,new Date());
		
	//	System.out.println(note.getId()+":"+note.getContent());
		
		
	// hibernate saving code into mysql(connectivity)
		Session s=FactoryProvider.getFactory().openSession();
		Transaction tx=s.beginTransaction();
		
		s.save(note);
		tx.commit();
		
		s.close();
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.println("<h1 style='text-align:center;'> Note is added Successfully</h1>");
		out.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>View All Notes</a></h1>");
		}catch(Exception ex)
		{
		ex.printStackTrace();	
		}
	}

}
