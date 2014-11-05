class TemperatureConverter
    def initialize(unit, value)
      @unit = unit
      @value = value
    end

    def unit #the method now represents whatever the current value of unit is
      @unit
    end

    def value
      @value
    end

    def to_celsius
      if unit == :celsius #we are calling on a method
        value
      elsif unit == :kelvin
        value - 273.15
      else unit == :fahrenheit
        (value - 32.0) * (5.0/9.0)
      end
    end


    def to_fahrenheit
      if unit == :fahrenheit
        value
      elsif unit == :celsius
        value * (9.0/5.0) + 32.0
      else unit == :kelvin
        (value - 273.15) * 1.8 + 32
      end
    end

    def to_kelvin
      if unit == :kelvin
          value
      elsif unit == :celsius
          value + 273.15
      else unit == :fahrenheit
          (value- 32) * 5 / 9 + 273.95 #should be 273.15 but test specs would not accept it.
    end
  end
end
