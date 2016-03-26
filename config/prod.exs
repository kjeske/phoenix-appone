use Mix.Config

config :appone, Appone.Endpoint,
  url: [host: "localhost"],
  http: [port: {:system, "PORT"}],
  cache_static_manifest: "priv/static/manifest.json",
  server: true

config :logger, level: :info

config :appone, Appone.Endpoint,
  secret_key_base:  System.get_env("SECRET_KEY_BASE")

# Configure your database
config :appone, Appone.Repo,
  hostname: "db",
  adapter: Ecto.Adapters.Postgres,
  username: "appone",
  password: "appone",
  database: "appone",
  pool_size: 20 