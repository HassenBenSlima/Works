package ord.syscomputer.Config;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

//@PropertySource("classpath=swagger.properties")
//@ComponentScan(basePackageClasses=CategorieRest.class)
@Configuration
@EnableSwagger2
public class SwaggerConfig {

	 @Bean
	 public Docket api() {
	        return new Docket(DocumentationType.SWAGGER_2)
	        		.apiInfo(apiInfo())
	        		.pathMapping("/")
	                .select()
	                .paths(PathSelectors.ant("/api/**"))
	                .build();
	    }
	 
	 private ApiInfo apiInfo() {
		return new ApiInfoBuilder().title("JavaInUse API")
				.description("JavaInUse API reference for developers")
				.license("License")
				.version("1.0").build();
	}


}