connection: "softility_bq"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: looker_bq_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_bq_project_default_datagroup

explore: service_alert_daily_mdr_by_period_int {}

explore: new_intloc_list {}

explore: intloc_list {}

explore: service_alert_daily_mdr_txn {}

explore: service_alert_daily_mdr_today {}

explore: new_sub_list {}

explore: service_alert_daily_mdr_today_int {}

explore: service_alert_daily_mdr_by_period {}

explore: service_alert_new_intloc {}

explore: service_alert_device_capture {}

#explore: service_alert_new_first_party {}

explore: service_alert_device_capture_int {}

explore: service_alert_daily_mdr_txn_int {}

explore: sub_list {}

explore: service_alert_new_first_party {
  label: "service alert new first party"
  description: "Explore based on the service_alert_device_capture view."

  join: service_alert_device_capture {
    relationship: many_to_one
    sql_on: ${service_alert_device_capture.subscriber_id} = ${service_alert_new_first_party.subscriber_id};;
  }
}
