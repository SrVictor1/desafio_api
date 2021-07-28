defmodule DesafioApiWeb.GetAllControllerTest do
  use DesafioApiWeb.ConnCase, async: true

  describe "get_all/0" do
    test "return valid data", %{conn: conn} do
      response = conn |> get(Routes.get_all_path(conn, :all))

      assert %{"list_all" => _} = Jason.decode!(response.resp_body)
    end
  end
end
