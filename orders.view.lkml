view: orders {
  sql_table_name: demo_db.orders ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: testnulls {
    type: number
    sql: CASE WHEN ${id}<10 THEN NULL ELSE ${id} END ;;
  }

  filter: cal {
    type: date
  }

  parameter: cal2 {
    type: date
  }



  dimension_group: created {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      week,
      month,
      quarter,
      fiscal_quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

#   dimension_group: created {
#     type: time
#     timeframes: [date]
#     sql: ${TABLE}.created_at ;;
#   }


  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
    html:
    {% if value == 'pending' %}
    <p style="color: red">{{value}}</p>
    {% else %}
    <p style="color: green">{{value}}</p>
    {% endif %}
    ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
    #required_access_grants: [access_grant_test]
  }

  measure: sum_user_id {
    type: sum
    sql: ${user_id} ;;
  }

#   measure: testingdivision {
#     type: number
#     sql: ${products.retail_price}/${count} ;;
#   }


  measure: count {
    type: count
    drill_fields: [id, users.first_name, users.id, users.last_name, order_items.count]
  }
}
