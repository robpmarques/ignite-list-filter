defmodule ListFilter do
  require Integer

  def call(list) do
    length(
      Enum.flat_map(list, fn string ->
        case Integer.parse(string) do
          {int, _rest} -> [int]
          :error -> []
        end
      end)
      |> Enum.filter(fn elem -> rem(elem, 2) !== 0 end)
    )
  end
end
