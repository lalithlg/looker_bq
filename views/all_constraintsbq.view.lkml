view: all_constraintsbq {
  sql_table_name: `shared-data-analytics.Look_ml_test_schema.all_constraintsbq` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension_group: registration {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.registration_date ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
