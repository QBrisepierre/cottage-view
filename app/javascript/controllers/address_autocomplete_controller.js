import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="address-autocomplete"
export default class extends Controller {
  static values = { apiKey: String }

  static targets = ["address", "map"]
  connect() {
    console.log(this.mapTarget)
    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      types: "country,region,place,postcode,locality,neighborhood,address"
    })
    this.geocoder.addTo(this.element)

    this.geocoder.on("result", event => this.#setInputValue(event))
     this.geocoder.on("clear", () => this.#clearInputValue())
  }

  disconnect() {
    this.geocoder.onRemove()
  }

  #setInputValue(event) {
    this.addressTarget.value = event.result["place_name"]
  }
  
  #clearInputValue() {
    this.addressTarget.value = ""
  }

  showMap() {
    // TODO: Construct the URL (with apiKey & userInput) and make the fetch request to the mapbox API
    const url = `https://api.mapbox.com/geocoding/v5/mapbox.places/${this.addressTarget.value}.json?access_token=${this.apiKeyValue}`;
  
    fetch(url)
      .then(response => response.json())
      .then((data) => {
        console.log(data);
        // TODO: Insert the info into the DOM
        // - Extract the coordinates from the parsed JSON response (lang, lat)
        const longitude = data.features[0].center[0];
        const latitidue = data.features[0].center[1];
        // - Create a map using the Mapbox API and the coordinates
        this.#injectMap(longitude, latitidue);
        // - Add a marker to the map at the coordinates
      });
  };

  #injectMap(lng, lat) {
    this.mapTarget.innerHTML = "";
  
    mapboxgl.accessToken = this.apiKeyValue;
    const map = new mapboxgl.Map({
      container: this.mapTarget,
      style: "mapbox://styles/mapbox/streets-v12",
      center: [lng, lat],
      zoom: 17,
    });
    new mapboxgl.Marker().setLngLat([lng, lat]).addTo(map);
    this.mapTarget.classList.add("fade-in-static")
  };
  
}


