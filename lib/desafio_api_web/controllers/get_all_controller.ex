defmodule DesafioApiWeb.GetAllController do
  use DesafioApiWeb, :controller
  def all(conn, _params)do
    data = DesafioApi.Number.GetAll.call()
    conn |> render("get_all.json", %{data: data})
  end
end
