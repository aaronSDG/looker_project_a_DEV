# The name of this view in Looker is "Tb Products A"
view: tb_products_a {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "SC_MODEL_A"."TB_PRODUCTS_A" ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Categoria" in Explore.

  dimension: categoria {
    type: string
    sql: ${TABLE}."CATEGORIA" ;;
  }

  dimension: nombre_producto {
    type: string
    sql: ${TABLE}."NOMBRE_PRODUCTO" ;;
  }

  dimension: precio {
    type: number
    sql: ${TABLE}."PRECIO" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_precio {
    type: sum
    sql: ${precio} ;;  }
  measure: average_precio {
    type: average
    sql: ${precio} ;;  }

  dimension: stock {
    type: number
    sql: ${TABLE}."STOCK" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
