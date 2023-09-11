# The name of this view in Looker is "2756167 Fncb Kingston2 Zero Point Report3"
view: 2756167_fncb_kingston2_zero_point_report3 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Vista_footfall.2756167_fncb_kingston2_zero_point_report3` ;;

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

  dimension_group: date_7 {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date_7 ;;
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

  dimension: time_of_day1 {
    type: string
    sql: ${TABLE}.Time_of_Day1 ;;
  }

  dimension: time_of_day2 {
    type: string
    sql: ${TABLE}.Time_of_Day2 ;;
  }

  dimension: time_of_day3 {
    type: number
    sql: ${TABLE}.Time_of_Day3 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_time_of_day3 {
    type: sum
    sql: ${time_of_day3} ;;  }
  measure: average_time_of_day3 {
    type: average
    sql: ${time_of_day3} ;;  }

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
