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

* ...<% if current_user %>

  <h1><u>DashBoard</u></h1>
    <h2><p>Hello <%= current_user.username %></p></h2>
    <h3><p><b>You are a <%= current_user.role %> at <%= current_user.company.name%></b></p></h3>
    <% if current_user.Manager? %>
       <h1><u>Manager DashBoard</u></h1>
       <h3><%= link_to "Create Roster", new_roster_path %> |
       <%= link_to "View Rosters", rosters_url %> |
       <%= link_to "view Shifts", shifts_url %> |
       <%= link_to "For Admin Login", "/admin" %></strong></h3>
       <h2><%= link_to "Sign out", destroy_user_session_path,data: {turbo_method: :delete, turbo_confirm: "Are you sure?"} %></h2>
    <% else %>
    <h2>
     <p>Please sign out and sign in as a manager or employee to access the Dashboard.</p>
     <h2><%= link_to "Sign out", destroy_user_session_path,data: {turbo_method: :delete, turbo_confirm: "Are you sure?"} %></h2>
     <h2><%=link_to "For more details" , "/admin"%></h2>
   <% end %>
<% else %>

  <h2>
   <p>Login Page</p>
   <%= link_to "User login" , new_user_session_path %><br/>
   <%= link_to "Manager login" , new_user_session_path %><br/>
   <%= link_to "Employee login" , new_employee_session_path%><br/>
   <b>If you are a new user, login to admin and create user</b><br/>
   <%= link_to "Admin Login", "/admin" %></strong>
  </h2>
<% end %>

<% if current_employee %>
  <h1><u>Employee DashBoard</u></h1>
  <h3><%= link_to "View your shifts", shifts_path %> |
  <%= link_to "For Admin Login", "/admin" %></strong></h3>
  <h2><%= link_to "Sign out", destroy_employee_session_path,data: {turbo_method: :delete, turbo_confirm: "Are you sure?"} %></h2>
<% end %>

