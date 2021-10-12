package com.orderSystem;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderController {

    @RequestMapping("/order")
    public ModelAndView postReserve(WebRequest request) {
    	Order newOrder = new Order();
    	newOrder.setFirstName(request.getParameter("firstName"));
    	newOrder.setLastName(request.getParameter("lastName"));
    	newOrder.setEmail(request.getParameter("email"));
    	newOrder.setPizzaSize(request.getParameter("pizzaSize"));
    	newOrder.setDiscountCoupon(request.getParameter("discountCoupon"));
    	newOrder.setQuantity(Double.parseDouble(request.getParameter("quantity")));
    	newOrder.setPhoneNumber(request.getParameter("phone"));
    	newOrder.setAddress(request.getParameter("address"));
    	newOrder.setPizzaType(request.getParameter("pizzaType"));
    

		return new ModelAndView("show-order", "order", newOrder);
		
    }
    
    
}
