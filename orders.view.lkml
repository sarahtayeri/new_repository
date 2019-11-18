view: orders {
  sql_table_name: demo_db.orders ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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



  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
    required_access_grants: [access_grant_test]
  }

  measure: sum_user_id {
    type: sum
    sql: ${user_id} ;;
  }


  measure: count {
    type: count
    drill_fields: [id, users.first_name, users.id, users.last_name, order_items.count]
  }
}
