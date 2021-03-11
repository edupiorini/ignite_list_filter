defmodule ListFilter do
  def call(list) do
    list
    |> Enum.map(fn content -> list_filter(content) end)
    |> Enum.count(fn number -> rem(number, 2) == 1 end)
  end

  defp list_filter(string) do
    Integer.parse(string)
    |> handle_filter()
  end

  defp handle_filter({number, _rest}), do: number
  defp handle_filter(:error), do: 0
end

# recebe a lista
# percorre
# converte o indice -> sucesso? retorna numero : error
# sucesso -> verifica se é impar
# conta os impares
