import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["room", "home", "container"];

  connect(event) {

    let cible = document.querySelector(".active")
    this.containerTarget.scrollBy(cible.getBoundingClientRect().x, cible.getBoundingClientRect().y)
  }

  highlight(event) {

    let index = document.querySelector(".active");
    this.roomTarget.classList.add("active");
    index.classList.remove("active");
  }
}
