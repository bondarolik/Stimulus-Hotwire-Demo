import { Controller } from "stimulus"

export default class extends Controller {
  handleSelectChange() {
    this.populateStateField(this.element.value, this.element.getAttribute('data-targetbox'))
  }

  populateStateField(country_id, target_box) {
    const state_box = document.getElementById(target_box)
    state_box.innerHTML = ''

    let option = document.createElement('option')
    option.value = ''
    option.innerHTML = 'Selecciona una provincia'
    state_box.appendChild(option)
    state_box.disabled = false

    fetch('/regions/states?id='+country_id, {
      credentials: 'same-origin'
    })
      .then(response => response.json())
      .then(data => {
        data.forEach(item => {
          let option = document.createElement('option')
          option.value = item[0]
          option.innerHTML = item[1]
          state_box.appendChild(option)
        })
      })
  }
}
