defprotocol SPECabm.Primitives.Policy do
  @moduledoc """
  A protocol to achieve uniformity in how primitives are applied.
  """

  @doc """
  Apply a primitive in the context of an agent's specification and resources.

  * `:primitive`: the primitive to apply
  """
  def apply(primitive)

  @doc """
  Obtain a Transcript of the result of applying a primitive based on the transformation that occured.

  * `:primitive`: a primitive that has been applied
  * `:transformation`: the representation of a transformation
  * `:outcome`: the result obtained from applying the primitive
  """
  def transcribe(primitive, transformation, outcome)
end
