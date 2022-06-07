import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["injectMeteo"];

  static values = {
    apiKey: String
  }
  connect() {
    console.log("stimulus connected");
    console.log(this.apiKeyValue)
    const months = ["January","February","March","April","May","June","July","August","September","October","November","December"];
    const d = new Date();
    let month = months[d.getMonth()];
    const dayInt = new Date().getDate();

    const days = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
    const date = new Date();
    let day = days[date.getDay()];

    const lat = 47.218102;
    const lon = -1.5528;
    const meteoKey = "aac79809d879a46349a93205ce8851d8";
    console.log("connected");
    fetch(
      `https://api.openweathermap.org/data/2.5/onecall?lat=${lat}&lon=${lon}&units=metric&appid=${this.apiKeyValue}`
    )
      .then(function (resp) {
        return resp.json();
      }) // Convert data to json
      .then(function (data) {
        console.log(data);
        let temps = data.current.weather[0].description;
        console.log(temps);
        let temperature = `${Math.trunc(data.current.temp)} °C`;
        document.querySelector('.meteo-value').innerHTML = `Nantes : ${day} ${dayInt} ${month} - ${temperature}`;

        document.querySelector('.meteo-icons').innerHTML = `<img src='http://openweathermap.org/img/wn/${data.current.weather[0].icon}@2x.png'/>`
        // let imgIcone =  `imgpath/jour/${resultatsAPI.current.weather[0].icon}.svg`
        console.log();
        // let imgIcone =  `imgpath/nuit/${resultatsAPI.current.weather[0].icon}.svg`
        console.log();
        //  let hour = new Date().getHours();
      });
  }
}
