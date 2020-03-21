- dashboard: ramp_project
  title: ramp_project
  layout: newspaper
  elements:
  - name: Expensive items per brand
    title: Expensive items per brand
    model: ramp_proj
    explore: order_items
    type: looker_column
    fields: [products.brand, products.count_expensive]
    sorts: [products.count_expensive desc]
    limit: 500
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: "# Expensive items", orientation: left, series: [{axisId: products.count_expensive,
            id: products.count_expensive, name: Count Expensive}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 0
    col: 0
    width: 8
    height: 6
  - name: Men/Women Inventory Comparison
    title: Men/Women Inventory Comparison
    model: new_project
    explore: products
    type: looker_bar
    fields: [products.brand, products.count, products.department]
    pivots: [products.department]
    sorts: [products.department 0, calculation_1 desc]
    limit: 10
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'sum(pivot_row(${products.count}))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: supermeasure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Number of Products, orientation: bottom, series: [{axisId: products.count,
            id: Men - products.count, name: Men}, {axisId: products.count, id: Women
              - products.count, name: Women}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: ''
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      Women - products.count: "#F9CB67"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [calculation_1]
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Customers by Age
    name: Customers by Age
    model: ramp_proj
    explore: users
    type: looker_scatter
    fields: [users.count, users.age]
    sorts: [users.age]
    limit: 500
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: circle
    series_colors:
      users.count: "#FCC03E"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 6
  - name: Created Users per Month
    title: Created Users per Month
    model: new_project
    explore: users
    type: looker_line
    fields: [users.created_month, users.count]
    fill_fields: [users.created_month]
    sorts: [users.created_month]
    limit: 500
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    row: 12
    col: 0
    width: 8
    height: 6
  - title: Total Users Count
    name: Total Users Count
    model: new_project
    explore: users
    type: single_value
    fields: [users.count]
    limit: 500
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
    custom_color_enabled: true
    custom_color: "#F9CB67"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 6
    col: 8
    width: 8
    height: 6
  - name: Category Purchases
    title: Category Purchases
    model: new_project
    explore: order_items
    type: looker_area
    fields: [products.category, order_items.count, orders.created_week]
    pivots: [products.category]
    fill_fields: [orders.created_week]
    filters:
      orders.created_week: 2018/01/01 to 2019/01/01
      products.category: Outerwear & Coats,Jeans,Accessories,Socks & Hosiery,Sweaters
    sorts: [products.category, orders.created_week desc]
    limit: 500
    column_limit: 10
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Week
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 6
    col: 16
    width: 8
    height: 6
  - name: Top Selling Categories
    title: Top Selling Categories
    model: ramp_proj
    explore: products
    type: looker_pie
    fields: [products.category, products.summed_price]
    sorts: [products.summed_price desc]
    limit: 15
    dynamic_fields: [{table_calculation: percent_of_summed, label: Percent of summed,
        expression: "${products.summed_price}/sum(${products.summed_price})", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    series_types: {}
    hidden_fields: [percent_of_summed]
    row: 6
    col: 0
    width: 8
    height: 6
  - name: Orders by State+Gender
    title: Orders by State+Gender
    model: new_project
    explore: order_items
    type: looker_donut_multiples
    fields: [users.state, users.gender, orders.count]
    pivots: [users.gender]
    filters:
      users.state: California,New York,Alaska
    sorts: [users.gender, orders.count desc 0]
    limit: 500
    query_timezone: America/Los_Angeles
    show_value_labels: false
    font_size: 13
    hide_legend: false
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    series_colors:
      f - users.count: "#F9CB67"
      m - users.count: "#81BE56"
      f - orders.count: "#F9CB67"
      m - orders.count: "#81BE56"
    series_labels:
      f - users.count: Female
      m - users.count: Male
      f - orders.count: Female
      m - orders.count: Male
    series_types: {}
    row: 12
    col: 8
    width: 8
    height: 6
  - name: Weird Filter
    title: Weird Filter
    model: ramp_proj
    explore: user_data
    type: looker_funnel
    fields: [users.created_month, users.count]
    fill_fields: [users.created_month]
    filters:
      users.created_month: '2018'
    sorts: [users.created_month desc]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${users.count}/sum(${users.count})",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    smoothedBars: false
    orientation: automatic
    labelPosition: hidden
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    series_types: {}
    hidden_fields: [calculation_1]
    row: 12
    col: 16
    width: 8
    height: 6
  - name: Earliest/Latest Order Date Timeline
    title: Earliest/Latest Order Date Timeline
    model: ramp_proj
    explore: order_items
    type: looker_timeline
    fields: [users.id, orders.earliest_date, orders.latest_date, orders.count]
    sorts: [users.id]
    limit: 500
    query_timezone: America/Los_Angeles
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
        reverse: true
    groupBars: true
    labelSize: 10pt
    showLegend: true
    series_types: {}
    row: 18
    col: 0
    width: 8
    height: 6
  - name: Single Record - Highest Ordering Customer
    title: Single Record - Highest Ordering Customer
    model: new_project
    explore: orders
    type: looker_single_record
    fields: [users.id, orders.count, users.first_name, users.last_name, users.city,
      users.state, users.age, users.email, users.created_date]
    filters:
      users.id: '697'
    sorts: [orders.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    row: 18
    col: 8
    width: 8
    height: 6
  - name: Orders Map
    title: Orders Map
    model: new_project
    explore: orders
    type: looker_geo_choropleth
    fields: [orders.count, users.state]
    sorts: [users.state]
    limit: 500
    query_timezone: America/Los_Angeles
    map: usa
    map_projection: ''
    show_view_names: false
    quantize_colors: false
    series_types: {}
    row: 18
    col: 16
    width: 8
    height: 6
  filters:
  - name: This Week
    title: This Week
    type: date_filter
    default_value: 7 days
    allow_multiple_values: true
    required: false
