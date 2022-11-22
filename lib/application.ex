defmodule ExCart.Application do
  use Application

  def start(_type, _args) do
    children = [
      ExCart.Supervisor
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end

  @version Mix.Project.config()[:version]
  def version, do: @version
end
