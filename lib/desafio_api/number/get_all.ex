defmodule DesafioApi.Number.GetAll do
  alias DesafioApi.{Repo, Numbers}

  def call() do
    Repo.all(Numbers)
    |> Enum.map(fn %{} = x -> %{id: x.id, numbers: x.numbers} end)
  end
end
