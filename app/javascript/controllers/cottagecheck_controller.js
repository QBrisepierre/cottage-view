import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cottagenew"
export default class extends Controller {
  static targets = [
    "checkAddress",
    "buttonAddress",

    "checkOccupancy",
    "checkBathroom",
    "checkBed",
    "checkBedroom",
    "buttonRooms",

    "buttonEquipments",

    "checkPhotos",
    "buttonPhotos",

    "checkName",
    "buttonName",

    "checkDescription",
    "buttonDescription",

    "checkPrice",
    "buttonPrice",

    "progressBar",
    "submitButton"
  ]
  address() {
    if (this.checkAddressTarget.value) {
      this.buttonAddressTarget.classList.remove("btn-warning", "text-white")
      this.buttonAddressTarget.classList.add("btn-primary")
      this.buttonRoomsTarget.classList.remove("disabled")
      this.progressBarTarget.style.width = "14%"
    }else {
      this.buttonAddressTarget.classList.remove("btn-primary")
      this.buttonAddressTarget.classList.add("btn-warning", "text-white")
      this.buttonRoomsTarget.classList.add("disabled")
      this.progressBarTarget.style.width = "0%"
    }
  }
  rooms() {
    if (this.checkOccupancyTarget.value != 0 && this.checkBathroomTarget.value != 0 && this.checkBedTarget.value != 0 &&  this.checkBedroomTarget.value) {
      this.buttonRoomsTarget.classList.remove("btn-warning", "text-white")
      this.buttonRoomsTarget.classList.add("btn-primary")
      this.buttonEquipmentsTarget.classList.remove("disabled")
      this.progressBarTarget.style.width = "28%"
    }else {
      this.buttonRoomsTarget.classList.remove("btn-primary")
      this.buttonRoomsTarget.classList.add("btn-warning", "text-white")
      this.buttonEquipmentsTarget.classList.add("disabled")
      this.progressBarTarget.style.width = "14%"
    }
  }
  equipments() {
    this.buttonEquipmentsTarget.classList.remove("btn-warning", "text-white")
    this.buttonEquipmentsTarget.classList.add("btn-primary")
    this.buttonPhotosTarget.classList.remove("disabled")
    this.progressBarTarget.style.width = "42%"
  }

  photos() {
    if (this.checkPhotosTarget.files.length >= 5) {
      this.buttonPhotosTarget.classList.remove("btn-warning", "text-white")
      this.buttonPhotosTarget.classList.add("btn-primary")
      this.buttonNameTarget.classList.remove("disabled")
      this.progressBarTarget.style.width = "56%"
    }else {
      this.buttonPhotosTarget.classList.remove("btn-primary")
      this.buttonPhotosTarget.classList.add("btn-warning", "text-white")
      this.buttonNameTarget.classList.add("disabled")
      this.progressBarTarget.style.width = "42%"
    }
  }

  name() {
    if (this.checkNameTarget.value) {
      this.buttonNameTarget.classList.remove("btn-warning", "text-white")
      this.buttonNameTarget.classList.add("btn-primary")
      this.buttonDescriptionTarget.classList.remove("disabled")
      this.progressBarTarget.style.width = "70%"
    }else {
      this.buttonNameTarget.classList.remove("btn-primary")
      this.buttonNameTarget.classList.add("btn-warning", "text-white")
      this.buttonDescriptionTarget.classList.remove("add")
      this.progressBarTarget.style.width = "56%"
    }
  }
  description() {
    if (this.checkDescriptionTarget.value.length >= 60) {
      this.buttonDescriptionTarget.classList.remove("btn-warning", "text-white")
      this.buttonDescriptionTarget.classList.add("btn-primary")
      this.buttonPriceTarget.classList.remove("disabled")
      this.progressBarTarget.style.width = "84%"
    }else {
      this.buttonDescriptionTarget.classList.remove("btn-primary")
      this.buttonDescriptionTarget.classList.add("btn-warning", "text-white")
      this.buttonPriceTarget.classList.add("disabled")
      this.progressBarTarget.style.width = "70%"
    }
  }
  price() {
    if (this.checkPriceTarget.value >= 20) {
      this.buttonPriceTarget.classList.remove("btn-warning", "text-white")
      this.buttonPriceTarget.classList.add("btn-primary")
      this.submitButtonTarget.classList.remove("disabled", "bg-warning")
      this.submitButtonTarget.classList.add("bg-primary")
      this.progressBarTarget.style.width = "100%"
    }else {
      this.buttonPriceTarget.classList.remove("btn-primary")
      this.buttonPriceTarget.classList.add("btn-warning", "text-white")
      this.submitButtonTarget.classList.add("disabled", "bg-warning",)
      this.submitButtonTarget.classList.remove("bg-primary")
      this.progressBarTarget.style.width = "84%"
    }
  }

}
