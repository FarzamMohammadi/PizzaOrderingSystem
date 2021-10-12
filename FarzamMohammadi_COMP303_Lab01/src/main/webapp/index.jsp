<%@ page language="java" contentType="text/html; charset=UTF8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=number], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=email], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 10px;
}
</style>
  <head>
    <title>Toronto Restaurant</title>
  </head>
  <body>
        <h3>Place Your Order Here</h3>
        <form method="POST" action="order">
            <div>
             <label>Name</label>
              <div>
              <input type="text" placeholder="First Name" name="firstName" required />
              <label></label>
              <input type="text" placeholder="Last Name" name="lastName" required />
            </div>
             </div>
          <div>
            <label for="email">Email</label>
            <div>
              <input id="email" type="email" placeholder="id@domain.com" name="email" required />
            </div>
          </div>
          <div >
            <label for="phone">Phone Number</label>
            <div >
              <input id="phone" type="number" placeholder="### ### ####" name="phone" required />
            </div>    
             <label for="address">Address</label>
            <div>
              <input type="text" placeholder="Address" name="address" required />
            </div>
          </div>
           <div>
          <label>Pizza Type</label>
            <div>
              <select id="pizzaType" name="pizzaType">
                <option value="Pepperoni">Pepperoni</option>
                <option value="Cheese">Cheese</option>
                <option value="Veggie">Veggie</option>
               </select>
            </div>
          
          <label>Pizza Size</label>
          <div>
              <select  id="pizzaSize" name="pizzaSize">
                <option value="Small">Small</option>
                <option value="Medium">Medium</option>
                <option value="Large">Large</option>
               </select>
          </div>
     

          <label>Discount</label>                    
          <div>
              <select id="discountCoupon" name="discountCoupon">
                <option value="none"></option>
                <option value="1111">(10%) 1111 Coupon</option>
                <option value="2222">(30%) 2222 Coupon</option>
               </select>
          </div>
          <label>Quantity</label>
          <div>
              <select id="quantity" name="quantity">
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
              </select>
            </div>
          <div>
            <button type="submit">Submit</button>
          </div>
          </div>
        </form>
  </body>
</html>
