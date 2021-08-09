#
#  Be sure to run `pod spec lint HelpersFramework.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "HelpersFramework"
  spec.version      = "1.3"
  spec.summary      = "A short description of HelpersFramework."

  spec.description  = "A long description of HelpersFramework."

  spec.homepage     = "https://www.facebook.com/ivan.gabriel.319/"

  spec.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  LICENSE
}
  spec.author       = { "Ivan Gabriel" => "gabriel.ivan@roweb.ro" }

  spec.platform     = :ios
  spec.platform     = :ios, "10.0"

  spec.source       = { :git => "https://github.com/gabiRoweb/HelpersFramework.git", :tag => "#{spec.version}" }

  spec.source_files  = "HelpersFramework", "HelpersFramework/**/*.{h,m}"
  spec.exclude_files = "HelpersFramework/Exclude"

end
