class Car
  def open
  end

  def start_engine
  end

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
    @car.change_engine
  end
end

# As you can see, here Car class has an interface that’s used partially by both the Driver and the Mechanic. But most of the time Driver or Mechanics will not use same methods so better keep those things separate. See in next isp_example2.rb

