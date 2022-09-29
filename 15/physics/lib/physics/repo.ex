defmodule Physics.Repo do
  use Ecto.Repo,
    otp_app: :physics,
    adapter: Ecto.Adapters.Postgres
end
