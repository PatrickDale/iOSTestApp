# iOSTestApp
Basic intro to view models and Quick/Nimble testing 
Part of iOS workshop - Diving into MVVM

# Setting up your Enviornment:

## Install Xcode:
* Download from the AppStore

## Install CocoaPods: 

### Without latest ruby installed (currently 2.3.1):
* Install rbenv if you do not have it already: `brew install rbenv`
* Install most recent, stable version of ruby: `rbenv install 2.3.1` 

### With Ruby already installed: 
* Install CocoaPods: `gem install cocoapods`

### Set Up Your Workspace
1. Open Xcode
2. Select `Create new Xcode Project`
3. Select `Single View Application`
4. Enter a name, select `Swift` for the language, select `iPhone` for devices, and check `Include Unit Tests` 
5. Choose the location to save your project
6. Once saved, close the project in Xcode
6. Go to the project in your terminal
7. Create a Podfile using CocoaPods: `pod init`
8. Open the Podfile in a text editor
9. Change it to look like the following, where `yourApp` is the name you chose for your App
<pre><code>workspace 'yourApp'
  project 'yourApp.xcodeproj'
  platform :ios, '9.2'
  
  use_frameworks!
  
  def testing_pods
    pod 'Quick', '~> 0.9.2'
    pod 'Nimble', '~> 4.0.1'
  end
  
  target 'yourApp' do
  end
  
  target 'yourAppTests' do
    testing_pods
  end
</code></pre>
10. Install the dependencies: `pod install`
11. Reopen the project's workspace: `open yourApp.xcworkspace`

### Starting the Server
* `cd server`
* `npm install`
* `npm start`
* verify that hitting `localhost:8000` displays 'welcome'

