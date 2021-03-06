connection: "thelook"

# include all the views
include: "*.view"
include: "testforbeta.dashboard"

datagroup: new_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: new_project_default_datagroup

# fiscal_month_offset: 1

explore: connection_reg_r3 {}

explore: derived_test_table_3_20190510 {}

explore: events {
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

#test to copy explore

explore: events_2 {
  from: events
  join: users {
    type: left_outer
    sql_on: ${events_2.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}



explore: inventory_items {
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: order_items {
  # required_joins: [orders]
  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}



explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders2 {
  from: orders
}

# explore: user_data2 {
#   from: user_data
#   extends: [order_items]
# }


explore: products {}

explore: schema_migrations {}

explore: user_data {
  join: users {
    type: left_outer
    sql_on: ${user_data.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

#test adding dt
explore: sql_runner_query {}

#test weird extend
explore: ordersextend {}


explore: users {}

explore: users_nn {}

explore: zozo_table_20190507 {}

explore: zozo_table_20190508 {}

explore: zozo_table_null {}

explore: ordersextest {}

access_grant: access_grant_test {
  user_attribute: id
  allowed_values: ["25" ]
}
