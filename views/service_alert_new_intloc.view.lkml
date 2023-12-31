view: service_alert_new_intloc {
  sql_table_name: `Look_ml_test_schema.service_alert_new_intloc` ;;
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
  dimension: intloc {
    type: string
    sql: ${TABLE}.intloc ;;
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
  measure: total_intloc_count {
    type: count_distinct
    label: "Total Intloc Count"
    sql: ${TABLE}."INTLOC" ;;
  }

  measure: new_intloc_count {
    type: count_distinct
    label: "New Intloc Count"
    sql:  ${TABLE}."IS_NEW" ;;
  }

  measure: distinct_subscribr_count {
    type: count_distinct
    label: "Distinct Subscriber Count"
    sql: ${TABLE}."SUBSCRIBER_ID" ;;
  }
}
