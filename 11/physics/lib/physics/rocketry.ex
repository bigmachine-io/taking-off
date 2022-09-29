# Let's remove all of the extra functions for `:earth`, `:moon` and `:mars` - we don't need them.
# Instead, define a default planet at the top of the module; use `@earth` and
# reference your `Planet.select[:earth]` structure.

# Anything else you see that you think you can improve, have at it. **The goal is clarity and elegance** so we can build this out.

# I've been waiting on a data drop from the Science Team and I think we'll be all set soon for working with PostgreSQL. That'll be fun.


defmodule Physics.Rocketry do

  import Calcs
  import Converter
  import Physics.Laws
  import Planets

  def escape_velocity(:earth) do
    earth()
      |> escape_velocity
  end

  def escape_velocity(planet) when is_map(planet) do
    planet
      |> calculate_escape
      |> to_km
      |> to_nearest_tenth
  end

  def orbital_speed(height), do: orbital_speed(earth(),height)
  def orbital_speed(planet,height) do
    newtons_gravitational_constant() * planet.mass / orbital_radius(height)
      |> square_root
  end

  def orbital_acceleration(height), do: orbital_acceleration(earth(),height)
  def orbital_acceleration(:earth, height), do: orbital_acceleration(earth(),height)
  def orbital_acceleration(:mars, height), do: orbital_acceleration(mars(),height)
  def orbital_acceleration(:moon, height), do: orbital_acceleration(moon(),height)
  def orbital_acceleration(planet, height) do
    (orbital_speed(planet, height) |> squared) / orbital_radius(planet, height)
  end

  def orbital_term(height), do: orbital_term(earth(), height)
  def orbital_term(:mars, height), do: orbital_term(earth(), height)
  def orbital_term(:earth, height), do: orbital_term(mars(), height)
  def orbital_term(:moon, height), do: orbital_term(moon(), height)
  def orbital_term(planet, height) do
    4 * (:math.pi |> squared) * (orbital_radius(planet,height) |> cubed) / (newtons_gravitational_constant() * planet.mass)
      |> square_root
      |> seconds_to_hours
  end


  defp orbital_radius(height), do: orbital_radius(earth(), height)
  defp orbital_radius(planet, height) do
    planet.radius + (height |> to_meters)
  end

  defp calculate_escape(%{mass: mass, radius: radius}) do
    2 * newtons_gravitational_constant() * mass / radius
      |> square_root
  end

end
