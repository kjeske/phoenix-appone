defmodule Appone do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      # Start the endpoint when the application starts
      supervisor(Appone.Endpoint, []),
      # Start the Ecto repository
      supervisor(Appone.Repo, []),
      # Here you could define other workers and supervisors as children
      # worker(Appone.Worker, [arg1, arg2, arg3]),
    ]

    opts = [strategy: :one_for_one, name: Appone.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Appone.Endpoint.config_change(changed, removed)
    :ok
  end
end
