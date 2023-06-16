class Car
  def open
  end

  def start_engine
  end
end

class CarInternals
  def change_engine
  end
end

class Driver
  def drive
    @car.open
    @car.start_engine
  end
end

class Mechanic
  def do_stuff
    @car_internals.change_engine
  end
end

# Above Car is separated in 2 interfaces because of there different usage.
# This follows ISP concept.