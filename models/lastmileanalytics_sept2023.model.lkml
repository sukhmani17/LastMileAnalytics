# Define the database connection to be used for this model.
connection: "lastmileanalytics_sept2023"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: lastmileanalytics_sept2023_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lastmileanalytics_sept2023_default_datagroup

explore: morris_bank_3414223_dublin_time_of_day0_zero_point_report {}
