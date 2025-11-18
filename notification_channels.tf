resource "google_monitoring_notification_channel" "channels" {
	for_each={for channel in var.notification_channels : channel.display_name => channel}
	display_name=each.value.display_name
	type=each.value.type
	labels=each.value.labels
}
