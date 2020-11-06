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

  defstruct name: "id",
            class: :noclass,
            from_res: :nores,
            from_stub: [],
            to_res: :nores,
            to_stub: [],
            deps: []

  @typedoc """
  The type of a primitive.

  * `:name`: a name for the primitive to be used for redirecting specific implementations
  * `:class:`: a descriptor of the class of measure involved, used to determine conditional association with frames
  * `:from_res`: a descriptor of the resource class that the primitive queries
  * `:from_stub`: a list of entities to fetch or measure from a resource
  * `:to_res`: a descriptor of the resource class that the primitive alters
  * `:to_stub`: a list of entities to store or alter in a resource
  * `:deps`: a list of primitives of which the current one depends
  """
  @type t :: %__MODULE__{ name: String.t(),
                          class: class(),
                          from_res: resource(),
                          from_stub: list(),
                          to_res: resource(),
                          to_stub: list(),
                          deps: list() }
end
