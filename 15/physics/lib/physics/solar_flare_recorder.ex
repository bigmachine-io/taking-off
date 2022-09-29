defmodule SolarFlareRecorder do
  use GenServer

  def init(init_arg) do
    {:ok, init_arg}
  end

  def start_link do #example 1
    GenServer.start_link __MODULE__, []
  end

  #public API
  def record_flare(pid, {:flare, classification: _c, scale: _s} = flare) do
    GenServer.call(pid, {:record, flare}) #example 2
  end

  #the GenServer handlers for this module
  def handle_call({:record, flare}, _sender, flares) do  #example 3
    #add to our state
    flares = List.insert_at flares, -1, flare

    {:reply, :ok, flares}
  end
end
