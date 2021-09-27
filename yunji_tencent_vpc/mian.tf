resource "tencentcloud_vpc" "foo" {
  name         = "ci-temp-test-updated"
  cidr_block   = "10.0.0.0/16"
  dns_servers  = ["119.29.29.29", "8.8.8.8"]
  is_multicast = false

  tags = {
    "test" = "test"
  }
}


resource "tencentcloud_subnet" "app" {
  vpc_id            = tencentcloud_vpc.foo.id
  availability_zone = "ap-shanghai-4"
  name              = "awesome_app_subnet"
  cidr_block        = "10.0.1.0/24"
}
