defmodule DesafioApiWeb.CreateController do
  use DesafioApiWeb, :controller
  alias DesafioApi.Number.Post
  def create_data(conn, %{"end_value" => end_value, "start_value" => start_value}) do
    handle_create(conn, start_value, end_value)
  end

  defp handle_create(conn, start_value, end_value) when start_value <= end_value do
    {:ok, %DesafioApi.Numbers{} = data} = Post.call_run(start_value, end_value)
    conn
    |> put_status(201)
    |> render("created.json",
    data: data
    )
  end

  defp handle_create(conn, start_value, end_value) do
    conn |> render("error.json", error: "start_value: #{start_value},\ end_value: #{end_value}")
  end
end
