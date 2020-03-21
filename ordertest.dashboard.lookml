# - dashboard: merge_test__has_html_text_tile
#   title: merge test - has html text tile
#   layout: newspaper
#   elements:
#   - name: New Tile
#     title: New Tile
#     merged_queries:
#     - model: new_project
#       explore: products
#       type: table
#       fields: [products.count]
#       limit: 500
#       query_timezone: America/Los_Angeles
#     - model: new_project
#       explore: users
#       type: table
#       fields: [users.count]
#       limit: 500
#       query_timezone: America/Los_Angeles
#       join_fields: []
#     type: table
#     row: 0
#     col: 0
#     width: 8
#     height: 6
#   - name: testing
#     type: text
#     title_text: testing
#     subtitle_text: test
#     body_text: |-
#       <font size="14px">
#       <font color="blue">
#       1. test
#       2. for
#       5. line
#       6. breaks
#       </font>
#       </font>
#     row: 0
#     col: 16
#     width: 8
#     height: 6
#   - title: New Tile
#     name: New Tile
#     model: new_project
#     explore: order_items
#     type: single_value
#     fields: [orders.id]
#     sorts: [orders.id]
#     limit: 500
#     dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: '"this
#           is a table calc"', value_format: !!null '', value_format_name: !!null '',
#         _kind_hint: dimension, _type_hint: string}]
#     query_timezone: America/Los_Angeles
#     custom_color_enabled: true
#     show_single_value_title: true
#     show_comparison: false
#     comparison_type: value
#     comparison_reverse_colors: false
#     show_comparison_label: true
#     enable_conditional_formatting: true
#     conditional_formatting: [{type: not null, value: !!null '', background_color: "#3EB0D5",
#         font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
#           palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
#         strikethrough: false, fields: !!null ''}, {type: equal to, value: !!null '',
#         background_color: "#3EB0D5", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
#           palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
#         strikethrough: false, fields: !!null ''}]
#     conditional_formatting_include_totals: false
#     conditional_formatting_include_nulls: false
#     series_types: {}
#     hidden_fields: [orders.id]
#     listen: {}
#     row: 6
#     col: 0
#     width: 8
#     height: 6
#   - title: using literal string and html
#     name: using literal string and html
#     model: new_project
#     explore: order_items
#     type: single_value
#     fields: [order_items.testing_for_background]
#     sorts: [order_items.testing_for_background]
#     limit: 500
#     query_timezone: America/Los_Angeles
#     series_types: {}
#     row: 6
#     col: 8
#     width: 8
#     height: 6
#   - name: ''
#     type: text
#     body_text: <a type="button" class="btn btn-Default btn-lg btn-block" href="https://metapack.eu.looker.com/dashboards-next/56?Planned+Date=before+1+days+from+now%2CNULL&Warehouse=&Overlay=Carrier">Overlay
#       Carrier</a>
#     row: 6
#     col: 16
#     width: 8
#     height: 6
#   - name: ''
#     type: text
#     body_text: <a type="button" class="btn btn-primary btn-lg btn-block" href="https://google.com">This
#       is a button</a>
#     row: 12
#     col: 0
#     width: 8
#     height: 6
#   - name: ''
#     type: text
#     body_text: <a href="/dashboards/89" class="btn btn-lg btn-secondary"> <b>Button
#       1 text</b></a>
#     row: 12
#     col: 8
#     width: 8
#     height: 6
#   - name: ''
#     type: text
#     body_text: <a href="https://google.com"><button>Button</button></a>
#     row: 12
#     col: 16
#     width: 8
#     height: 6
#   - name: test merged results
#     title: test merged results
#     merged_queries:
#     - model: new_project
#       explore: orders2
#       type: table
#       fields: [orders2.id, orders2.user_id]
#       limit: 500
#       query_timezone: America/Los_Angeles
#     - model: new_project
#       explore: users
#       type: table
#       fields: [users.id, users.email]
#       limit: 500
#       query_timezone: America/Los_Angeles
#       join_fields:
#       - field_name: users.id
#         source_field_name: orders2.id
#     type: table
#     listen:
#     - Untitled Filter: orders2.id
#     -
#     row: 0
#     col: 8
#     width: 8
#     height: 6
#   - title: Untitled
#     name: Untitled
#     model: git_learning
#     explore: orders
#     type: table
#     fields: [orders.id, orders.count]
#     sorts: [orders.count desc]
#     limit: 5
#     total: true
#     series_types: {}
#     listen: {}
#     row: 18
#     col: 0
#     width: 8
#     height: 5
#   filters:
#   - name: Untitled Filter
#     title: Untitled Filter
#     type: field_filter
#     default_value: ''
#     allow_multiple_values: true
#     required: false
#     model: new_project
#     explore: orders
#     listens_to_filters: []
#     field: orders.id
