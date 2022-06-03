import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["injectMeteo"];
  connect() {
    console.log("connected");
    fetch('http://api.openweathermap.org/data/2.5/forecast?id=2990968&appid=aac79809d879a46349a93205ce8851d8')
      .then(function (resp) {
        return resp.json();
      }) // Convert data to json
      .then(function (data) {
        console.log(data);
      });
  }
}
