package org.kosa.hello;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import jakarta.servlet.ServletRequest;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class HomeController {
	@GetMapping("/")
	public String index(ServletRequest request) {
		log.info("server port = {}", request.getServerPort());
		return "변경변경변경 Hello World... " + request.getLocalPort() + " : " + request.getServerPort();
	}
}
