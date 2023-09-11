# The name of this view in Looker is "3474356 First State Bank Monticello Pathing0 Pathing X Context Report"
view: 3474356_first_state_bank_monticello_pathing0_pathing_x_context_report {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Vista_footfall.3474356_First_State_Bank_Monticello_Pathing-0_pathing_x_context_report` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Category" in Explore.

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: hashed_device_id {
    type: string
    sql: ${TABLE}.Hashed_Device_ID ;;
  }

  dimension: lat_long {
    type: string
    sql: ${TABLE}.lat_long ;;
  }

  dimension: lat_of_observation_point {
    type: number
    sql: ${TABLE}.Lat_of_Observation_Point ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_lat_of_observation_point {
    type: sum
    sql: ${lat_of_observation_point} ;;  }
  measure: average_lat_of_observation_point {
    type: average
    sql: ${lat_of_observation_point} ;;  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: local {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Local_Date ;;
  }

  dimension: local_day_of_week {
    type: string
    sql: ${TABLE}.Local_Day_of_Week ;;
  }

  dimension: local_time_of_day {
    type: string
    sql: ${TABLE}.Local_Time_of_Day ;;
  }

  dimension: local_timezone_of_observation_point {
    type: string
    sql: ${TABLE}.Local_Timezone_of_Observation_Point ;;
  }

  dimension: lon_of_observation_point {
    type: number
    sql: ${TABLE}.Lon_of_Observation_Point ;;
  }

  dimension: polygon_id {
    type: number
    sql: ${TABLE}.Polygon_Id ;;
  }

  dimension: polygon_name {
    type: string
    sql: ${TABLE}.Polygon_Name ;;
  }

  dimension: study_polygon {
    type: string
    sql: ${TABLE}.Study_Polygon ;;
  }

  dimension: time_before_appearance_in_polygon {
    type: number
    sql: ${TABLE}.Time_before_appearance_in_polygon ;;
  }

  dimension: unix_timestamp_of_observation_point {
    type: number
    sql: ${TABLE}.Unix_Timestamp_of_Observation_Point ;;
  }
  measure: count {
    type: count
    drill_fields: [polygon_name]
  }
}
