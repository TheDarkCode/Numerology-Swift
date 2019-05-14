# Numerology (Swift)
Date numerology utilities written in Swift.

## Usage

```swift
Date.init(month: 1, day: 1, year: 2000)!.isLeapYear // true
Date.init(month: 1, day: 1, year: 2019)!.isLeapYear // false
Date.init(month: 11, day: 10, year: 2019)!.dayOfYear // 314
Date.init(month: 11, day: 10, year: 2019)!.daysLeftInYear // 51
Date.init(month: 11, day: 11, year: 2019)!.fullNumerology // 61
Date.init(month: 11, day: 11, year: 2019)!.fullExpandedNumerology // 16
Date.init(month: 11, day: 11, year: 2019)!.fullYearExpandedNumerology // 34
Date.init(month: 11, day: 11, year: 2019)!.monthDayExpandedFullNumerology // 43
Date.init(month: 11, day: 11, year: 2019)!.shortNumerology // 41
Date.init(month: 11, day: 11, year: 2019)!.shortExpandedNumerology // 14
Date.init(month: 11, day: 11, year: 2019)!.shortYearExpandedNumerology // 32
Date.init(month: 11, day: 11, year: 2019)!.monthDayNumerology // 22
Date.init(month: 11, day: 11, year: 2019)!.monthDayExpandedNumerology // 4
Date.init(month: 11, day: 10, year: 2019)!.expandedMultipliedNumerology // 18
Date.init(month: 11, day: 10, year: 2019)!.shortExpandedMultipliedNumerology // 9
```

## CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

> CocoaPods is required to build Numerology 0.1+.

To integrate Numerology into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

pod 'Numerology', '~> 0.1'
```

Then, run the following command:

```bash
$ pod install
```

## Support:

##### Send any questions or requests to: support@dryverless.com

## Contributing

- 1) Fork this repository!
- 2) Create your feature branch: ```git checkout -b Your-New-Feature```
- 3) Commit your changes: ```git commit -am 'Adding some super awesome update'```
- 4) Push to the branch: ```git push origin Your-New-Feature```
- 5) Submit a pull request!

## License
Copyright (c) 2019 Mark Hamilton

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
