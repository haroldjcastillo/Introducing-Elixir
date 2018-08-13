defmodule Drop2 do

  def fall_velocity(where) do
    {planemo, distance} = where # Validate if the distance it is 0
    fall_velocity(planemo,distance)
  end

  defp fall_velocity(:earth, distance) do
    :math.sqrt(2 * 9.8 * distance)
  end

  defp fall_velocity(:moon, distance) do
    :math.sqrt(2 * 1.6 * distance)
  end

  defp fall_velocity(:mars, distance) do
    :math.sqrt(2 * 3.71 * distance)
  end
end
