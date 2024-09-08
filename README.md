# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 
	- ruby-3.0.0

* Ruby version 
	- rails-7.1.4

* Database
  - sqlite3

* System dependencies
  - Hotwire, Turbo Frames, Stimulus for reactive and realtime updates
	- Bootstrap CSS for UI design

* Implementaion Plan
	- Created a simple InventoryItem model with name, quantity and location
	- Set all fields mandatory
	- Created dashboard and inventory_items controller
	- Loaded all inventory items in dashboard page which is home page of the application.
	- Additionally rendered intentory_item form on the top of the home page to create new items.
	- Added an update form with 'Quantity' field alone on each inventory item loaded on dashboard page.
	- Able to update the quantity.
	- Integrated hotwire framework with turbo_frame_tag(s) to provide the interactive and realtime feel of users who monitor this application from different machines(browsers)
	- Integrated Stimulus JS to clear the form immidiatly after the form is submitted.

* Configuration to rn the application.
	- cd inventory_tracking_system
	- bundle install
	- bin/rails db:create
	- bin/rails generate model InventoryItem name:string quantity:integer location:string
	- bin/rails db:migrate
	- bin/rails server


