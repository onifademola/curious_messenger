use Mix.Config

# Configure your database
config :curious_messenger, CuriousMessenger.Repo,
  username: "postgres",
  password: "postgres",
  database: "curious_messenger_dev",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
