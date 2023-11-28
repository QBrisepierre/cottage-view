import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

  const start_date = Date.now()
  const end_date = new Date()
  end_date.setDate(end_date.getDate() + 5);
// Connects to data-controller="datepickr"
export default class extends Controller {

  static targets = ["startDate", "endDate"]

  connect() {
    this.startDateTarget.flatpickr({
      defaultDate: new Date(start_date)
      })
    this.endDateTarget.flatpickr({
      defaultDate: new Date(end_date)
      })
  }
}
