# README

This is a small application that tracks the inventory items while adding and while updating with quantity in reactive and realtime scenario using turbo frames and action cable that are shipped inbuilt rails-7.x.x.

Things covered:
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
	- Refecence Video URL: https://github.com/user-attachments/assets/dd350e93-8b74-4d15-9ba4-50c58cead00c

* Configuration to rn the application.
	- cd inventory_tracking_system
	- bundle install
	- bin/rails db:create
	- bin/rails generate model InventoryItem name:string quantity:integer location:string
	- bin/rails db:migrate
	- bin/rails server


