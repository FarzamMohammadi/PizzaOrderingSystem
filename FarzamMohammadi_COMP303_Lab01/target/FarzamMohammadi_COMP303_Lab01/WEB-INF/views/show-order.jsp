<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
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
    <div>
        <div
          class="
            uk-overlay
            uk-overlay-default
            uk-position-top-center
            uk-margin-large-top
          "
        >
          <div
            class="
              uk-card uk-card-default uk-card-hover uk-card-body uk-width-1-1@m
            "
          >
            <div class="uk-card-header">
              <div class="uk-grid-small uk-flex-middle" uk-grid>
                <div class="uk-width-expand">
                  <h3 class="uk-card-title uk-margin-remove-bottom">
                    Welcome ${order.getFirstName() }
                  </h3>
                </div>
              </div>
              
              <div class="uk-grid-small uk-flex-middle" uk-grid>
                <div class="uk-width-expand">
                  <h3 class="uk-card-title uk-margin-remove-bottom">
                    Your Order details are as follows:
                  </h3>
                </div>
              </div>
            </div>
            <div class="uk-card-body">
            

              <p>
                <span class="uk-text-bold">Phone Number :</span> ${
                order.getPhoneNumber() }
              </p>

              <p>
                <span class="uk-text-bold">Email Address :</span> ${user.email}
              </p>

              <p>
                <span class="uk-text-bold">Address :</span> ${
                order.getAddress() }
              </p>

              <br />

             
              <h2 class="uk-card-title uk-margin-remove-bottom">
                    Pizza Details:
              </h2>
              <p>
                <span class="uk-text-bold">Pizza Type :</span> ${ order.getPizzaType() }
              </p>
              <p>
                <span class="uk-text-bold">Pizza Size :</span> ${ order.getPizzaSize() }
              </p>
              <p>
                <span class="uk-text-bold">Quantity :</span> ${ order.getQuantity() }
              </p>
              <p>
                <span class="uk-text-bold">Discount Coupon:</span> ${ order.getDiscountCoupon() }
              </p>
              
               <br />
               <br />
               <p>
                <span class="uk-text-bold">Total :</span> ${ order.getBill() }
              </p>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
