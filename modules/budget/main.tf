resource "google_billing_budget" "monthly" {
billing_account = var.billing_account
amount {
    specified_amount {
      currency_code = "USD"
      units = 50   
    }       
}
threshold_rules {
    threshold_percent = 0.9
}