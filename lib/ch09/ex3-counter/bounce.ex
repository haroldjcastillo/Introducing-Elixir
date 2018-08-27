defmodule Bounce do
  def report(count) do
    receive do
      msg -> IO.puts("Received #{count}: #{msg}")
             report(count + 1)
    end
  end
end

# c("bounce.ex")
# pid = spawn(Bounce, :report, [1])
# send(pid, 23)
