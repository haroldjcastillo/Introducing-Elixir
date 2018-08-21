defmodule Temperature do
  @moduledoc """
  Define a temperature translator function that
  given a map of temperatures for each day, it
  transform the temperature from Celsius to
  Fahrenheit
  """

  @type temperature :: :fahrenheit | :celsius
  @type days :: :monday | :tuesday | :wednesday | :thursday | :friday | :saturday | :sunday

  def cal(temperature, day) do
    value = get_temperature(temperature, day)
    "#{get_formula(temperature).(value)}º"
  end

  defp get_temperature(temperature, day) do
    temperatures = [{:fahrenheit,
              [ {:monday, 0},
                {:tuesday, 32},
                {:wednesday, 23},
                {:thursday, 18},
                {:friday, 35},
                {:saturday, 28},
                {:sunday, 30}
              ]},
            {:celsius,
              [ {:monday, 0},
                {:tuesday, 68},
                {:wednesday, 23},
                {:thursday, 18},
                {:friday, 35},
                {:saturday, 28},
                {:sunday, 30}
              ]}
          ]
    days = Keyword.fetch!(temperatures, temperature)
    Keyword.fetch!(days, day)
  end

  defp get_formula(temperature) do
    temperatures = [{:fahrenheit, &(&1 * 1.8 + 32)}, {:celsius, &((&1 - 32)*0.55)}]
    Keyword.fetch!(temperatures, temperature)
  end

end
