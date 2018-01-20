defmodule Hound.ResponseParsers.ChromeDriver do
  @moduledoc false

  use Hound.ResponseParser

  def handle_error(%{"message" => "no such element" <> _rest}) do
    {:error, :no_such_element}
  end
  
  @doc """
  Disable warnings so all errors are exceptions.
  """
  def warning?(_), do: false
end
