# The name of this view in Looker is "Goco Market Model Performance Fixed"
view: goco_market_model_performance_fixed {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.goco_market_model_performance_fixed ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Market Adjustment Apply" in Explore.

  dimension: market_adjustment_apply {
    type: number
    sql: ${TABLE}.market_adjustment_apply ;;
  }

  dimension: market_commission_adjustment {
    type: number
    sql: ${TABLE}.market_commission_adjustment ;;
  }

  dimension: market_model_prediction {
    type: number
    sql: ${TABLE}.market_model_prediction ;;
  }

  dimension: market_model_trend_factor {
    type: number
    sql: ${TABLE}.market_model_trend_factor ;;
  }

  dimension: market_top_5_gross_price_avg {
    type: number
    sql: ${TABLE}.market_top_5_gross_price_avg ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_market_top_5_gross_price_avg {
    type: sum
    sql: ${market_top_5_gross_price_avg} ;;  }
  measure: average_market_top_5_gross_price_avg {
    type: average
    sql: ${market_top_5_gross_price_avg} ;;  }

  dimension: quote_date {
    type: string
    sql: ${TABLE}.quote_date ;;
  }

  dimension: quote_reference {
    type: string
    sql: ${TABLE}.quote_reference ;;
  }

  dimension: quote_transaction_id {
    type: string
    sql: ${TABLE}.quote_transaction_id ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: quotedatetime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.quotedatetime ;;
  }

  dimension_group: utc_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.utc_created ;;
  }

  dimension: within_10_tolerance {
    type: number
    sql: ${TABLE}."within_10%_tolerance" ;;
  }

  dimension: within_15_tolerance {
    type: number
    sql: ${TABLE}."within_15%_tolerance" ;;
  }

  dimension: within_5_tolerance {
    type: number
    sql: ${TABLE}."within_5%_tolerance" ;;
  }
  measure: count {
    type: count
  }
}
