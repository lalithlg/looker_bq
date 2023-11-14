view: service_alert_daily_mdr_by_period {
  sql_table_name: `Look_ml_test_schema.service_alert_daily_mdr_by_period` ;;

  dimension_group: act_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.act_date_date ;;
  }
  dimension: avg_txn {
    type: number
    sql: ${TABLE}.avg_txn ;;
  }
  dimension: avg_txn_device {
    type: number
    sql: ${TABLE}.avg_txn_device ;;
  }
  dimension: avg_txn_device_fp {
    type: number
    sql: ${TABLE}.avg_txn_device_fp ;;
  }
  dimension: avg_txn_device_tp {
    type: number
    sql: ${TABLE}.avg_txn_device_tp ;;
  }
  dimension: integration_point_name {
    type: string
    sql: ${TABLE}.integration_point_name ;;
  }
  dimension: is_before_act_time {
    type: yesno
    sql: ${TABLE}.is_before_act_time ;;
  }
  dimension: is_on_act_time {
    type: yesno
    sql: ${TABLE}.is_on_act_time ;;
  }
  dimension: message_name {
    type: string
    sql: ${TABLE}.message_name ;;
  }
  dimension_group: service_datetime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.service_datetime_date ;;
  }
  dimension: stdd_txn {
    type: number
    sql: ${TABLE}.stdd_txn ;;
  }
  dimension: stdd_txn_device {
    type: number
    sql: ${TABLE}.stdd_txn_device ;;
  }
  dimension: stdd_txn_device_fp {
    type: number
    sql: ${TABLE}.stdd_txn_device_fp ;;
  }
  dimension: stdd_txn_device_tp {
    type: number
    sql: ${TABLE}.stdd_txn_device_tp ;;
  }
  dimension: sub_name {
    type: string
    sql: ${TABLE}.sub_name ;;
  }
  dimension: subscriber_id {
    type: number
    sql: ${TABLE}.subscriber_id ;;
  }
  dimension: sum_device_rate {
    type: number
    sql: ${TABLE}.sum_device_rate ;;
  }
  dimension: sum_device_rate_fp {
    type: number
    sql: ${TABLE}.sum_device_rate_fp ;;
  }
  dimension: sum_device_rate_tp {
    type: number
    sql: ${TABLE}.sum_device_rate_tp ;;
  }
  dimension: sum_device_transactions {
    type: number
    sql: ${TABLE}.sum_device_transactions ;;
  }
  dimension: sum_fp_transactions {
    type: number
    sql: ${TABLE}.sum_fp_transactions ;;
  }
  dimension: sum_tp_transactions {
    type: number
    sql: ${TABLE}.sum_tp_transactions ;;
  }
  dimension: sum_transactions {
    type: number
    sql: ${TABLE}.sum_transactions ;;
  }
  dimension: week_cnt {
    type: number
    sql: ${TABLE}.week_cnt ;;
  }
  dimension: concatenated_name {
    type: string
    sql: CONCAT(${TABLE}."SUB_NAME", ' - ', ${TABLE}."INTEGRATION_POINT_NAME") ;;
  }
  measure: count {
    type: count
    drill_fields: [sub_name, message_name, integration_point_name]
  }
  measure: week_cnt_1 {
    type: count
  }
  measure: avg_txn_1 {
    type: number
    sql: ROUND(AVG(${sum_transactions}),0) ;;
  }

  measure: avg_txn_device_1 {
    type: number
    sql: ROUND(AVG(${sum_device_transactions} / ${sum_transactions}),5) ;;
  }

  measure: avg_txn_device_fp_1 {
    type: number
    sql: ROUND(AVG(${sum_fp_transactions} / ${sum_transactions}),5) ;;
  }

  measure: avg_txn_device_tp_1 {
    type: number
    sql: ROUND(AVG(${sum_tp_transactions} / ${sum_transactions}),5) ;;
  }

  measure: stdd_txn_1 {
    type: number
    sql: STDDEV(${sum_transactions}) ;;
  }

  measure: stdd_txn_fp_1 {
    type: number
    sql: STDDEV(${sum_fp_transactions}) ;;
  }

  measure: stdd_txn_tp_1 {
    type: number
    sql: STDDEV(${sum_tp_transactions}) ;;
  }

  measure: stdd_txn_device_1 {
    type: number
    sql: ROUND(STDDEV(${sum_device_transactions} / ${sum_transactions}),5) ;;
  }

  measure: stdd_txn_device_fp_1 {
    type: number
    sql: ROUND(STDDEV(${sum_fp_transactions} / ${sum_transactions}),5) ;;
  }

  measure: stdd_txn_device_tp_1 {
    type: number
    sql: ROUND(STDDEV(${sum_tp_transactions} / ${sum_transactions}),5) ;;
  }
}
