defmodule DesafioApiWeb.GetController do
  use DesafioApiWeb, :controller

  def get(conn, %{"id" => id}) do
    get_data(id, conn)
  end

  defp get_data(id, conn) do
    String.to_integer(id)
    |> DesafioApi.Number.Get.call()
    |> handle_data(conn)
  end

  defp handle_data(data, conn) when data != nil, do: success_render(data, conn)

  defp handle_data(_data, conn), do: render_error(conn)

  defp render_error(conn) do
    conn |> put_status(404) |> render("error.json", error: "404, not found")
  end

  defp success_render(data, conn) do
    conn |> render("get_numbers.json", numbers: data)
  end
end
