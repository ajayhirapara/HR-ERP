package com.os;


import org.flywaydb.core.Flyway;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import javax.sql.DataSource;

@Configuration
public class WebConfig {
	
	@Autowired
	DataSource dbSource;
	
	@Bean(initMethod = "migrate")
	Flyway flyway() {
	    Flyway flyway = new Flyway();
	    flyway.setBaselineOnMigrate(true);
	    flyway.setDataSource(dbSource);
	    return flyway;
	}
}
