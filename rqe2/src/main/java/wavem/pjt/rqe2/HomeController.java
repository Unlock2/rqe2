package wavem.pjt.rqe2;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	 @RequestMapping(value="views/home.do")
	 public ModelAndView home()throws Exception{
		 ModelAndView mv = new ModelAndView("/home");
		 return mv;
		 
	 }
	 
	 @RequestMapping(value="views/calendar1.do")
	 public ModelAndView calendar1()throws Exception{
		 ModelAndView mv = new ModelAndView("/calendar1");
		 return mv;
		 
	 }
	 
	 @RequestMapping(value="views/calendar2.do")
	 public ModelAndView calendar2()throws Exception{
		 ModelAndView mv = new ModelAndView("/calendar2");
		 return mv;
		 
	 }
 }
	

