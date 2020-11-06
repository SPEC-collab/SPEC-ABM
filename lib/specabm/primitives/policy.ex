defmodule SPECabm.Primitives.Policy do
  @moduledoc """
  A behavior to achieve uniformity in how primitives are applied.
  """
  alias SPECabm.Primitives.Primitive

  @doc """
  Apply a primitive in the context of an agent's specification and resources.

  * `:primitive`: the primitive to apply
  """
  @callback apply(Primitive.t()) :: {:ok, Primitive.t()} | {:error, String.t}

  @doc """
  Obtain a Transcript of the result of applying a primitive based on the transformation that occured.

  * `:primitive`: a primitive that has been applied
  * `:transformation`: the representation of a transformation
  * `:outcome`: the result obtained from applying the primitive
  """
  @callback transcribe(Primitive.t()) :: {:ok, Primitive.t()} | {:error, String.t}
end
