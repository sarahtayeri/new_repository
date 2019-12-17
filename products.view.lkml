view: products {
  sql_table_name: demo_db.products ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    type: string
    #test group label
    group_label:
    " {% if _explore._name=='Products' %}
      Product group label
      {% elsif _explore._name=='Order Items' %}
      Order Items group label
      {% endif %} "
    sql: ${TABLE}.category ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }

#filtered count example
##
  measure: count_both {
    type: count
    filters: {
      field: brand
      value: "-Farah, -Abini"
    }
#     filters: {
#       field: brand
#       value: "-Abini"
#     }
    drill_fields: [id, item_name, inventory_items.count]
  }
# ##

measure: test {
  type: number
  sql: ${count}-${count_both} ;;
}

measure: test_count {
  type: count
  filters: {
    field: brand
    value: "By the Sword^, Inc."
  }
}

parameter: calc_selector {
  description: "To be used with liquid price measure"
  type: unquoted
  allowed_value: {
    value: "SUM"
    label: "Sum of retail price"
  }
  allowed_value: {
    value: "AVG"
    label: "Average of retail price"
  }
  allowed_value: {
    value: "MAX"
    label: "Max. retail price"
  }
  allowed_value: {
    value: "MIN"
    label: "Min. retail price"
  }
}

measure: liquid_price_measure {
  type: number
  value_format_name: usd
  sql: {% parameter calc_selector %}(${retail_price}) ;;
}


# dimension: testing {
#   type: string
#   sql: case when ${id}>${sum_rank} then "ok" else "not ok" end;;
# }


# dimension: sljfal {
#   type: number
#   sql: ${sum_rank}-${id} ;;
# }




  measure: sum_rank {
    type: sum
    sql: ${rank} ;;
  }
}
