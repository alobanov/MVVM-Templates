# Objective-c templates of modified VIPER architecture calls VPS (view-presenter-services)
This is the collection of templates for [`Generamba`](https://github.com/rambler-digital-solutions/Generamba)

TODO: Add services initialization

## Installation
1) Setup [`Generamba`](https://github.com/rambler-ios/Generamba) and run `generamba setup` and fill out `Rambafile`

2) Updates templates section in your `Rambafile` as follow:
```
### Templates
catalogs:
- 'https://github.com/alobanov/vps-template'
templates:
- {name: vps_controller}
```

3) Run `generamba template install`

5) Enjoy
