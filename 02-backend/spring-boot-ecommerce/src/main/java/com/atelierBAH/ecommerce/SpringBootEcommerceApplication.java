package com.atelierBAH.ecommerce;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SpringBootEcommerceApplication {

	public static void main(String[] args) {

		SpringApplication.run(SpringBootEcommerceApplication.class, args);

	}

}
