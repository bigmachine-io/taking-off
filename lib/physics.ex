defmodule Physics do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Physics.Repo, []) # example 1
    ]

    opts = [strategy: :one_for_one, name: Physics.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
