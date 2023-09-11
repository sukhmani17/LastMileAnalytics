# The name of this view in Looker is "3474342 First State Bank Mendota Hq Time of Day0 Zero Point Report"
view: 3474342_first_state_bank__mendota_hq_time_of_day0_zero_point_report {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Vista_footfall.3474342_First_State_Bank__Mendota_HQ_Time_of_Day-0_zero_point_report` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension_group: date2 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date2 ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Day of Week" in Explore.

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.Day_of_Week ;;
  }

  dimension: hashed_device_id {
    type: string
    sql: ${TABLE}.Hashed_Device_ID ;;
  }

  dimension: polygon_id {
    type: string
    sql: ${TABLE}.Polygon_ID ;;
  }

  dimension: time_of_day {
    type: string
    sql: ${TABLE}.Time_of_Day ;;
  }

  dimension: time_of_day2 {
    type: number
    sql: ${TABLE}.Time_of_Day2 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_time_of_day2 {
    type: sum
    sql: ${time_of_day2} ;;  }
  measure: average_time_of_day2 {
    type: average
    sql: ${time_of_day2} ;;  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}.Time_Zone ;;
  }

  dimension: unix_timestamp_of_visit {
    type: number
    sql: ${TABLE}.Unix_Timestamp_of_Visit ;;
  }
  measure: count {
    type: count
  }
}
