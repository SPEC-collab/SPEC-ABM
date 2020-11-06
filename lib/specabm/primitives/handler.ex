defmodule SPECabm.Primitives.Handler do
  @moduledoc """
  A toplevel module that provides a uniform access interface for all types of primitives in SPECabm.
  """
  alias SPECabm.Primitives.Policy

  # Most specific handlers need to be known
  alias SPECabm.Primitives.Space.Handler, as: SpaceHandler

  @behaviour Policy

  @doc """
  The implementation of the process of applying a spatial primitive.
  """
  @impl Policy
  def apply(primitive) do
    case primitive.class do
      :spatial -> SpaceHandler.apply(primitive)
      _ -> {:error, "Unknow primitive class cannot be applied"}
    end
  end

  @impl Policy
  def transcribe(primitive) do
    case primitive.class do
      :spatial -> SpaceHandler.transcribe(primitive)
      _ -> {:error, "Unknow primitive class cannot be transcribed"}
    end
  end

end
