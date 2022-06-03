import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["room"]

  connect() {
    console.log(this.roomTarget)
  }

  highlight(event) {
    let active_cards = document.querySelectorAll(".active");

    active_cards.forEach(function(card){
      card.classList.remove("active")
    })
    this.roomTarget.classList.add("active");
  }
}
