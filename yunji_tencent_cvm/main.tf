


resource "tencentcloud_instance" "my_awesome_app" {
  instance_name              = "awesome_app"
  availability_zone          = "ap-shanghai-4"
  image_id                   = "img-n7nyt2d7"
  system_disk_type           = "CLOUD_PREMIUM"
  system_disk_size           = 50
  hostname                   = "user"
  data_disks {
    data_disk_type = "CLOUD_PREMIUM"
    data_disk_size = 50
  }
}
