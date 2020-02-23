FX <- eurostat::get_eurostat("ert_bil_eur_m")
# these are in EUR/currency, so we would need to convert to indirect as in USD/currency
data.table::fwrite(FX, "exchange_rates")