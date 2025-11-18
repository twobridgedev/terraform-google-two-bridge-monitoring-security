resource "google_monitoring_notification_channel" "channels" {
	for_each={for channel in var.notification_channels : channel.display_name => channel}
	project=var.project_id_svpc_host
	display_name=each.value.display_name
	type=each.value.type
	labels=each.value.labels
}
