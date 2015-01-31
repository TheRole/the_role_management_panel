<h2 align="center" class='center' style="text-align:center">
  TheRole. Management Panel on Bootstrap 3
</h2>

<p align="center" class='center' style="text-align:center">
  <b>Authorization gem for Ruby on Rails</b><br>
  <i>with Management Panel</i>
</p>

<p align="center" class='center' style="text-align:center">
  <img src="https://raw.githubusercontent.com/TheRole/TheRoleApi/master/docs/the_role.png" alt="TheRole. Authorization gem for Ruby on Rails with Administrative interface">
</p>

<p align="center" class='center' style="text-align:center">
  <b>Semantic. Flexible. Lightweigh</b>
</p>

<div align="center" class='center' style="text-align:center">

<a href="http://badge.fury.io/rb/the_role"><img src="https://badge.fury.io/rb/the_role.svg" alt="Gem Version" height="18"></a>
&nbsp;
<a href="https://travis-ci.org/TheRole/DummyApp"><img src="https://travis-ci.org/TheRole/DummyApp.svg?branch=master" alt="Build Status" height="18"></a>
&nbsp;
<a href="https://codeclimate.com/github/TheRole/TheRoleManagementPanelBootstrap3"><img src="https://codeclimate.com/github/TheRole/TheRoleManagementPanelBootstrap3/badges/gpa.svg" /></a>
&nbsp;
<a href="https://www.ruby-toolbox.com/categories/rails_authorization">ruby-toolbox</a>
</div>

<hr>

<table>
<tr>
  <td>TheRole management web interface => localhost:3000/admin/roles</td>
</tr>
<tr>
  <td>
    <img src="https://raw.githubusercontent.com/TheRole/the_role_api/master/docs/gui.png" alt="TheRole GUI">
  </td>
</tr>
</table>

#### Import/Export

If you have 2 Rails apps, based on TheRole - you can move roles between them via export/import abilities of TheRole Management Panel.
It can be usefull for Rails apps based on one engine.

<div align="center" class='center' style="text-align:center">
  <img src="./docs/import_export.png" alt="TheRole. Authorization gem for Ruby on Rails with Administrative interface">
</div>

## Installation

#### 0. Gemfile

```ruby
gem 'the_role_api',              '~> 3.0.0'
gem 'the_role_management_panel', '~> 3.0.0'
```

or

```ruby
gem 'the_role', '~> 3.0.0'
```

and after that

```sh
bundle
```

#### 1. Assets and Bootstrap

<i>app/assets/stylesheets/manage_panel.css</i>

```
//= require the_notification/vendors/toastr

@import "bootstrap-sprockets";
@import "bootstrap";
```

<i>app/assets/javascript/manage_panel.js.coffee</i>

```
#= require jquery
#= require jquery_ujs

#= require bootstrap
#= require the_role_editinplace

#= require the_notification/vendors/toastr
#= require the_notification

$ ->
  TheNotification.show_notifications()
```

```haml
!!!
%html
  %head
    %title TheRole manage Panel
    = stylesheet_link_tag    :manage_panel
    = javascript_include_tag :manage_panel
    = stylesheet_link_tag "http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css"

    = csrf_meta_tags
  %body
    .container
      .row
        .col-md-12.header
          %h2 TheRole Manage Panel
          = render partial: 'the_notification/flash', locals: { format: :json }

      .row
        .col-md-3.manage_panel
          = yield :role_sidebar

        .col-md-9.main_content
          = yield
          = yield :role_main
```

### MIT License

Copyright (c) 2012-2015 [Ilya N.Zykin]

#### Maintainers

@the-teacher, @seuros, @sedx

#### Contributors

@igmarin, @doabit, @linjunpop, @egb3
