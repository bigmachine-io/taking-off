use Amnesia

defdatabase Physics.Database do

  deftable Planet, [{:id, autoincrement }, :name, :mass, :radius, :type, :ev], type: :ordered_set do
    #helper methods, lookups, special queries etc can go in here
    #for instance:
    #def add_moon(self, moon) do
      # add to moons table
    #end
  end

end