import static org.junit.Assert.*;

import org.junit.Test;

import com.imie.todolist.model.Person;


public class TodolistTester {

	@Test
	public void testEnEchec() {
		
		fail("Echec fait expres.");
	}
	
	@Test
	public void testQuiReussi() {
		
		Person p = new Person();
		
	}

}
