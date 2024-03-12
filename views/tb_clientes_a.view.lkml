# The name of this view in Looker is "Tb Clientes A"
view: tb_clientes_a {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "SC_MODEL_A"."TB_CLIENTES_A" ;;
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
    # This dimension will be called "Apellido" in Explore.

  dimension: apellido {
    type: string
    sql: ${TABLE}."APELLIDO" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}."NOMBRE" ;;
  }

  dimension: numero_pedido {
    type: number
    sql: ${TABLE}."NUMERO_PEDIDO" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_numero_pedido {
    type: sum
    sql: ${numero_pedido} ;;  }
  measure: average_numero_pedido {
    type: average
    sql: ${numero_pedido} ;;  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
