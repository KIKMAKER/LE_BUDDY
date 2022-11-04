import { Controller } from "@hotwired/stimulus";
import { createConsumer } from "@rails/actioncable";

// Connects to data-controller="conversation-subscription"
export default class extends Controller {
  static values = {
    conversationId: Number,
  };
  static targets = ["messages"];

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "ConversationChannel", id: this.conversationIdValue },
      {
        received: (data) => {
          this.#insertMessageAndScrollDown(data);
        },
      }
    );
  }
  resetForm(event) {
    event.target.reset();
  }

  #insertMessageAndScrollDown(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data);
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight);
  }
}
