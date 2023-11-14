view: service_alert_daily_mdr_txn_int {
  sql_table_name: `Look_ml_test_schema.service_alert_daily_mdr_txn_int` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension: integration_point_name {
    type: string
    sql: ${TABLE}.integration_point_name ;;
  }
  dimension_group: service_datetime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.service_datetime_date ;;
  }
  dimension: service_datetime_rw {
    type: number
    sql: ${TABLE}.service_datetime_raw ;;
  }
  dimension: subscriber_id {
    type: number
    sql: ${TABLE}.subscriber_id ;;
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
    drill_fields: [id, integration_point_name]
  }
}
