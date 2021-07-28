defmodule DesafioApiWeb.CreateView do
  use DesafioApiWeb, :view
  def render("created.json", %{data: data}) do
    IO.inspect(data)
    %{
      id: data.id,
      numbers: data.numbers
    }
  end
  def render("error.json", %{error: error}) do
    %{
      error: error
    }
  end
end
