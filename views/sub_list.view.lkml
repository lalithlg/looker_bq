view: sub_list {
  sql_table_name: `Look_ml_test_schema.sub_list` ;;
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
  dimension_group: first_seen {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.first_seen_date ;;
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
