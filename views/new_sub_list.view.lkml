view: new_sub_list {
  sql_table_name: `Look_ml_test_schema.new_sub_list` ;;

  dimension_group: act_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.act_date ;;
  }
  dimension_group: first_seen {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.first_seen_date ;;
  }
  dimension: is_new {
    type: yesno
    sql: ${TABLE}.is_new ;;
  }
  dimension: is_on_act_time {
    type: yesno
    sql: ${TABLE}.is_on_act_time ;;
  }
  dimension_group: service_datetime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.service_datetime ;;
  }
  dimension: subscriber_id {
    type: number
    sql: ${TABLE}.subscriber_id ;;
  }
  measure: count {
    type: count
  }
}
