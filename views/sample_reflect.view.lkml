view: sample_reflect {
  sql_table_name: `Look_ml_test_schema.sample_reflect` ;;

  dimension: t1 {
    type: number
    sql: ${TABLE}.integration_point_name ;;
  }

  dimension: t2 {
    type: string
    sql: ${TABLE}.integration_point_name ;;
  }

  }
