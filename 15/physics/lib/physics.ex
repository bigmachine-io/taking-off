defmodule Physics do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      Physics.Repo
    ]

    opts = [strategy: :one_for_one, name: Physics.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
