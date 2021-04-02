//
// Xcore
// Copyright © 2014 Xcore
// MIT license, see LICENSE file for details
//

import Foundation

extension Calendar: MutableAppliable {
    public static var `default`: Self = .current

    public static var ec = Self(
        identifier: .gregorian
    ).applying {
        $0.locale = Locale(identifier: "en_US_POSIX")
        $0.timeZone = Calendar.current.timeZone
        print("ec: tz: \($0.timeZone), L:\($0.locale), id: \($0.identifier)")
    }

    public static let iso = Self(
        identifier: .gregorian
    ).applying {
        $0.timeZone = .gmt
        $0.locale = .usPosix
    }
}
