import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cottagenew"
let occupancy = 0
let bathroom = 0
let bed = 0
let bedroom = 0

export default class extends Controller {
  static targets = [
    "stepOne",
    "buttonOne",

    "checkAddress",
    "stepAddress",
    "buttonAddress",

    "checkOccupancy",
    "checkBathroom",
    "checkBed",
    "checkBedroom",
    "stepRooms",
    "buttonRooms",

    "stepEquipments",
    "buttonEquipments",

    "checkPhotos",
    "stepPhotos",
    "buttonPhotos",

    "checkName",
    "stepName",
    "buttonName",

    "stepDescription",
    "buttonDescription",

    "occupancyCounter",
    "bathroomCounter",
    "bedCounter",
    "bedroomCounter",
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

  toStepAddress() {
      this.stepOneTarget.classList.add("d-none")
      this.stepAddressTarget.classList.remove("d-none")
      this.buttonOneTarget.classList.add("d-none")
      this.buttonAddressTarget.classList.remove("d-none")
  }

  toStepRooms(){
    if(this.checkAddressTarget.value) {
      this.stepAddressTarget.classList.add("d-none")
      this.stepRoomsTarget.classList.remove("d-none")
      this.buttonAddressTarget.classList.add("d-none")
      this.buttonRoomsTarget.classList.remove("d-none")
    }
  }

  toStepEquipments(){
    if (this.checkOccupancyTarget.value != 0 && this.checkBathroomTarget.value != 0 && this.checkBedTarget.value != 0 &&  this.checkBedroomTarget.value) {
      this.stepRoomsTarget.classList.add("d-none")
      this.stepEquipmentsTarget.classList.remove("d-none")
      this.buttonRoomsTarget.classList.add("d-none")
      this.buttonEquipmentsTarget.classList.remove("d-none")
    }
  }

  toStepPhotos(){
    this.stepEquipmentsTarget.classList.add("d-none")
    this.stepPhotosTarget.classList.remove("d-none")
    this.buttonEquipmentsTarget.classList.add("d-none")
    this.buttonPhotosTarget.classList.remove("d-none")
  }

  toStepName(){
    if (this.checkPhotosTarget.files.length >= 5){
      this.stepPhotosTarget.classList.add("d-none")
      this.stepNameTarget.classList.remove("d-none")
      this.buttonPhotosTarget.classList.add("d-none")
      this.buttonNameTarget.classList.remove("d-none")
    }
  }

  toStepDescription() {
    console.log("hello")
    if (this.checkNameTarget.value) {
      console.log("if")
      this.stepNameTarget.classList.add("d-none")
      this.stepDescriptionTarget.classList.remove("d-none")
      this.buttonNameTarget.classList.add("d-none")
      this.buttonDescriptionTarget.classList.remove("d-none")
    }
  }

  
  upOccupancy(){
    occupancy++
    this.occupancyCounterTarget.innerText = occupancy
    this.checkOccupancyTarget.value = occupancy
    console.log(this.checkOccupancyTarget.value)
  }
  downOccupancy(){
    occupancy--
    this.occupancyCounterTarget.innerText = occupancy
    this.checkOccupancyTarget.value = occupancy
    console.log(this.checkOccupancyTarget.value)
  }

  upBathroom(){
    bathroom++
    this.bathroomCounterTarget.innerText = bathroom
    this.checkBathroomTarget.value = bathroom
    console.log(this.checkBathroomTarget.value)
  }
  downBathroom(){
    bathroom--
    this.bathroomCounterTarget.innerText = bathroom
    this.checkBathroomTarget.value = bathroom
    console.log(this.checkBathroomTarget.value)
  }

  upBed(){
    bed++
    this.bedCounterTarget.innerText = bed
    this.checkBedTarget.value = bed
    console.log(this.checkBedTarget.value)
  }
  downBed(){
    bed--
    this.bedCounterTarget.innerText = bed
    this.checkBedTarget.value = bed
    console.log(this.checkBedTarget.value)
  }

  upBedroom(){
    bedroom++
    this.bedroomCounterTarget.innerText = bedroom
    this.checkBedroomTarget.value = bedroom
    console.log(this.checkBedroomTarget.value)
  }
  downBedroom(){
    bedroom--
    this.bedroomCounterTarget.innerText = bedroom
    this.checkBedroomTarget.value = bedroom
    console.log(this.checkBedroomTarget.value)
  }


}
