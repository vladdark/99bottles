class Bottles
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).collect { |i| verse(i) }.join("\n")
  end

  def verse(number)
    "#{quantity(number).capitalize} #{container(number)} of beer on the wall, " +
    "#{quantity(number)} #{container(number)} of beer.\n" +
    "#{action(number)}, " +
    "#{quantity(succesor(number))} #{container(succesor(number))} of beer on the wall.\n"
  end

  def succesor(number=:FIXME)
    if number==0
      99
    else
      number-1
    end
  end

  def action(number)
    if number==0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def quantity(number)
    if number==0
      "no more"
    else
      number.to_s
    end
  end

  def pronoun(number)
    if number==1
      "it"
    else
      "one"
    end
  end

  def container(number)
    if number==1
      "bottle"
    else
      "bottles"
    end
  end
end