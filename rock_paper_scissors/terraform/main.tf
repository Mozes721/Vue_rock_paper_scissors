terraform {
  required_providers {
    vercel = {
      source = "vercel/vercel"
      version = "~> 0.3"
    }
  }
}

provider "vercel" {
  api_token = "LwIIknraAojOpuzR0GSq4yqD"
}


resource "vercel_project" "rock-paper-scissors" {
  name      = "rock-paper-scissors"
  framework = "vue"
  git_repository = {
    type: "github",
    repo: "Mozes721/Vue_rock_paper_scissors"
  }
}
