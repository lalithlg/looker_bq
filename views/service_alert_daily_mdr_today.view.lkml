view: service_alert_daily_mdr_today {
  sql_table_name: `Look_ml_test_schema.service_alert_daily_mdr_today` ;;

  dimension_group: service_datetime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.service_datetime ;;
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
  measure: count {
    type: count
    drill_fields: [sub_name]
  }
}
