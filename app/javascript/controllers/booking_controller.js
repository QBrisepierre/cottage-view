import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking"
export default class extends Controller {
  static values = {
    price: Number
  }
  static targets = ["price", "startDate", "endDate", "priceValue", "taxe", "total", "night"]
  connect () {
    this.taxeTarget.innerText = (this.priceValue * 0.18).toFixed()
    this.totalTarget.innerText = this.priceValue + Number(this.taxeTarget.innerText) + 10
    this.nightTarget.innerText =  "".concat(this.priceValue, ' ', "€ x 1 Nuit")
  }

  updatePrice() {
    const start = Date.parse(this.startDateTarget.value)
    const end = Date.parse(this.endDateTarget.value)
    if (start > end || start === end) {
      this.endDateTarget.value = ""
      this.priceTarget.innerText = this.priceValue
      this.priceValueTarget.value = this.priceValue
      this.taxeTarget.innerText = (this.priceValue * 0.18).toFixed()
      this.totalTarget.innerText = this.priceValue + Number(this.taxeTarget.innerText) + 10 
    } 
    else {
      const diffInDay = (new Date(end) - new Date(start)) / (1000 * 60 * 60 * 24)
      this.priceTarget.innerText = diffInDay * this.priceValue
      this.priceValueTarget.value = diffInDay * this.priceValue
      this.taxeTarget.innerText = (Number(this.priceValueTarget.value) * 0.18).toFixed()
      this.totalTarget.innerText =  Number(this.priceValueTarget.value) + Number(this.taxeTarget.innerText) + 10
      this.nightTarget.innerText = "".concat(this.priceValue, ' ', "€ x",' ', diffInDay, ' ', "Nuits")
    }
  }
}
