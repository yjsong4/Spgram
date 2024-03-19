package com.syj.spgram;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication
public class SpgramApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpgramApplication.class, args);
	}

}
