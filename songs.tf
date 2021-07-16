locals {
  tunes = toset([
    "https://open.spotify.com/track/7FTf3bJuCq5UYHjUwggKNB?si=26e3b6efdc99494f",
    "https://open.spotify.com/track/0J1CIpL8IuUf0OyijwkMFj?si=5dd1470deb534019",
    "https://open.spotify.com/track/6ryxUe5HxnzSFoXM5T1KFl?si=0d987f76cd544628",
    "https://open.spotify.com/track/12NwYmQT1Mm7gkrCjIuq0d?si=26b4a41b16f1452b",
    "https://open.spotify.com/track/5T6XmMB2cO0zW8LUx9XmV7?si=42545efce1474dc2",
    "https://open.spotify.com/track/5vfoqFiW6wXwhwa7r523Iq?si=80306f5d19f34a65",
    "https://open.spotify.com/track/134I0qT6UrkDjhbI6bx0x3?si=7819ab33d9fd4419",
    "https://open.spotify.com/track/2N3vUnZi5Nj54ELyI8wAJ7?si=0aefe3fb149a4f3e",
    "https://open.spotify.com/track/2rYIPIXL0b8oVMvsZAoF1J?si=f4538d4f34284ed4",
    "https://open.spotify.com/track/01enyHIxGijVS56im5qZaH?si=25376af39291473e",
    "https://open.spotify.com/track/0ndWYf8VfreYNXskvF9Jvu?si=5afc856921704559",
    "https://open.spotify.com/track/7kDnLDzdOSpoChjybWzLDC?si=2f3f850217fd4d8c",
    "https://open.spotify.com/track/0YTdgFT1NXtKLyXeXUVWMl?si=13792298cef14d4f",
    "https://open.spotify.com/track/0t8JoPmxcwsWXWcsflNKxk?si=c311943324894f6c",
    "https://open.spotify.com/track/0ppdt8zRZOHIKh4ZDB0Zp9?si=2e88233cc3544b9a",
    "https://open.spotify.com/track/5xYfuYyLl2rsnjPJOdmJiZ?si=15206bc285504ac0",
    "https://open.spotify.com/track/5TnIBKE4G3OEqOnRG7gnNb?si=45cf62356bda4b77"
  ])
}

data "spotify_track" "tunes" {
  for_each = local.tunes
  url      = each.value
}
