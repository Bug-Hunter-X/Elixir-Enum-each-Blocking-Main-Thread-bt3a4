```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  Task.async(fn ->
    if x == 3 do
      Process.sleep(1000) # Simulate a long operation
    end
    IO.puts(x)
  end)
end)
```