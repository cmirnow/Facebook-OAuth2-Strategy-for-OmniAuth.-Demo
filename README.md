# Facebook OAuth2 Strategy for OmniAuth

## Implementing Facebook-OmniAuth with Devise & ActiveAdmin for Rails 6 app

## Use

```
$ git clone https://github.com/cmirnow/Facebook-OAuth2-Strategy-for-OmniAuth.-Demo.git
$ cd Facebook-OAuth2-Strategy-for-OmniAuth.-Demo
$ heroku create
$ git push heroku master
$ heroku run db:migrate
$ heroku run db:seed
```

Generate your application on Facebook. Take the Client ID and Client Secret.

Go to Heroku.com administration panel, YOUR_NEW_APPLICATION -> 'Settings' -> 'Reveal Config Vars' and add a new key/value lines:

```
key: APP_ID, value: Client ID
key: APP_SECRET, value: Client Secret
key: CALLBACK_URL, value: https://<YOUR_SUBDOMAIN>.herokuapp.com/users/auth/facebook/callback
```

Now you can log into the admin panel with these credentials:
```
email: admin@example.com, password: password
```
Don't forget to change your login information.

[Demo](https://omniauth-facebook-demo.herokuapp.com).