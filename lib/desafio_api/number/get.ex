defmodule DesafioApi.Number.Get do
  alias DesafioApi.{Repo, Numbers}

  def call(id) when is_number(id) do
    Repo.get(Numbers, id)
  end
end
