view: service_alert_new_first_party {
  sql_table_name: `Look_ml_test_schema.service_alert_new_first_party` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
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
  dimension: subscriber_id {
    type: number
    sql: ${TABLE}.subscriber_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
  measure: current_transactions {
    type: number
    label: "Current Transaction Count"
    sql: ${service_alert_device_capture.sum_transactions} ;;

  }

  measure: current_device_transactions {
    type: number
    label: "Current Device Transaction Count"
    sql: ${service_alert_device_capture.sum_device_transactions} ;;

  }

  measure: current_fp_transactions {
    type: number
    label: "Current 1st Party Transaction Count"
    sql: ${service_alert_device_capture.sum_fp_transactions} ;;

  }

  measure: current_tp_transactions {
    type: number
    label: "Current 3rd Party Transaction Count"
    sql: ${service_alert_device_capture.sum_tp_transactions} ;;

  }
}
