defmodule Person do
  @vsn 0.1
  defstruct name: "", age: 0, gender: :NONE, country: "Afganistan"

  @spec can_drink?(Person) :: Boolean
  @doc """
  Country	On_Premise_Purchase_Age
  Afghanistan	Total ban
  Albania	18
  Algeria	18
  Andorra	18
  Angola	18
  Antigua and Barbuda	10
  Argentina	18
  Armenia	18
  Australia	18
  Austria	16
  Azerbaijan	18
  Bahamas	18
  Bahrain	Illegal (18 for non-Muslims)
  Bangladesh	Total ban
  Barbados	18
  Belarus	18
  Belgium	16
  Belize	18
  Benin	No age minimum
  Bhutan	18
  Bolivia	No age minimum
  Bosnia and Herzegovina	18
  Botswana	18
  Brazil	18
  Brunei Darussalam	Total ban
  Bulgaria	18
  Burkina Faso	No age minimum
  Burundi	18
  Cambodia	No age minimum
  Cameroon	No age minimum
  Canada	19
  Cape Verde	18
  Central African Republic	15
  Chad	18
  Chile	18
  China	No age minimum
  Colombia	18
  Comoros	18
  Congo	16
  Costa Rica	18
  Côte d'Ivoire	21
  Croatia	18
  Cuba	18
  Cyprus	17
  Czech Republic	18
  """
  def can_drink?(p) when p.age > 0 do
    IO.puts("#{p.name} #{p.country} #{p.age}")
    age = get_age(String.to_atom(p.country))
    if(p.age >= age) do
      "#{p.name} can drink in #{p.country}"
    else
      "#{p.name} can not drink in #{p.country}"
    end
  end

  def get_age(country) do
      countrys = [
        { :"Afghanistan", -1 },
        { :"Albania", 18 },
        { :"Algeria", 18 },
        { :"Andorra", 18 },
        { :"Angola", 18 },
        { :"Antigua and Barbuda", 10 },
        { :"Argentina", 18 },
        { :"Armenia", 18 },
        { :"Australia", 18 },
        { :"Austria", 16 },
        { :"Azerbaijan", 18 },
        { :"Bahamas", 18 },
        { :"Bahrain", -1 },
        { :"Bangladesh", -1 },
        { :"Barbados", 18 },
        { :"Belarus", 18 },
        { :"Belgium", 16 },
        { :"Belize", 18 },
        { :"Benin", 0 },
        { :"Bhutan", 18 },
        { :"Bolivia", 0 },
        { :"Bosnia and Herzegovina", 18 },
        { :"Botswana", 18 },
        { :"Brazil", 18 },
        { :"Brunei Darussalam", -1 },
        { :"Bulgaria", 18 },
        { :"Burkina Faso", 0 },
        { :"Burundi", 18 },
        { :"Cambodia", 0 },
        { :"Cameroon", 0 },
        { :"Canada", 19 },
        { :"Cape Verde", 18 },
        { :"Central African Republic", 15 },
        { :"Chad", 18 },
        { :"Chile", 18 },
        { :"China", 0 },
        { :"Colombia", 18 },
        { :"Comoros", 18 },
        { :"Congo", 16 },
        { :"Costa Rica", 18 },
        { :"Cote d'Ivoire", 21 },
        { :"Croatia", 18 },
        { :"Cuba", 18 },
        { :"Cyprus", 17 },
        { :"Czech Republic", 18 }
      ]
      Keyword.fetch!(countrys, country)
  end


end
# c("person.exs")
# harold = %Person{name: "Harold", age: 28, gender: "M", country: "Colombia"}
