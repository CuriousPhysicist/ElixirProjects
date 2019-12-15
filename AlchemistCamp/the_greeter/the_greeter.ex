defmodule TheGreeter do
  def new do
    name = String.trim(IO.gets("Hi there, what's your name?\n"))
    greet name
  end

  def greet(name) do
    case name do
      "Andrew" ->
        "Wow, Andrew is my favourite name! I was programmed by Andrew! :-)"

      _ ->
        "Hi there #{name}, nice to meet you"
    end
  end
end
