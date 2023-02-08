# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

<p>Hello <%= @employee.name %>,</p>
<p>Here are the details of your shift:</p>
<% if @shift.roster.present? %>
  <p>Roster Date: <%= @shift.roster.roster_date.strftime("%B %d, %Y") %></p>
<% end %>
<p>Shift Start Time: <%= @shift.start_time.strftime("%I:%M %p") %></p>
<p>Shift End Time: <%= @shift.end_time.strftime("%I:%M %p") %></p>
<p>Company Name: <%= @employee.company.name %></p>
<p>Click <%= link_to "here", shift_url(@shift) %> to view the details online.</p>

<p>Hello <%= @employee.name %>,</p>