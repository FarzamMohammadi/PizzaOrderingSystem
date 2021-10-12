<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!--  I added isELIgnored="false" because due to JSP version being used in my eclipse (or something of that nature) my application does not recognize variables inside JSP files without it-->
<!DOCTYPE html>
<html lang="en">
<style>
.content {
  max-width: 500px;
  margin: auto;
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
    <div class="content">
        <div>
          <div>
            <div>
                  <h3>Thanks for your order ${ order.getFirstName() }! </h3> 
                  <h3>Your Order details are as follows: </h3>
            </div>
            <div>
              <p> <span>Phone Number :</span> ${ order.getPhoneNumber() } </p>
              <p> <span>Email Address :</span> ${order.getEmail()} </p>

              <p> <span>Address :</span> ${ order.getAddress() } </p>
              <br /> 
              <h2> Pizza Details: </h2>
              <p> <span>Pizza Type :</span> ${ order.getPizzaType() } </p>
              <p> <span>Pizza Size :</span> ${ order.getPizzaSize() } </p>
              <p> <span>Quantity :</span> ${ order.getQuantity() } </p>
              <p> <span>Discount Coupon:</span> ${ order.getDiscountCoupon() } </p>
               <br />
               <br />
               <p>
                <span>Total :</span> ${ order.getTotal() }
              </p>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
