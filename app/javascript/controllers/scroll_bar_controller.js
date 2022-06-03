import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["room", "home"]

  connect() {

  }

  highlight(event) {
    let active_cards = document.querySelectorAll(".active");

    console.log(event.currentTarget)
    console.log(event.currentTarget === this.homeTarget)
    active_cards.forEach(function(card){
      card.classList.remove("active")
    })
    this.roomTarget.classList.add("active");
  }
}
