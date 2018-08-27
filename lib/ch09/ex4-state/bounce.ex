defmodule Bounce do
  def report(count) do
    new_count = receive do
      msg -> IO.puts("Received #{count}: #{msg}")
             count + 1
    end
    IO.puts("New count: #{new_count}")
    report(new_count)
  end
end

# c("bounce.ex")
# pid = spawn(Bounce, :report, [1])
# send(pid, 23)