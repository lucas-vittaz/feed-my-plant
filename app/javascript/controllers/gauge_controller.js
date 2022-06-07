
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["chart"]
  static values = {
    latestHygrometry: Number,
    minMaxHygrometry: Array
  }

  connect() {
    console.log("Hello from our first Stimulus controller")
    // console.log (this.latestHygrometryValue)
    // console.log (this.minMaxHygrometryValue)
    let chartWidth  = 120
    let needleValue = this.latestHygrometryValue / 7.5
    let options = {
      hasNeedle: true,
      outerNeedle: false,
      needleColor: "#2ecc71",
      needleStartValue: 50,
      arcColors: ["#c0392b","#2ecc71","#c0392b"],
      arcDelimiters: this.minMaxHygrometryValue.map(value => {
        return value / 7.5
      }),
      // arcLabels: ["Under","Over"],
      arcPadding : 4,
      arcPaddingColor : ["#d8eecc"],
      arcOverEffect : false,
      rangeLabel: ["0","100"],
      centralLabel: "Water",
      rangeLabelFontSize: 6,
}

      GaugeChart.gaugeChart(this.chartTarget, chartWidth, options).updateNeedle(needleValue)



  }
}
