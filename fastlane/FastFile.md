# This file contains the fastlane.tools configuration
# You can find the documentation at https://docs.fastlane.tools
#
# For a list of all available actions, check out
#
#     https://docs.fastlane.tools/actions
#
# For a list of all available plugins, check out
#
#     https://docs.fastlane.tools/plugins/available-plugins
#

# Uncomment the line if you want fastlane to automatically update itself
# update_fastlane

default_platform(:ios)

ENV["FASTLANE_XCODEBUILD_SETTINGS_RETRIES"] = "4"

platform :ios do

      lane :tests do
      run_tests(
        workspace: "SwiftUI Base Components.xcworkspace",
           devices: ["iPhone 14"],
            scheme: "UpcomingMovies",
      code_coverage: true
        )
    end

    lane :lint do
    swiftlint(
      mode: :lint,
      executable: './Pods/SwiftLint/swiftlint',
      output_file: "swiftlint.result.json",
      raise_if_swiftlint_error: true
    )
    end

end
