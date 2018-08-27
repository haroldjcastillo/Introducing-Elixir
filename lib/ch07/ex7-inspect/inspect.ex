defimpl Inspect, for: Tower do

  import Inspect.Algebra

  def inspect(item, _options) do
    metres = concat(to_string(item.height), "m:")
    msg = concat([metres, break, item.name, ",", break,
      item.location, ",", break,
      to_string(item.planemo)])
  end
end