import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["room"]

  connect() {
    console.log(this.roomTarget)
  }

  highlight(event) {
    // event.preventDefault()
    // this.roomTarget.classList.add("active")
    let elems = document.querySelectorAll(".active");
    [].forEach.call(elems, function(el) {
      el.classList.remove("active");
    });
    event.target.className = "active";
    event.preventDefault()
  }
}
