defmodule DesafioApi.Number.Post do
  alias DesafioApi.{Repo, Numbers}
  alias DesafioApi.Services.RequestData.Run

  defp call(params) do
    %{"numbers" => params}
    |> Numbers.changeset()
    |> Repo.insert()
  end
  def call_run(one, two), do: Run.run(one, two) |> call()
end
