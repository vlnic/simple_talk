defmodule SimpleTalk.Repo do
  use Ecto.Repo,
    otp_app: :simple_talk,
    adapter: Ecto.Adapters.Postgres
end
