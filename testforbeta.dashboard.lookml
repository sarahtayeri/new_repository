- dashboard: access_test
  title: access test
  layout: newspaper
  elements:
  - name: ex look with drills
    title: ex look with drills
    model: new_project
    explore: products
    type: table
    fields: [products.category, products.count]
    sorts: [products.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    row: 0
    col: 0
    width: 8
    height: 6
