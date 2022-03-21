use Mix.Config

# Configure your database
config :curious_messenger, CuriousMessenger.Repo,
  username: "postgres",
  password: "postgres",
  database: "curious_messenger_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
