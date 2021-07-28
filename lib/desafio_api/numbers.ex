defmodule DesafioApi.Numbers do
  use Ecto.Schema
  import Ecto.Changeset

  schema "numbers" do
    field :numbers, {:array, :float}
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, [:numbers])
    |> validate_required([:numbers])
  end
end
