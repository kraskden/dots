#!/bin/bash

killall chromium
exec chromium --disable-frame-rate-limit 'https://tankionline.com/play'
