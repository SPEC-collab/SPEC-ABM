defmodule SPECabm.Primitives.Primitive do
  @moduledoc """
  Struct representing the specification of a primitive. Primitives are the atomic (i.e. most fundamental)
  entities in SPECabm.
  """

  @typedoc """
  The type of the class of a primitive.
  """
  @type class :: :noclass | :spatial | :sensing | :memory |
                  :composition | :action | :interaction | :planning

  @typedoc """
  The type of resource involved in a primitive.
  """
  @type resource :: :nores | :clock | :space | :memory | :channel

  defstruct name: "null",
            class: :noclass,
            from_res: :nores,
            to_res: :nores

  @typedoc """
  The type of a primitive.

  * `:name`: a name for the primitive to be used for redirecting specific implementations
  * `:class:`: a descriptor of the class of measure involved, used to determine conditional association with frames
  * `:res_from`: a descriptor of the resource class that the primitive queries
  * `:res_to`: a descriptor of the resource class that the primitive alters
  """
  @type t :: %__MODULE__{ name: String.t(), class: class(),
                          from_res: resource(), to_res: resource() }
end
