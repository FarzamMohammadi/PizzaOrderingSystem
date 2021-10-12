package com.orderSystem;

import java.text.NumberFormat;

public class Order {
	private String firstName;
	private String lastName;
	private String email;
	private String phoneNumber;
	private String address;
	private String pizzaType;
	private String pizzaSize;
	private String discountCoupon;
	private Double quantity;
	private Double total;
	
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getLastName() {
		return lastName;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPizzaType() {
		return pizzaType;
	}
	public void setPizzaType(String PizzaType) {
		this.pizzaType = PizzaType;
	}
	public void setPizzaSize(String PizzaSize) {
		this.pizzaSize = PizzaSize;
	}
	public String getPizzaSize() {
		return pizzaSize;
	}
	
	public void setDiscountCoupon(String discountCoupon) {
		this.discountCoupon = discountCoupon;
	}
	public String getDiscountCoupon() {
		return discountCoupon;
	}

	public Double getQuantity() {
		return quantity;
	}
	public void setQuantity(Double quantity) {
		this.quantity = quantity;
	}
	public String getTotal() {
		
		NumberFormat formatter = NumberFormat.getCurrencyInstance();
		switch(discountCoupon) {
		case "1111":
			switch(pizzaSize) {
			case "Small":
				total=10*quantity;
				total-=total*0.10;
				break;
			case "Medium":
				total=13*quantity;
				total-=total*0.10;
				break;
			case "Large":
				total=15*quantity;
				total-=total*0.10;
				break;
			default:
			}
			break;
		case "2222":
			switch(pizzaSize) {
			case "Small":
				total=10*quantity;
				total-=total*0.30;
				break;
			case "Medium":
				total=13*quantity;
				total-=total*0.30;
				break;
			case "Large":
				total=15*quantity;
				total-=total*0.30;
				break;
			default:
			}
			break;
		default:
			switch(pizzaSize) {
			case "Small":
				total=10*quantity;
				break;
			case "Medium":
				total=13*quantity;
				break;
			case "Large":
				total=15*quantity;
				break;
			default:
			}
			break;
		}
		return formatter.format(total).toString();
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	
}
