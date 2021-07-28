defmodule DesafioApiWeb.CreateControllerTest do
  use DesafioApiWeb.ConnCase, async: true

  describe "create/2" do
    test "return valid data", %{conn: conn} do
      response = conn |> post(Routes.create_path(conn, :create_data, start_value: 1, end_value: 2 ))

      assert %{} = Jason.decode!(response.resp_body)
    end
  test "return invalid data", %{conn: conn} do
      response = conn |> post(Routes.create_path(conn, :create_data, start_value: 10, end_value: 2 ))

      assert %{} = Jason.decode!(response.resp_body)
    end
  end
end
