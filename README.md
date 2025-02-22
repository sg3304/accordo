First commit contains the following commits:
  - Basic phx init application
  - html discord app channel view basic html template
  - app.css modification
  - templates modification for app.css
  - removed tailwind.css and scattered configs and references
  - added /home route and livepage
  - fixed css deploy pipeline. 
      desc: after removint tailwind css wasn't changing. assets.deploy would only deploy app.js because  
      it wasn't imported in app.js (esbuild builds the opposite way than runtime (builds from bottom: rest -> app.js ->html. 
      runs from top: html.heex-> app.js -> rest))
