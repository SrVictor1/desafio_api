defmodule DesafioApi.Services.RequestData.MySort do
  # Maneira nativa do sorte usando conceitos do elixir, baseado e um sort em erlang
  # Insertion sort: https://gillesleblanc.wordpress.com/2012/05/12/sorting-algorithms-in-erlang/

  def sort([]), do: []

  def sort([head | tail]) do
    maior_valor(head, tail) ++ [head] ++ menor_valor(head, tail)
  end

  defp maior_valor(head, tail) do
    sort(for x <- tail, x >= head, do: x)
  end

  defp menor_valor(head, tail) do
    sort(for x <- tail, x < head, do: x)
  end
end
