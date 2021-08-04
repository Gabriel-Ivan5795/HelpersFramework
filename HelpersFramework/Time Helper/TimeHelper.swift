//
//  TimeHelper.swift
//  NowAppHelpers
//
//  Created by Ivan Gabriel on 23.04.2021.
//

import UIKit

open class TimeHelper {
    open class func secondsToHoursMinutesSeconds(seconds: Int) -> (Int, Int, Int) {
        return (seconds / 3600, (seconds % 3600) / 60, (seconds % 3600) % 60)
    }

    open class func secondsToMinute(seconds: Int) -> (Int) {
        return (seconds / 60)
    }

    open class func createStringFromTime(_hours: Int, _minutes: Int, _seconds: Int) -> String {
        var finalString: String = ""
        if _hours > 0 {
            if _hours <= 9 {
                finalString = finalString.appending(String(format: "0%d:", _hours))
            } else {
                finalString = finalString.appending(String(format: "%d:", _hours))
            }
            if _minutes <= 9 {
                finalString = finalString.appending(String(format: "0%d:", _minutes))
            } else {
                finalString = finalString.appending(String(format: "%d:", _minutes))
            }
            if _seconds <= 9 {
                finalString = finalString.appending(String(format: "0%d", _seconds))
            } else {
                finalString = finalString.appending(String(format: "%d", _seconds))
            }
            return finalString
        } else {
            if _minutes > 0 {
                if _minutes <= 9 {
                    finalString = finalString.appending(String(format: "0%d:", _minutes))
                } else {
                    finalString = finalString.appending(String(format: "%d:", _minutes))
                }
                if _seconds <= 9 {
                    finalString = finalString.appending(String(format: "0%d", _seconds))
                } else {
                    finalString = finalString.appending(String(format: "%d", _seconds))
                }
                return finalString
            } else {
                if _seconds <= 9 {
                    finalString = finalString.appending(String(format: "00:0%d", _seconds))
                } else {
                    finalString = finalString.appending(String(format: "00:%d", _seconds))
                }
                return finalString
            }
        }
    }
}

public extension Int {
    var msToSeconds: Double { Double(self) / 1000 }
}

