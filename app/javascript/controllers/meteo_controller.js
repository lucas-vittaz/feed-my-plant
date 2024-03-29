import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["injectMeteo"];

  static values = {
    apiKey: String,
  };
  connect() {
    const months = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December",
    ];
    const d = new Date();
    let month = months[d.getMonth()];
    const dayInt = new Date().getDate();

    const days = [
      "Sunday",
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday",
    ];
    const date = new Date();
    let day = days[date.getDay()];

    const lat = 47.218102;
    const lon = -1.5528;
    const meteoKey = "aac79809d879a46349a93205ce8851d8";

    fetch(
      `https://api.openweathermap.org/data/2.5/onecall?lat=${lat}&lon=${lon}&units=metric&appid=${this.apiKeyValue}`
    )
      .then(function (resp) {
        return resp.json();
      }) // Convert data to json
      .then(function (data) {
        console.log(data);
        let temps = data.current.weather[0].description;

        let temperature = `${Math.trunc(data.current.temp)} °c`;
        document.querySelector(".meteo-degree").innerHTML = temperature;
        document.querySelector(
          ".meteo-value"
        ).innerHTML = `Nantes ${day} ${dayInt}th ${month}`;

        document.querySelector(
          ".meteo-icons"
        ).innerHTML = `<img src='http://openweathermap.org/img/wn/${data.current.weather[0].icon}@2x.png'/>`;
      });
  }
}
