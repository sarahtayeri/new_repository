view: order_items {
  sql_table_name: demo_db.order_items ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: testnumber {
    type: number
    sql: 2 ;;
  }

  dimension: test_mult {
    type: number
    sql: ${id}*${testnumber} ;;
  }

  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }


  dimension_group: returned {
    type: time
    datatype: datetime
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.returned_at ;;
  }

  dimension: sale_price {
    label: "test for a label"
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  dimension: testing_for_background {
    type: string
    sql: "this is a test" ;;
    html: <p style="color: black; background-color: lightblue; font-size:100%; text-align:center">{{ rendered_value }}</p>;;
  }

  measure: count {
    type: count
    drill_fields: [id, orders.id, inventory_items.id]
  }

  ## For grouped stacked columns test

  measure: lifetime_orders {
    type: count_distinct
    sql: ${id} ;;
    #drill_fields: [order_id]
  }

 measure: filtered_meas {
   type: count
   filters: {
    field: id
    value: "100, 101, 102"
   }
 }


  measure: test_typenum {
    type: number
    sql: ${lifetime_orders}*2 ;;
  }

  measure: repeat_customer {
    type: yesno
    sql: ${lifetime_orders}>1 ;;
  }

}
