defmodule Prodstory.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      ProdstoryWeb.Telemetry,
      # Start the Ecto repository
      Prodstory.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Prodstory.PubSub},
      # Start Finch
      {Finch, name: Prodstory.Finch},
      # Start the Endpoint (http/https)
      ProdstoryWeb.Endpoint
      # Start a worker by calling: Prodstory.Worker.start_link(arg)
      # {Prodstory.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Prodstory.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ProdstoryWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
