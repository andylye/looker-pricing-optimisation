include: "/views/home_redshift_playground/core/goco_market_model_performance_fixed.view.lkml"

view: +goco_market_model_performance_fixed {

  measure: total_market_model_prediction {
    type: sum
    sql: ${market_model_prediction} ;;
  }

  measure: total_market_top_5_gross_price_avg {
    type: sum
    sql: ${market_top_5_gross_price_avg} ;;
  }

}
