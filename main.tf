terraform {
  required_providers {
    signalfx = {
      source  = "splunk-terraform/signalfx"
      version = "6.18.0" # if the version is not included, Terraform will use the latest.
      # https://registry.terraform.io/providers/splunk-terraform/signalfx/latest/docs
    }
  }
}

# provider "signalfx" {
#   auth_token = var.signalfx_key
#   api_url    = "https://api.${var.signalfx_realm}.signalfx.com"
# }

# resource "signalfx_time_chart" "mychart0" {
#   name        = "CPU Utilization"
#   description = "Very cool chart"

#   program_text = <<-EOF
#     data("cpu.utilization", filter=filter('host', '*')).publish(label='CPU Utilization')
#     EOF
# }

# resource "signalfx_dashboard_group" "mydashgroup0" {
#   name        = "Workshop Group - ${var.username}"
#   description = "${var.username}'s Awesome Workshop Group"
# }

# resource "signalfx_dashboard" "mydashboard0" {
#   name            = "Workshop Dashboard - ${var.username}"
#   dashboard_group = signalfx_dashboard_group.mydashgroup0.id

#   chart {
#     chart_id = signalfx_time_chart.mychart0.id
#     width    = 6
#     height   = 2
#     row      = 0
#   }

#   chart {
#     chart_id = signalfx_event_feed_chart.myeventfeed0.id
#     width    = 3
#     height   = 3
#     column = 6
#   }
# }

# resource "signalfx_event_feed_chart" "myeventfeed0" {
#   name        = "Workshop - ${var.username} - JDI Deployment"
#   description = "Deployment Feed"

#   program_text = <<-EOF
#     A = events(eventType='jdi_deployment:*').publish(label='A')
#     EOF

# }

# # print URL to dashboard
# output "dashboard_group_URL" {
#   value = "https://app.${var.signalfx_realm}.signalfx.com/#/dashboard/${signalfx_dashboard.mydashboard0.id}"
# }