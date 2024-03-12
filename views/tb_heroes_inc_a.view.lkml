# The name of this view in Looker is "Tb Heroes Inc A"
view: tb_heroes_inc_a {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "SC_MODEL_A"."TB_HEROES_INC_A" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Eye Color" in Explore.

  dimension: eye_color {
    type: string
    sql: ${TABLE}."EYE_COLOR" ;;
  }

  dimension: first_appearance {
    type: number
    sql: ${TABLE}."FIRST_APPEARANCE" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_first_appearance {
    type: sum
    sql: ${first_appearance} ;;  }
  measure: average_first_appearance {
    type: average
    sql: ${first_appearance} ;;  }

  dimension: gender {
    type: string
    sql: ${TABLE}."GENDER" ;;
  }

  dimension: hair_color {
    type: string
    sql: ${TABLE}."HAIR_COLOR" ;;
  }

  dimension: identity {
    type: string
    sql: ${TABLE}."IDENTITY" ;;
  }

  dimension: intelligence {
    type: string
    sql: ${TABLE}."INTELLIGENCE" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: publisher {
    type: string
    sql: ${TABLE}."PUBLISHER" ;;
  }

  dimension: strength {
    type: number
    sql: ${TABLE}."STRENGTH" ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
