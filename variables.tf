variable "project_id_svpc_host" {
	type=string
	description="Project id svpc host"
}
variable "security_policy_name" {
	type=string
	description="Security policy name"
}
variable "notification_channels" {
	description="Notification channels"
	type=list(object({
		display_name=string
		type=string
		labels=map(string)
	}))
}
