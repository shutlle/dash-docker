job "dash2" {
  datacenters = ["dc1"]

  type = "service"

  update {
    stagger      = "30s"
    max_parallel = 1
  }

  group "apps" {
    count = 1

    task "dash" {
      driver = "docker"

      artifact {
        source = "http://192.168.1.145/dash.tar"
      }

      config {
        load = "dash.tar"
        image = "dash"
      }

      service {
        port = "http"

        check {
          type     = "http"
          path     = "/vpc/api"
          interval = "10s"
          timeout  = "2s"
        }
      }

      resources {
        network {
          port "http" {
            static = 8000
          }
        }
      }
    }
  }
}

