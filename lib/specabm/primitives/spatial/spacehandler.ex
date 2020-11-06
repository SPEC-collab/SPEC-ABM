defmodule SPECabm.Primitives.Space.Handler do
  @moduledoc """
  A module to which general spatial primitives are delegated. In turn, it delegates resposibilities to
  all concrete implementations of spatial primitives.
  """
  alias SPECabm.Primitives.Policy

  @behaviour Policy

  @impl Policy
  def apply(primitive) do
    {:ok, primitive}
  end

  @impl Policy
  def transcribe(primitive) do
    {:ok, primitive}
  end

end
