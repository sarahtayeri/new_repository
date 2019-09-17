view: sql_runner_query {
  derived_table: {
    sql: SELECT
        COUNT(DISTINCT order_items.id ) AS `order_items.lifetime_orders`
      FROM demo_db.order_items  AS order_items

      LIMIT 500
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: order_items_lifetime_orders {
    type: number
    sql: ${TABLE}.`order_items.lifetime_orders` ;;
  }

  set: detail {
    fields: [order_items_lifetime_orders]
  }
}
