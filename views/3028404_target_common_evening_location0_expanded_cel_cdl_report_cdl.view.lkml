# The name of this view in Looker is "3028404 Target Common Evening Location0 Expanded Cel Cdl Report Cdl"
view: 3028404_target_common_evening_location0_expanded_cel_cdl_report_cdl {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Vista_footfall.3028404_Target_Common_Evening_Location-0_expanded_cel_cdl_report_cdl` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Common Daytime Admin" in Explore.

  dimension: common_daytime_admin {
    type: string
    sql: ${TABLE}.Common_Daytime_Admin ;;
  }

  dimension: common_daytime_census {
    type: string
    sql: ${TABLE}.Common_Daytime_Census ;;
  }

  dimension: common_daytime_country {
    type: string
    sql: ${TABLE}.Common_Daytime_Country ;;
  }

  dimension: common_daytime_custom1 {
    type: string
    sql: ${TABLE}.Common_Daytime_Custom1 ;;
  }

  dimension: common_daytime_custom2 {
    type: string
    sql: ${TABLE}.Common_Daytime_Custom2 ;;
  }

  dimension: common_daytime_distance_mi {
    type: number
    sql: ${TABLE}.Common_Daytime_Distance_Mi ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_common_daytime_distance_mi {
    type: sum
    sql: ${common_daytime_distance_mi} ;;  }
  measure: average_common_daytime_distance_mi {
    type: average
    sql: ${common_daytime_distance_mi} ;;  }

  dimension: common_daytime_lat {
    type: number
    sql: ${TABLE}.Common_Daytime_Lat ;;
  }

  dimension: common_daytime_long {
    type: number
    sql: ${TABLE}.Common_Daytime_Long ;;
  }

  dimension: common_daytime_micro {
    type: string
    sql: ${TABLE}.Common_Daytime_Micro ;;
  }

  dimension: common_daytime_municipality {
    type: string
    sql: ${TABLE}.Common_Daytime_Municipality ;;
  }

  dimension: common_daytime_postal1 {
    type: string
    sql: ${TABLE}.Common_Daytime_Postal1 ;;
  }

  dimension: common_daytime_postal2 {
    type: string
    sql: ${TABLE}.Common_Daytime_Postal2 ;;
  }

  dimension: common_daytime_province {
    type: string
    sql: ${TABLE}.Common_Daytime_Province ;;
  }

  dimension: first_visit_date {
    type: string
    sql: ${TABLE}.First_Visit_Date ;;
  }

  dimension: first_visit_day_of_week {
    type: string
    sql: ${TABLE}.First_Visit_Day_of_Week ;;
  }

  dimension: first_visit_time {
    type: string
    sql: ${TABLE}.First_Visit_Time ;;
  }

  dimension: first_visit_timestamp {
    type: number
    sql: ${TABLE}.First_Visit_Timestamp ;;
  }

  dimension: hashed_ubermedia_id {
    type: string
    sql: ${TABLE}.Hashed_Ubermedia_Id ;;
  }

  dimension: polygon_id {
    type: string
    sql: ${TABLE}.Polygon_Id ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}.Visits ;;
  }
  measure: count {
    type: count
  }
}
