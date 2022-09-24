import { Controller } from "@hotwired/stimulus"
import consumer from "../channels/consumer"

export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages"]

  connect() {
    let message = document.querySelector(".messages")
    message.scrollTop = message.scrollHeight;
    console.log(`Subscribe to the chatroom with the id ${this.chatroomIdValue}.`)
    this.channel = consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      {received: data => this.#insertMessageAndScrollDown(data)}
    )
    console.log(`Subscribed to the chatroom with the id ${this.chatroomIdValue}.`)
  }

  #insertMessageAndScrollDown(data) {
    let message = document.querySelector(".messages")
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    // console.log(this.element)
    message.scrollTop = message.scrollHeight;
    // this.messagesTarget.scrollTo(0, this.element.scrollHeight)
    // scroll = 0
  }
  resetForm(event) {
    event.target.reset()
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }
}
