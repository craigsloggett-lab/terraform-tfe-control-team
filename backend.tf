terraform {
  cloud {
    organization = "craigsloggett-lab"
    hostname     = "tfe.craig-sloggett.sbx.hashidemos.io"

    workspaces {
      project = "Default Project"
      name    = "hcp-bootstrap"
    }
  }
}
