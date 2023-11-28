import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="booking"
export default class extends Controller {
  static targets = ["price", "startDate", "endDate"]
  connect() {
    console.log(this.startDateTarget.value)
  }
  updatePrice() {
  }
}
