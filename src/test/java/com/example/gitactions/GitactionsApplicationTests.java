package com.example.gitactions;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class GitactionsApplicationTests {

	@Test
	void contextLoads() {
	}
	@Test
	void testeo(){
		int delayInSeconds = 10; // Set the delay duration in seconds

		try {
			Thread.sleep(delayInSeconds * 1000); // Convert seconds to milliseconds
		} catch (InterruptedException e) {
			Thread.currentThread().interrupt();
			System.err.println("Thread was interrupted while sleeping");
		}
		assert true;
	}

	}


