# The name of this view in Looker is "First Peoples Bank Pine Mountain 3393175 Card Project 30492 Vis Card Production Visitor Demographics0 Demographics Report Usa By Geography Summary"
view: first_peoples_bank_pine_mountain_3393175_card_project_30492__vis_card_production___visitor_demographics0_demographics_report_usa_by_geography_summary {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Vista_footfall.FirstPeoplesBank_PineMountain_3393175_CardProject_30492_-_VisCard_production__-_Visitor_Demographics-0_demographics_report_usa_by_geography_summary` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Category" in Explore.

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: devices {
    type: number
    sql: ${TABLE}.devices ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_devices {
    type: sum
    sql: ${devices} ;;  }
  measure: average_devices {
    type: average
    sql: ${devices} ;;  }

  dimension: sub_category {
    type: string
    sql: ${TABLE}.sub_category ;;
  }

  dimension: sub_category_sort_order {
    type: number
    sql: ${TABLE}.sub_category_sort_order ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}.unit ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
  }
}
