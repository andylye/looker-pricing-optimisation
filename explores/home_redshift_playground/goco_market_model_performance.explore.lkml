include: "/views/home_redshift_playground/core/goco_market_model_performance_fixed.view.lkml"
include: "/views/home_redshift_playground/advanced/refined/goco_market_model_performance_fixed_refined.view.lkml"

explore: goco_market_model_performance {
  from: goco_market_model_performance_fixed

}
