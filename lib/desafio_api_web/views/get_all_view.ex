defmodule DesafioApiWeb.GetAllView do
  use DesafioApiWeb, :view

  def render("get_all.json", %{data: data}) do
    %{
      list_all: data
    }
  end
end
