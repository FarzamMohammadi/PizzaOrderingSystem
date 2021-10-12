<%@ page language="java" contentType="text/html; charset=UTF8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Toronto Restaurant</title>

    <!-- UIkit CSS -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/uikit@3.7.4/dist/css/uikit.min.css"
    />

    <!-- UIkit JS -->
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.7.4/dist/js/uikit.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.7.4/dist/js/uikit-icons.min.js"></script>
  </head>
  <body>

    <div class="uk-flex uk-flex-center uk-margin-large">
      <div
        class="uk-card uk-card-body uk-margin-left uk-width-1-2@m uk-card-hover"
      >
        <h3 class="uk-card-title">Place Your Order Here</h3>
        <form class="uk-form-stacked uk-margin-medium" method="POST" action="order">
          <div class="uk-margin uk-grid-small" uk-grid>
            <div class="uk-width-1-3@s">
              <label class="uk-form-label">Name</label>
              <input
                class="uk-input"
                type="text"
                placeholder="First Name"
                name="fName"
                required
              />
            </div>
            <div class="uk-width-1-3@s">
              <label class="uk-form-label">&nbsp;</label>
              <input
                class="uk-input"
                type="text"
                placeholder="Last Name"
                name="lName"
                required
              />
            </div>
          </div>
          <div class="uk-margin">
            <label class="uk-form-label" for="email">Email</label>
            <div class="uk-form-controls">
              <input
                class="uk-input"
                id="email"
                type="email"
                placeholder="id@domain.com"
                name="email"
                required
              />
            </div>
          </div>

          <div class="uk-margin">
            <label class="uk-form-label" for="phone">Phone Number</label>
            <div class="uk-form-controls">
              <input
                class="uk-input"
                id="phone"
                type="number"
                placeholder="### ### ####"
                name="phone"
                required
              />
            </div>
            
            <div class="uk-margin">
            <label class="uk-form-label" for="address">Address</label>
            <div class="uk-form-controls">
              <input
                class="uk-input"
                type="text"
                placeholder="Address"
                name="address"
                required
              />
            </div>
          </div>

          <div class="uk-margin uk-grid-small" uk-grid>
            
            <div class="uk-width-1-2@s">
              <label class="uk-form-label">Pizza Type</label>
              <select class="uk-select" id="pizzaType" name="pizzaType">
                <option value="Pepperoni">Pepperoni</option>
                <option value="Chicken Tikka">Chicken Tikka</option>
                <option value="Cheese Chadder">Cheese Chadder</option>
               </select>
            </div>
          </div>
          
          <div class="uk-width-1-2@s">
              <label class="uk-form-label">Pizza Size</label>
              <select class="uk-select" id="pizzaSize" name="pizzaSize">
                <option value="Small">Small</option>
                <option value="Medium">Medium</option>
                <option value="Large">Large</option>
               </select>
          </div>
     
                    
          <div class="uk-width-1-2@s">
              <label class="uk-form-label">Discount</label>
              <select class="uk-select" id="discountCoupon" name="discountCoupon">
                <option value="none"></option>
                <option value="1111">(10%) 1111 Coupon</option>
                <option value="2222">(30%) 2222 Coupon</option>
               </select>
          </div>


          <div class="uk-margin uk-grid-small" uk-grid>
           <div class="uk-width-1-2@s">
              <label class="uk-form-label">Quantity</label>
              <select class="uk-select" id="quantity" name="quantity">
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
              </select>
            </div>
          </div>

          <div class="uk-margin uk-grid-small" uk-grid>
            <button class="uk-width-1-2@s uk-button uk-button-primary" type="submit">
                Submit
            </button>
          </div>


          </div>
        </form>
      </div>
    </div>
  </body>
</html>
