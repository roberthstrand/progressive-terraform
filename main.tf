terraform {
  required_providers {
    spotify = {
      source  = "conradludgate/spotify"
      version = "0.1.6"
    }
  }
}

provider "spotify" {
  api_key = var.api_key
}

resource "spotify_playlist" "playlist" {
  name        = "Progressive Terraform"
  description = "A playlist, created with Infrastructure-as-Code, because what could be more nerdy..."
  public      = false


  tracks = [
    for s in local.tunes :
    data.spotify_track.tunes[s].id
  ]
}
