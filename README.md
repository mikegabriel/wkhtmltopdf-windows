# wkhtmltopdf-windows

Provides a [wkhtmltopdf](http://wkhtmltopdf.org/) executable for Windows environment.

Preconfigures [pdfkit](https://rubygems.org/gems/pdfkit), [wicked_pdf](https://rubygems.org/gems/wicked_pdf), and [wisepdf](http://rubygems.org/gems/wisepdf) to use this executable if they are loaded.

## Installation

In your `Gemfile`:

```ruby
  gem 'wkhtmltopdf-windows'
```

## Usage

### When using with `wicked_pdf`

Since `wicked_pdf` overwrites its `config` hash in the initializer, you
will need to update it to make sure its `exe_path` is configured
correctly.

If you don't need any extra configurations, you can simply remove the
initializer. Or you can change it to:

```ruby
WickedPdf.config ||= {}
WickedPdf.config.merge!({
  # your extra configurations here
})
```

### When using with `pdf_kit` or `wisepdf`

No extra configuration is needed. But please make sure you are not
re-configuring the binary path again in their initializer files.

### When using with other gems

You will need to configure the path manually. You can get the path to
the executable by using this: `Gem.bin_path('wkhtmltopdf-windows', 'wkhtmltopdf.exe')`

## Current wkhtmltopdf binary Version

[0.12.5.0 MSVC 2015 Win64](https://github.com/wkhtmltopdf/wkhtmltopdf/tree/0.12.5)

For more details see wkhtmltopdf [Changelog](https://github.com/wkhtmltopdf/wkhtmltopdf/blob/master/CHANGELOG.md)

## Special Thanks

This gem is based on [wkhtmltopdf-heroku](https://github.com/rposborne/wkhtmltopdf-heroku)

## Copyright

Copyright (c) 2019 Mike Gabriel. See LICENSE.txt for further details.