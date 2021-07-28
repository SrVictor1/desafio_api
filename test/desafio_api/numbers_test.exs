defmodule DesafioApi.NumbersTest do
  use DesafioApi.DataCase, async: true

  alias DesafioApi.Number

  alias DesafioApi.Numbers

  describe "changeset/1" do
    test "valid value" do
      reponse = Numbers.changeset(%{"numbers" => [0.1, 0.2]})
      assert %Ecto.Changeset{
        action: nil, changes: %{numbers: [0.1, 0.2]},
        errors: [], data: %DesafioApi.Numbers{},
        valid?: true} = reponse
    end
  end

  describe "requests" do
    test "post/2 valid" do
      assert {:ok, %DesafioApi.Numbers{}} = Number.Post.call_run(1, 2)
    end

    test "get_all/0" do
      assert [] = Number.GetAll.call()
    end

    test "get/1" do
      assert nil == Number.Get.call(1)
    end
  end
end
