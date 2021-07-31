defmodule DesafioApi.Services.RequestData.GetData do
  @moduledoc false

  def get_data(number) when is_number(number) do
    http_get(number)
    |> jason_decode()
  end

  defp http_get(number) do
    HTTPoison.get!(System.get_env("URL_DESAFIO") <> "#{number}")
    |> handle_get()
  end

  defp handle_get(%HTTPoison.Response{} = data), do: data
  defp handle_get(_), do: :error

  defp jason_decode(data), do: Jason.decode(data.body) |> handle_json()

  defp handle_json({:ok, %{"numbers" => list}}), do: handle_list(list, List.first(list))
  defp handle_json({:ok, %{"error" => _}}), do: :error
  defp handle_json(error), do: {:error, error}

  defp handle_list(list, verificar) when is_number(verificar), do: {:ok, list}
  defp handle_list(_list, verificar) when verificar == nil, do: :finish
end
