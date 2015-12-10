# Shopart

This project uses MIT-LICENSE.

1. Add Shopart to your app Gemfile 

2. Copy engine's migrations

```bash

rake shopart:install:migrations
```

3. Run migrations only for Shopart engine

```bash

rake db:migrate SCOPE=shopart
```

#### or run all migrations
```bash

rake db:migrate
```

4. Add your product to order with this form

```ruby

<%= form_for :order_item, url: shopart.order_items_path, method: :post,  do |f| %>
      <%= f.number_field :quantity, value: 1, within: 1..100 %>
    </div>
      <%= f.hidden_field :product_type, value: "Book" %>
      <%= f.hidden_field :product_id, value: book.id %>
      <%= f.submit "ADD ITEM", class: "btn btn-info"%>
<% end %>
```


### Use this helper to go to the cart page. Cart page is a root page for the Shopart engine.

```
  shopart.root_path
```
You can access engines routes by prepending them with ```shopart.```

### This helper will return current order. It works in views and controllers in a main app and in the engine.

```
  current_order
```

  