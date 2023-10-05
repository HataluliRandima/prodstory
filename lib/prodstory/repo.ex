defmodule Prodstory.Repo do
  use Ecto.Repo,
    otp_app: :prodstory,
    adapter: Ecto.Adapters.Postgres
end
