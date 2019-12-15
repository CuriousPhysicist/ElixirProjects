# The solution provided by the tutor 'Mark'

defmodule Greeter do
  def start do
    name = IO.gets("Hi there! What's your name?\n")

    case String.trim(name) do
      "Mark" -> "Wow! Mark is my favourite name. I was programmed by someone named Mark!"
      name -> "Hi #{name}, it's nice to meet you."
    end
  end
end
