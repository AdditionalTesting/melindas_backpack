class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
    gym_prep
    lunch_snack

  end

  def items
    @items
  end

  def prepare
    # set up local variables used by rest of prepare method
    current_weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]

    # Ensure appropriate clothing is added to backpack
    if current_weather == 'rainy'
      @items << 'pants'
      @items << 'shirt'
      @items << 'umbrella'
    elsif current_weather == 'cold'
      @items << 'pants'
      @items << 'shirt'
      @items << 'jacket'
    else
      @items << 'pants'
      @items << 'shirt'
    end
  end


  def gym_prep
      day_of_week = @attributes[:day_of_week]

    # Ensure gym shoes are added to backpack if it's a gym day
    # Gotta get to the gym on Monday and Thursdays. Wait a sec...
    if day_of_week == 'monday' || day_of_week == 'thursday'
      #add gym shoes to items
      @items << 'gym shoes'
    end
  end

  def lunch_snack
    day_of_week = @attributes[:day_of_week]
    # Bring a packed lunch on all weekdays
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    else
      # Used to bring snacks on weekend trips, but now I just buy 'em
      @items << 'snacks'
    end
  end

  # Prints a summary packing list for Melinda's backpack
  def list_packing_items
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
