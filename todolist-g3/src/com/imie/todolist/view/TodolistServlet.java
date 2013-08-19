package com.imie.todolist.view;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.imie.todolist.model.Person;

public class TodolistServlet extends HttpServlet {

	private ArrayList<Person> persons;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {

		doPost(request, response);

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {


		if(request.getParameter("action")!= null && request.getParameter("action").equals("add")){
			System.out.println("parameter action = add");
			Person person = new Person();
			person.setName("");
			if (request.getParameter("lastname")!=null){
				person.setName(request.getParameter("lastname"));
			}
			person.setFirstname("");
			if (request.getParameter("firstname")!=null){
				person.setFirstname(request.getParameter("firstname"));
			}

			person.setTel("");
			if (request.getParameter("tel")!=null){
				person.setTel(request.getParameter("tel"));
			}


			if (request.getParameter("birthDate")!=null){
				SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
				try{
					person.setBirthday(sdf.parse(request.getParameter("birthDate")));
				}catch(Exception e){
					person.setBirthday(null);		
				}
			}


			getPersons().add(person);

		}

		request.setAttribute("persons",persons);
		for(Person p: persons){
			System.out.println(p);
		}

		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

	@Override
	public void init() throws ServletException {

		super.init();

		persons = new ArrayList<Person>();


	}

	public ArrayList<Person> getPersons() {
		return persons;
	}

	public void setPersons(ArrayList<Person> persons) {
		this.persons = persons;
	}

}
