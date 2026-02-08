# Chat_Woot — Quick Start

A minimal Rails application scaffold. This README contains the essential
steps to get the app running locally and to run the test suite.

Requirements
- Ruby: see `Gemfile` (recommended: 3.2+)
- Bundler: `gem install bundler`
- Database: PostgreSQL or MySQL depending on `config/database.yml`

Setup (development)
1. Install gems:

```bash
bundle install
```

2. Configure environment (copy example credentials or use `rails credentials:edit`)

3. Create and prepare the database:

```bash
rails db:create db:migrate db:seed
```

Run the server

```bash
bin/rails server
```

Run tests

```bash
bundle exec rails test
```

Contributing
- Follow the existing code style and keep changes focused and covered by tests.
- Open a PR against the `main` branch; include a short description and any
	relevant migration or setup notes.

Further notes
- For production deployment, review `config/environments/production.rb`,
	configure credentials, and ensure asset compilation and web server setup.
