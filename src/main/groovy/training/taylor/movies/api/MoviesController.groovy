package training.taylor.movies.api

import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

/**
 * Created by Jason on 5/12/2017.
 */

@RestController
class MoviesController {

    @RequestMapping("/")
    public String home() {
        return "Hello Docker World";
    }

}
