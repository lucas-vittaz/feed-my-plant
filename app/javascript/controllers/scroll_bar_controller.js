import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["room", "home", "container"];

  connect(event) {
    let cible = document.querySelector(".active");
    this.containerTarget.scrollBy(
      cible.getBoundingClientRect().x,
      cible.getBoundingClientRect().y
    );
    console.log(this.homeTarget);
    if (this.homeTarget.classList.contains("active")) {
      //#id svg bg teracotta
      document.querySelector("#c14_house").style.fill = "white";
    } else {
      //#id svg bg dark-green
      document.querySelector("#c14_house").style.fill = "red";
    }
  }

  highlight(event) {
    let index = document.querySelector(".active");
    this.roomTarget.classList.add("active");
    index.classList.remove("active");
  }
}
