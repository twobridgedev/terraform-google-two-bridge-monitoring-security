terraform {
	backend "remote" {
		hostname="app.terraform.io"
		organization="two-bridge"
		workspaces {
			name="app-dev-example"
		}
	}
}

module "two_bridge_monitoring_google" {
	source="app.terraform.io/two-bridge/two-bridge-monitoring/google"
	version="1.0.0"
}
