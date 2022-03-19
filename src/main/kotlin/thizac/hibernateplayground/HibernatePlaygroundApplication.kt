package thizac.hibernateplayground

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class HibernatePlaygroundApplication

fun main(args: Array<String>) {
	runApplication<HibernatePlaygroundApplication>(*args)
}
