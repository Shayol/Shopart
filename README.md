= Shopart

This project uses MIT-LICENSE.

### Add Shopart to your app Gemfile 

### Copy engine's migrations

```bash

rake shopart:install:migrations
```

### Run migrations only for Shopart engine

```bash

rake db:migrate SCOPE=shopart
```

#### or run all migrations
```bash

rake db:migrate
```

### Add your product to order with this form

```ruby

<%= form_for :order_item, url: shopart.order_items_path, method: :post, class: "form-inline" do |f| %>
    <div class="col-md-6">
      <%= f.number_field :quantity, value: 1, within: 1..100, class: "form-control addBook_quantity" %>
    </div>
      <%= f.hidden_field :product_type, value: "Book" %>
      <%= f.hidden_field :product_id, value: book.id %>
    <div class="col-md-3">
      <%= f.submit "ADD ITEM", class: "btn btn-info"%>
    </div>
<% end %>
```


### Use this helper to go to the cart page. Cart page is a root page for the Shopart engine.

```ruby
<% if current_or_guest_user && current_or_guest_user.orders.in_progress %>
    <%= link_to shopart.root_path %>
      <i class="fa fa-shopping-cart">
        CART(<%= current_or_guest_user.current_order.order_items.count %>)
          <%= number_to_currency(current_or_guest_user.current_order.total_price) %>
      </i>
    <% end %>
    <% else %>
    <i class="fa fa-shopping-cart">
      CART(EMPTY)
    </i>
  <% end %>
  ```

  You can access engines routes by prepending them with ```shopart.```