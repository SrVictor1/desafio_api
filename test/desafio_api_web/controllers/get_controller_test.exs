defmodule DesafioApiWeb.GetControllerTest do
  use DesafioApiWeb.ConnCase, async: true

  describe "get/1" do
    test "return valid data", %{conn: conn} do
      response = conn |> get(Routes.get_path(conn, :get, 1))

      assert %{} = Jason.decode!(response.resp_body)
    end

    test "return invalid data", %{conn: conn} do
      response = conn |> get(Routes.get_path(conn, :get, 1))

      assert %{"error" => "404, not found"} = Jason.decode!(response.resp_body)
    end
  end
end
