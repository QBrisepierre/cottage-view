import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking"
let adult = 1
export default class extends Controller {
  static values = {
    price: Number,
    total: Number
  }
  static targets = ["price", "startDate", "endDate", "priceValue", "taxe", "total", "night", "checkAdult", "adultCounter", "adlutBorderUp", "adultBorderDown", "priceTotalValue"]
  connect () {
    this.taxeTarget.innerText = (this.priceValue * 0.18).toFixed()
    this.totalTarget.innerText = this.priceValue + Number(this.taxeTarget.innerText) + 10
    this.nightTarget.innerText =  "".concat(this.priceValue, ' ', "€ x 1 Nuit")
    this.priceTotalValueTarget.value = this.priceValue + Number(this.taxeTarget.innerText) + 10
    console.log(this.priceTotalValueTarget.value)
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
      this.priceTotalValueTarget.value = this.priceValue + Number(this.taxeTarget.innerText) + 10
    console.log(this.priceTotalValueTarget.value)

    } 
    else {
      const diffInDay = (new Date(end) - new Date(start)) / (1000 * 60 * 60 * 24)
      this.priceTarget.innerText = diffInDay * this.priceValue
      this.priceValueTarget.value = diffInDay * this.priceValue
      this.taxeTarget.innerText = (Number(this.priceValueTarget.value) * 0.18).toFixed()
      this.totalTarget.innerText =  Number(this.priceValueTarget.value) + Number(this.taxeTarget.innerText) + 10
      this.nightTarget.innerText = "".concat(this.priceValue, ' ', "€ x",' ', diffInDay, ' ', "Nuits")
      this.priceTotalValueTarget.value = Number(this.priceValueTarget.value) + Number(this.taxeTarget.innerText) + 10
    console.log(this.priceTotalValueTarget.value)

    }
  }

  upAdult() {
    if (this.checkAdultTarget.value === (this.totalValue - 1).toString()) {
      adult++
      this.adultCounterTarget.innerText = adult
      this.checkAdultTarget.value = adult
      this.adlutBorderUpTarget.classList.remove("border-secondary", "hover-count")
      this.adlutBorderUpTarget.style.cursor = "not-allowed"
    } else if (this.checkAdultTarget.value === this.totalValue.toString()) {
      console.log("Stop")
    } else {
      this.adlutBorderUpTarget.classList.add("border-secondary", "hover-count")
      this.adlutBorderUpTarget.style.cursor = "pointer"

      this.adultBorderDownTarget.classList.add("border-secondary", "hover-count")
      this.adultBorderDownTarget.style.cursor = "pointer"
      adult++
      this.adultCounterTarget.innerText = adult
      this.checkAdultTarget.value = adult
    }
  }

  downAdult(){
    if (this.checkAdultTarget.value === this.totalValue.toString()) {
      adult--
      this.adultCounterTarget.innerText = adult
      this.checkAdultTarget.value = adult
      this.adlutBorderUpTarget.classList.add("border-secondary", "hover-count")
      this.adlutBorderUpTarget.style.cursor = "pointer"
    } else if (this.checkAdultTarget.value === "1") {
      adult--
      this.adultCounterTarget.innerText = adult
      this.checkAdultTarget.value = adult
      this.adultBorderDownTarget.classList.remove("border-secondary", "hover-count")
      this.adultBorderDownTarget.style.cursor = "not-allowed"
    } else if (this.checkAdultTarget.value === "") {
      console.log("Stop 0")
    } else {
      adult--
      this.adultCounterTarget.innerText = adult
      this.checkAdultTarget.value = adult
    }
    console.log(this.checkAdultTarget.value)
  }
}
