defmodule DesafioApiWeb.GetView do
  use DesafioApiWeb, :view

  def render("get_numbers.json", %{numbers: data}) do
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
