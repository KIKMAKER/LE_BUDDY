import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="conversation-subscription"
export default class extends Controller {
  static values = {
    ConversationId: Number }

    static targets = ["messages"]

  connect() {
    console.log("Subscribe to the chatroom with the id ${this.conversationIdValue}.")
    createConsumer().subscriptions.create(
      { channel: "ConversationChannel", id: this.ConversationIdValue }
    )
  }
}
