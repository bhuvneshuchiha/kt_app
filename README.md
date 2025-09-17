# kt_app

**kt_app** is an application designed to host Knowledge Transfer (KT) videos for teams or organizations. It helps teams share video content in a structured way, possibly with user roles, comments, search, etc.
# This is just a backend module which is pushed on github. React frontend will be coming up soon.

---

## Table of Contents

- [Features](#features)
- [Tech Stack](#tech-stack)
- [Requirements](#requirements)
- [Setup & Installation](#setup--installation)
- [Configuration](#configuration)
- [Database](#database)
- [Running](#running)
- [Testing](#testing)
- [Docker Setup](#docker-setup)
- [Deployment](#deployment)
- [Contributing](#contributing)
- [License](#license)

---

## Features

Here are some possible/known features (fill in or adjust as per the implementation):

- Upload and host KT video files
- Organize videos by teams or organizations
- User authentication & roles (e.g. admin, member)
- Search or browse videos
- Maybe comments or feedback on videos
- Web interface + API endpoints

---

## Tech Stack

- Ruby (on Rails)(3.3.1) — core application framework :contentReference[oaicite:0]{index=0}
- Database: SQLite
- Other tools/gems: your choice of authentication, file storage, background jobs, etc.

---

## Requirements

- Ruby version: *(3.3.1)*
- Bundler
- Database(sqlite)
- AWS upcoming.

---

## Setup & Installation

Here is a generic setup. Adapt as required:

# Clone the repo
git clone https://github.com/bhuvneshuchiha/kt_app.git
cd kt_app

# Install dependencies
bundle install

# Set up database
# (edit config/database.yml accordingly)
rails db:create
rails db:migrate

# Setup any environment variables
# (e.g. storage credentials, secret_key_base, etc.)

# Start the server
rails server

