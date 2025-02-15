# Elixir Enum.each Blocking Main Thread

This example demonstrates a common issue when using `Enum.each` in Elixir: if the function passed to `Enum.each` performs a long-running operation, it can block the main thread, leading to unexpected behavior and poor responsiveness.

The `bug.exs` file shows a scenario where a sleep operation simulates a long task.  Running this code will show that the output is sequential and the program halts briefly when `Process.sleep` is executed.

The `bugSolution.exs` file demonstrates the solution using `Task.async` to perform the long-running operation in a separate process, thereby preventing the main thread from blocking.