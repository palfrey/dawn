Dawn
====
[![Build Status](https://travis-ci.com/palfrey/dawn.svg?branch=master)](https://travis-ci.com/palfrey/dawn)

Named both for the [NASA Dawn mission](http://dawn.jpl.nasa.gov/) and that it turned
up when I did a thesaurus search for Countdown. It's a replacement for the previously excellent [TfL](https://tfl.gov.uk/) Countdown site, which [they recently got rid of](https://blog.tfl.gov.uk/2016/05/24/countdown-moving-to-the-tfl-website/). I was annoyed by this, until they turned out to have [done a lot of work to their API recently](https://api.tfl.gov.uk/), so I could fix this.

Live version
------------
https://dawn.tevp.net/

Local Setup
-----------
1. [Install Rust](https://www.rustup.rs/)
2. `cargo run`
3. Goto [http://localhost:8000](http://localhost:8000)

Heroku Setup
------------
1. Make [new Heroku app](https://dashboard.heroku.com/new?org=personal-apps)
2. `heroku git:remote --app dawn-stops` (replacing "dawn-stops" with the name of your app)
3. `heroku buildpacks:set https://github.com/Hoverbear/heroku-buildpack-rust.git`
4. `heroku config:set RUST_VERSION=1.21.0 TZ="Europe/London" RUST_BACKTRACE=1`
5. ` git push heroku master`

AWS Lambda Setup
----------------
This uses [actix_lambda](https://github.com/palfrey/actix_lambda) and you should follow the setup instructions over there to make this work there

License
-------
[AGPL3](LICENSE)
