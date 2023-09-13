resource "aws_codecommit_repository" "banking_customer_churn_prediction_repo" {
  repository_name = "banking_customer_churn_prediction_repo"
  description     = "This is the code repository for Churn Prediction for Banking Customer"
  default_branch  = "master"
}

output "churn_repo_clone_url_http" {
  value       = aws_codecommit_repository.banking_customer_churn_prediction_repo.clone_url_http
  description = "The private IP address of the main server instance."
}

output "churn_repo_clone_url_ssh" {
  value       = aws_codecommit_repository.banking_customer_churn_prediction_repo.clone_url_ssh
  description = "The private IP address of the main server instance."
}