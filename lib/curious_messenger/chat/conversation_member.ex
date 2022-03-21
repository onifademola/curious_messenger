defmodule CuriousMessenger.Chat.ConversationMember do
  use Ecto.Schema
  import Ecto.Changeset

  alias CuriousMessenger.Auth.User
  alias CuriousMessenger.Chat.Conversation

  schema "chat_conversation_members" do
    field :owner, :boolean, default: false
    # field :conversation_id, :id
    # field :user_id, :id

    belongs_to :user, User
    belongs_to :conversation, Conversation

    timestamps()
  end

  @doc false
  def changeset(conversation_member, attrs) do
    conversation_member
    |> cast(attrs, [:owner, :conversation_id, :user_id])
    |> validate_required([:owner, :converstaion_id, :user_id])
    |> unique_constraint(:user, name: :chat_conversation_members_converstaion_id_user_id_index)
    |> unique_constraint(:converstaion_id, name: :chat_conversation_members_owner)
  end
end
