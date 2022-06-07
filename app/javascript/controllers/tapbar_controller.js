import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["alert", "search"]

  // connect() {
  //   // console.log("hello");
  // }

  // redirectToAlertPage() {
  //   document.location.href = "../my_garden/user_plants/needing_attention"
  // }

  // redirectToSearchPage(event) {
  //   document.location.href = "../plants"
  //   // console.log("yoyoyoyoyoyoyoyoyoyoyoy je suis un truc qui marche pas")
  //   this.searchTarget.setAttribute("checked", true)
  //   event.preventDefault()
  //   // event.stopPropagation()
  // }

  // redirectToGardenPage(event) {
  //   document.location.href = "../my_garden/user_plants"
  // }


}
