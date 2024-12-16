import { Application } from "@hotwired/stimulus"
import './logo_click';


const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
