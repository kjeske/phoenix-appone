ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Appone.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Appone.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Appone.Repo)

