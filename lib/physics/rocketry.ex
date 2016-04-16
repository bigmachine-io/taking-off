defmodule Physics.Rocketry do

  import Calcs
  import Converter
  import Physics.Laws
  import Planets

  def escape_velocity(:earth) do
    earth
      |> escape_velocity
  end

  def escape_velocity(:mars) do
    mars
      |> escape_velocity
  end
  
  def escape_velocity(:moon) do
    moon
      |> escape_velocity
  end
  def escape_velocity(planet) when is_map(planet) do
    planet
      |> calculate_escape
      |> to_km
      |> to_nearest_tenth
  end


  def orbital_speed(height) do
    newtons_gravitational_constant * earth.mass / orbital_radius(height)
      |> square_root
  end

  def orbital_acceleration(height) do
    (orbital_speed(height) |> squared) / orbital_radius(height)
  end

  def orbital_term(height) do
    4 * (:math.pi |> squared) * (orbital_radius(height) |> cubed) / (newtons_gravitational_constant * earth.mass)
      |> square_root
      |> seconds_to_hours
  end

  defp orbital_radius(height) do
    earth.radius + (height |> to_meters)
  end

  defp calculate_escape(%{mass: mass, radius: radius}) do
    2 * newtons_gravitational_constant * mass / radius
      |> square_root
  end

end