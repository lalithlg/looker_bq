view: intloc_list {
  sql_table_name: `Look_ml_test_schema.intloc_list` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: act {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.act_date ;;
  }
  dimension_group: act_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.act_date_date ;;
  }
  dimension: act_date_rw {
    type: number
    sql: ${TABLE}.act_date_raw ;;
  }
  dimension: intloc {
    type: string
    sql: ${TABLE}.intloc ;;
  }
  dimension_group: min_service {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.min_service_date ;;
  }
  dimension: subscriber_id {
    type: number
    sql: ${TABLE}.subscriber_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
