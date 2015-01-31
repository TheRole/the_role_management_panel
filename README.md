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

## Installation

Gemfile

```ruby
  gem 'the_role_bootstrap3_ui'
```

And then execute:

```sh
  $ bundle
```

Or install it yourself as:

```sh
  $ gem install the_role_bootstrap3_ui
```

## Usage

### Assets and Bootstrap

**application.css**

```
//= require bootstrap
```

**application.js**

```
//= require jquery
//= require jquery_ujs

//= require bootstrap
//= require the_role_editinplace
```

## MIT

zykin-ilya@ya.ru

2014

===

### GUI

:warning: UI moved in **the_role_bootstrap3_ui** gem

https://github.com/the-teacher/the_role_bootstrap3_ui

We are waiting for **foundation** version of UI

<table>
<tr>
  <td>TheRole management web interface => localhost:3000/admin/roles</td>
</tr>
<tr>
  <td><img src="https://github.com/the-teacher/the_role/raw/master/pic.png" alt="TheRole"></td>
</tr>
</table>

puts following yields into your layout:

```ruby
= yield :role_sidebar
= yield :role_main
```

### Rails 4 version

```
gem 'the_role', '~> 2.5.2'

gem 'the_role_bootstrap3_ui'
```

Please read *the_role_bootstrap3_ui* docs to know more about assets

https://github.com/the-teacher/the_role_bootstrap3_ui


## If you have any questions

Please, before asking anything try to launch and play with the **[Dummy App](spec/dummy_app)** in the spec folder. Maybe an example integration will be better than any documentation. Thank you!
