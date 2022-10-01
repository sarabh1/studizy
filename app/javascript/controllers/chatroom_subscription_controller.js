import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { chatroomId: Number, currentUserId: Number }
  static targets = ["messages"]

  connect() {
    let message = document.querySelector(".messages")
    message.scrollTop = message.scrollHeight;
    
    this.channel = consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      // Test pour savoir qui est le user, OK
      // { user: "User", id: this.currentUserIdValue },
      // ###########~~~~~~~~~~~~   A quoi ca sert ça  en dessous ?     ~~~~~~~~~~~~###########
      { received: data => this.#insertMessageAndScrollDown(data) }
    )
    console.log(`Subscribed to the chatroom with the id ${this.chatroomIdValue}`)
    // Test pour savoir qui est connecté, OK
    console.log(`Subscribed to the chatroom as the user n° ${this.currentUserIdValue}`)
  }

  #insertMessageAndScrollDown(data) {
    console.log(data)
    //Logic to know if the sender is the current user or No (le this currentUserIdValue fonctionne)
    const currentUserIsSender = this.currentUserIdValue === data.sender_id

    // On crée le message depuis la string data.message
    const messageElement = this.#buildMessageElement(currentUserIsSender, data.message)
    console.log(this.messagesTarget)

    this.messagesTarget.insertAdjacentHTML("beforeend", messageElement)
    // this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
    let message = document.querySelector(".messages")
    message.scrollTop = message.scrollHeight;
  }

  #buildMessageElement(currentUserIsSender, message) {
    return `
      <div class="message-row d-flex ${this.#justifyClass(currentUserIsSender)}">
        <div class="${this.#userStyleClass(currentUserIsSender)}">
          ${message}
        </div>
      </div>
    `
  }

  #justifyClass(currentUserIsSender) {
    return currentUserIsSender ? "justify-content-end" : "justify-content-start"
  }
  
  #userStyleClass(currentUserIsSender) {
    return currentUserIsSender ? "sender-style" : "receiver-style"
  }

  resetForm(event) {
    event.target.reset()
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
