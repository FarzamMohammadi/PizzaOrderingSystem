package com.orderSystem;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;
import com.orderSystem.Order;
@Controller
public class OrderController {

    @RequestMapping("/order")
    public ModelAndView postReserve(WebRequest request) {
    	Order newOrder = new Order();
    	newOrder.setFirstName(request.getParameter("fName"));
    	newOrder.setLastName(request.getParameter("lName"));
    	newOrder.setEmail(request.getParameter("email"));
    	System.out.println(request.getParameter("email"));
    	newOrder.setPhoneNumber(request.getParameter("phone"));
    	newOrder.setAddress(request.getParameter("address"));
    	newOrder.setPizzaType(request.getParameter("pizzaType"));
    	newOrder.setPizzaSize(request.getParameter("pizzaSize"));
    	newOrder.setPizzaPrice(request.getParameter("pizzaPrice"));
    	newOrder.setDiscountCoupon(request.getParameter("discountCoupon"));
    	newOrder.setQuantity(Double.parseDouble(request.getParameter("quantity")));

		return new ModelAndView("show-order", "order", newOrder);
		
    }
    
    
}
