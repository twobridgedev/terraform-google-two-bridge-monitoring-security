resource "google_monitoring_alert_policy" "security_policy_requests_blocked" {
	display_name="Requests blocked by security policy"
	combiner="OR"
	enabled=true
	conditions {
		display_name="Requests blocked"
		condition_threshold {
			filter="resource.type = \"network_security_policy\" AND (resource.labels.policy_name = \"${var.security_policy_name}\") AND metric.type = \"networksecurity.googleapis.com/https/request_count\" AND metric.labels.blocked = \"true\""
			duration="0s"
			comparison="COMPARISON_GT"
			threshold_value=100
			trigger {
				count=1
			}
			aggregations {
				alignment_period="60s"
				per_series_aligner="ALIGN_RATE"
			}
		}
	}
	notification_channels = [
		for channel in google_monitoring_notification_channel.channels : channel.name
	]
}
resource "google_monitoring_alert_policy" "security_policy_previewed_requests_blocked" {
	display_name="Previewed requests blocked by security policy"
	combiner="OR"
	enabled=true
	conditions {
		display_name="Previewed requests blocked"
		condition_threshold {
			filter="resource.type = \"network_security_policy\" AND (resource.labels.policy_name = \"${var.security_policy_name}\") AND metric.type = \"networksecurity.googleapis.com/https/previewed_request_count\" AND metric.labels.blocked = \"true\""
			duration="0s"
			comparison="COMPARISON_GT"
			threshold_value=100
			trigger {
				count=1
			}
			aggregations {
				alignment_period="60s"
				per_series_aligner="ALIGN_RATE"
			}
		}
	}
	notification_channels = [
		for channel in google_monitoring_notification_channel.channels : channel.name
	]
}
resource "google_monitoring_alert_policy" "requests_per_second_10" {
	display_name="Requests per second 10"
	combiner="OR"
	enabled=true
	conditions {
		display_name="Traffic above threshold"
		condition_threshold {
			filter="resource.type = \"network_security_policy\" AND (resource.labels.policy_name = \"${var.security_policy_name}\") AND metric.type = \"networksecurity.googleapis.com/https/request_count\""
			duration="0s"
			comparison="COMPARISON_GT"
			threshold_value=10
			trigger {
				count=1
			}
			aggregations {
				alignment_period="60s"
				per_series_aligner="ALIGN_RATE"
			}
		}
	}
	notification_channels = [
		for channel in google_monitoring_notification_channel.channels : channel.name
	]
}
resource "google_monitoring_alert_policy" "requests_per_second_50" {
	display_name="Requests per second 50"
	combiner="OR"
	enabled=true
	conditions {
		display_name="Traffic above threshold"
		condition_threshold {
			filter="resource.type = \"network_security_policy\" AND (resource.labels.policy_name = \"${var.security_policy_name}\") AND metric.type = \"networksecurity.googleapis.com/https/request_count\""
			duration="0s"
			comparison="COMPARISON_GT"
			threshold_value=50
			trigger {
				count=1
			}
			aggregations {
				alignment_period="60s"
				per_series_aligner="ALIGN_RATE"
			}
		}
	}
	notification_channels = [
		for channel in google_monitoring_notification_channel.channels : channel.name
	]
}
resource "google_monitoring_alert_policy" "requests_per_second_100" {
	display_name="Requests per second 100"
	combiner="OR"
	enabled=true
	conditions {
		display_name="Traffic above threshold"
		condition_threshold {
			filter="resource.type = \"network_security_policy\" AND (resource.labels.policy_name = \"${var.security_policy_name}\") AND metric.type = \"networksecurity.googleapis.com/https/request_count\""
			duration="0s"
			comparison="COMPARISON_GT"
			threshold_value=100
			trigger {
				count=1
			}
			aggregations {
				alignment_period="60s"
				per_series_aligner="ALIGN_RATE"
			}
		}
	}
	notification_channels = [
		for channel in google_monitoring_notification_channel.channels : channel.name
	]
}
