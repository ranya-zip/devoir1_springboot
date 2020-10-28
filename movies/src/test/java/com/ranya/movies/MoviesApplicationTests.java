package com.ranya.movies;

import java.util.Date;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.ranya.movies.entities.Movie;
import com.ranya.movies.repos.MovieRepository;



@SpringBootTest
class MoviesApplicationTests {

	@Autowired
	private MovieRepository MovieRepository;
	
	
	@Test
	public void testCreateMovie() {
	Movie mv = new Movie("captain america",50.500,new Date());
	MovieRepository.save(mv);
}
	@Test
	public void testFindMovie()
	{
	Movie m = MovieRepository.findById(1L).get();
	System.out.println(m);
	}

	@Test
	public void testUpdateMovie()
	{
	Movie m = MovieRepository.findById(1L).get();
	m.setPrixMovie(30.900);
	MovieRepository.save(m);
	}
	
	@Test
	public void testDeleteMovie()
	{
		MovieRepository.deleteById(1L);;
		}
	

	@Test
	public void testListerTousMovies()
	{
	List<Movie> mv = MovieRepository.findAll();
	for (Movie m : mv)
	{
	System.out.println(m);
	}
	
}
}

