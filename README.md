#BYTEPOETS Swift Project Template

##Features
* Create a Swift XCode Project with:
	* Podfile and XCGlogger dependency
	* SwiftLint
	* SwiftGen
	* Fastlane
	
##How to
* Copy the BYTEPOETS folder to **~/Library/Developer/Xcode/Templates**.
* Install SwiftLint (**https://github.com/realm/SwiftLint**)
* In XCode go to **File -> New Project** and select the BYTEPOETS Swift Template. 
	* Enter your Apple ID and your Apple Team ID (both are used for fastlane)
	* Change the Path to XCode if necessary (only relevant for fastlane)

##Post Project Creation Steps:
* Delete the "zzz_delete_me_after_generation" folder (this is used to work around an issue with the xcode project template)
* Fix ordering of the SwiftLint and SwiftGen Build Phases
	* SwiftGen after TargetDependencies step
	* SwiftLint after CompileSources step
* Close the project and run pod install in the project directory
* Open the .xcworkspace file

##Important Environment Variables
* DELIVER_PASSWORD
	* The password of your Apple Developer account (used by fastlane to upload your app)
* KEYCHAIN_PASSWORD
	* The password of your keychain (used by fastlane for provisioning profiles)


##Build and deploy with fastlane
* Make sure the app (same bundle identifier) exists in iTunes Connect
* Run **fastlane build && appstore**
	* Builds the project and uploads the app to Testflight