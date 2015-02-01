<h2 align="center" class='center' style="text-align:center">
  TheRole. Management Panel on Bootstrap 3
</h2>

<p align="center" class='center' style="text-align:center">
  <b>Authorization gem for Ruby on Rails</b><br>
  <i>with Management Panel</i>
</p>

<p align="center" class='center' style="text-align:center">
  <img src="https://raw.githubusercontent.com/TheRole/docs/master/images/the_role.png" alt="TheRole. Authorization gem for Ruby on Rails with Administrative interface">
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
  <td>
    <b align="center" class='center' style="text-align:center">
      http://localhost:3000/admin/roles
    </b>
  </td>
</tr>
<tr>
  <td>
    <img src="https://raw.githubusercontent.com/TheRole/docs/master/images/gui.png?2" alt="TheRole GUI">
  </td>
</tr>
</table>

#### Import/Export

If you have 2 Rails apps, based on TheRole - you can move roles between them via export/import abilities of TheRole Management Panel.
It can be usefull for Rails apps based on one engine.

<div align="center" class='center' style="text-align:center">
  <img src="https://raw.githubusercontent.com/TheRole/docs/master/images/import_export.png" alt="TheRole. Authorization gem for Ruby on Rails with Administrative interface">
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

#### 1. Check TheRole initializer

<i>config/initializers/the_role.rb</i>

```ruby
TheRole.configure do |config|
  # [ Devise => :authenticate_user! | Sorcery => :require_login ]
  config.login_required_method = :authenticate_user!

  # layout for Management panel
  config.layout = :the_role_management_panel

  # config.default_user_role          = nil
  # config.first_user_should_be_admin = false

  # config.access_denied_method       = :access_denied
  # config.destroy_strategy           = :restrict_with_exception # can be nil
end
```

#### 2. Add Routing mixin

<i>config/config/routes.rb</i>

```ruby
RailsApp::Application.routes.draw do
  # ... code ...
  #
  # something like this:
  # root to: 'welcome#index'
  # devise_for :users
  # resources  :users
  # resources  :pages

  TheRoleManagementPanel::Routes.mixin(self)
end
```

#### 3. Add link to TheRole Manage Panel

<i>HAML</i>

```ruby
- if current_user
  - if current_user.admin? || current_user.moderator?(:roles)
    = link_to 'TheRole Manage Panel',  admin_roles_path
```

### MIT License

Copyright (c) 2012-2015 [Ilya N.Zykin]

#### Maintainers

@the-teacher, @seuros, @sedx

#### Contributors

@igmarin, @doabit, @linjunpop, @egb3
