
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["chart"]
  static values = {
    latestHygrometry: Number,
    minMaxHygrometry: Array
  }

  connect() {
    // console.log (this.latestHygrometryValue)
    // console.log (this.minMaxHygrometryValue)
    const chartWidth  = 100;
    let needleValue = this.latestHygrometryValue / 7.5;

    // console.log(needleValue)

    let options = {
      hasNeedle: true,
      outerNeedle: false,
      needleUpdateSpeed : 500,
      needleColor: "##AAA2A2",
      needleStartValue: 0,
      arcColors: ["#F77B7D","#7BF77F","#F77B7D"],
      arcDelimiters: this.minMaxHygrometryValue.map(value => {
        return  value / 7.5
      }),
      // arcLabels: ["Under","Over"],
      arcPadding : 4,
      arcPaddingColor : ["#d8eecc"],
      arcOverEffect : false,
      rangeLabel: ["0","100"],
      centralLabel: label,
      rangeLabelFontSize: 10,
    }

    let arcDelimiters = options.arcDelimiters;

    function label() {
      if (needleValue < arcDelimiters[0]) {
        return "🥵"
      } else if ( needleValue > arcDelimiters[1]) {
        return "😰"
      } else {
        return "😌"
      }
    }

    if (this.hasChartTarget) {
      GaugeChart.gaugeChart(this.chartTarget, chartWidth, options).updateNeedle(needleValue)
    }
  }
}
