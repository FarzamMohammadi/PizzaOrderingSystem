package com.orderSystem;

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
	private Double bill;
	
	public Double getBill() {
		switch(discountCoupon) {
		case "1111":
			switch(pizzaSize) {
			case "Small":
				bill=10*quantity;
				bill-=bill*0.10;
				break;
			case "Medium":
				bill=13*quantity;
				bill-=bill*0.10;
				break;
			case "Large":
				bill=15*quantity;
				bill-=bill*0.10;
				break;
			default:
			}
			break;
		case "2222":
			switch(pizzaSize) {
			case "Small":
				bill=10*quantity;
				bill-=bill*0.30;
				break;
			case "Medium":
				bill=13*quantity;
				bill-=bill*0.30;
				break;
			case "Large":
				bill=15*quantity;
				bill-=bill*0.30;
				break;
			default:
			}
			break;
		default:
			switch(pizzaSize) {
			case "Small":
				bill=10*quantity;
				break;
			case "Medium":
				bill=13*quantity;
				break;
			case "Large":
				bill=15*quantity;
				break;
			default:
			}
			break;
		}
		return bill;
	}
	public void setBill(Double bill) {
		this.bill = bill;
	}
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
	
	String pizzaPrice;

	public String getPizzaPrice() {
		return pizzaPrice;
	}
	public void setPizzaPrice(String pizzaSize) {
		if(this.pizzaSize.equals("Small"))
			this.pizzaPrice = "CAD 10.00";
		if(this.pizzaSize.equals("Medium"))
			this.pizzaPrice = "CAD 13.00";
		if(this.pizzaSize.equals("Large"))
			this.pizzaPrice = "CAD 15.00";
		pizzaPrice="1";
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
	
}
