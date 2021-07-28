defmodule DesafioApi.Services.RequestData.Run do
  @moduledoc false
  alias DesafioApi.Services.RequestData.{MySort, GetData}

  def run(min, max) when not is_binary(min) do
    Enum.map(min..max, &(&1 + 1))
    |> Flow.from_enumerable()
    |> Flow.partition()
    |> Flow.flat_map(fn number -> app(number) end)
    |> Enum.to_list()
    |> List.flatten()
    |> MySort.sort()
  end

  def run(min, max) do
    min_check = String.to_integer(min)
    max_check = String.to_integer(max)
    if is_number(min_check) == true && is_number(max_check) do
      run(min_check, max_check)
    end
  end

  defp app(number) do
    GetData.get_data(number)
    |> get_data_handle()
    |> handle_data()
  end

  defp handle_data({:ok, list}), do: list
  defp handle_data(_), do: []
  defp get_data_handle(error), do: error
end
