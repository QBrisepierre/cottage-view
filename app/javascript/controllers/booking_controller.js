import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking"
export default class extends Controller {
  static values = {
    price: Number
  }
  static targets = ["price", "startDate", "endDate"]

  updatePrice() {
    const start = Date.parse(this.startDateTarget.value)
    const end = Date.parse(this.endDateTarget.value)
    const diffInDay = (new Date(end) - new Date(start)) / (1000 * 60 * 60 * 24)
    this.priceTarget.value = diffInDay * this.priceValue

  }
}
