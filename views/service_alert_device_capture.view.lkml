view: service_alert_device_capture {
  sql_table_name: `Look_ml_test_schema.service_alert_device_capture` ;;

  dimension_group: act {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.act_date ;;
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
  dimension: avg_txn_device_lbl {
    type: number
    sql: ${TABLE}.avg_txn_device_lbl ;;
  }
  dimension: avg_txn_device_lbl_fp {
    type: number
    sql: ${TABLE}.avg_txn_device_lbl_fp ;;
  }
  dimension: avg_txn_device_lbl_tp {
    type: number
    sql: ${TABLE}.avg_txn_device_lbl_tp ;;
  }
  dimension: avg_txn_device_tp {
    type: number
    sql: ${TABLE}.avg_txn_device_tp ;;
  }
  dimension: is_alert_raised {
    type: yesno
    sql: ${TABLE}.is_alert_raised ;;
  }
  dimension: is_alert_raised_fp {
    type: yesno
    sql: ${TABLE}.is_alert_raised_fp ;;
  }
  dimension: is_alert_raised_tp {
    type: yesno
    sql: ${TABLE}.is_alert_raised_tp ;;
  }
  dimension: service_time {
    type: string
    sql: to_char(${avg_txn}, 'YYYY-MM-DD');;
  }
  dimension: sigma {
    type: number
    sql: ${TABLE}.sigma ;;
  }
  dimension: sigma_fp {
    type: number
    sql: ${TABLE}.sigma_fp ;;

  }
  dimension: sigma_lbl {
    type: number
   # sql: ${TABLE}.sigma_lbl ;;
    sql: IFNULL((${sum_transactions} - ${avg_txn_device}) / NULLIF(${stdd_txn_device},0),0) ;;
  }
  dimension: sigma_lbl_fp {
    type: number
    sql: ${TABLE}.sigma_lbl_fp ;;
  }
  dimension: sigma_lbl_tp {
    type: number
    sql: ${TABLE}.sigma_lbl_tp ;;
  }
  dimension: sigma_tp {
    type: number
    sql: ${TABLE}.sigma_tp ;;
  }
  dimension: stdd_txn_device {
    type: number
    sql: ${TABLE}.stdd_txn_device ;;
  }
  dimension: stdd_txn_device_fp {
    type: number
    sql: ${TABLE}.stdd_txn_device_fp ;;
  }
  dimension: stdd_txn_device_lbl {
    type: number
    sql: ${TABLE}.stdd_txn_device_lbl ;;
  }
  dimension: stdd_txn_device_lbl_fp {
    type: number
    sql: ${TABLE}.stdd_txn_device_lbl_fp ;;
  }
  dimension: stdd_txn_device_lbl_tp {
    type: number
    sql: ${TABLE}.stdd_txn_device_lbl_tp ;;
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
  dimension: sum_device_transactions {
    type: number
    sql: ${TABLE}.sum_device_transactions ;;
  }
  dimension: sum_device_transactions_raw {
    type: number
    sql: ${TABLE}.sum_device_transactions_raw ;;
  }
  dimension: sum_fp_transactions {
    type: number
    sql: ${TABLE}.sum_fp_transactions ;;
  }
  dimension: sum_fp_transactions_raw {
    type: number
    sql: ${TABLE}.sum_fp_transactions_raw ;;
  }
  dimension: sum_tp_transactions {
    type: number
    sql: ${TABLE}.sum_tp_transactions ;;
  }
  dimension: sum_tp_transactions_raw {
    type: number
    sql: ${TABLE}.sum_tp_transactions_raw ;;
  }
  dimension: sum_transactions {
    type: number
    sql: ${TABLE}.sum_transactions ;;
  }
  dimension: sum_transactions_raw {
    type: number
    sql: ${TABLE}.sum_transactions_raw ;;
  }
  dimension: txn_avg_period {
    type: string
    sql: ${TABLE}.txn_avg_period ;;
  }
  dimension: week_cnt {
    type: number
    sql: ${TABLE}.week_cnt ;;
  }

  measure: count {
    type: count
    drill_fields: [sub_name]
  }
}
