# The name of this view in Looker is "3354147 Unified Bank Ohio Common Evening Location0 Expanded Cel Cdl Report Cel"
view: 3354147_unified_bank_ohio_common_evening_location0_expanded_cel_cdl_report_cel {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Vista_footfall.3354147_UnifiedBank_Ohio_Common_Evening_Location-0_expanded_cel_cdl_report_cel` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Common Evening Admin" in Explore.

  dimension: common_evening_admin {
    type: string
    sql: ${TABLE}.Common_Evening_Admin ;;
  }

  dimension: common_evening_census {
    type: number
    sql: ${TABLE}.Common_Evening_Census ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_common_evening_census {
    type: sum
    sql: ${common_evening_census} ;;  }
  measure: average_common_evening_census {
    type: average
    sql: ${common_evening_census} ;;  }

  dimension: common_evening_country {
    type: string
    sql: ${TABLE}.Common_Evening_Country ;;
  }

  dimension: common_evening_custom1 {
    type: string
    sql: ${TABLE}.Common_Evening_Custom1 ;;
  }

  dimension: common_evening_custom2 {
    type: string
    sql: ${TABLE}.Common_Evening_Custom2 ;;
  }

  dimension: common_evening_distance_mi {
    type: number
    sql: ${TABLE}.Common_Evening_Distance_Mi ;;
  }

  dimension: common_evening_lat {
    type: number
    sql: ${TABLE}.Common_Evening_Lat ;;
  }

  dimension: common_evening_long {
    type: number
    sql: ${TABLE}.Common_Evening_Long ;;
  }

  dimension: common_evening_micro {
    type: string
    sql: ${TABLE}.Common_Evening_Micro ;;
  }

  dimension: common_evening_municipality {
    type: string
    sql: ${TABLE}.Common_Evening_Municipality ;;
  }

  dimension: common_evening_postal1 {
    type: number
    sql: ${TABLE}.Common_Evening_Postal1 ;;
  }

  dimension: common_evening_postal2 {
    type: string
    sql: ${TABLE}.Common_Evening_Postal2 ;;
  }

  dimension: common_evening_province {
    type: string
    sql: ${TABLE}.Common_Evening_Province ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: first_visit_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
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

  dimension: lat_long {
    type: string
    sql: ${TABLE}.lat_long ;;
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
