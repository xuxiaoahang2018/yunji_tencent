resource "tencentcloud_clb_instance" "internal_clb" {
  network_type = "OPEN"
  clb_name     = "myclb"
  project_id   = 0

  tags = {
    test = "tf"
  }
}
