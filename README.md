
# react-native-considerate-service

## Getting started

`$ npm install react-native-considerate-service --save`

### Mostly automatic installation

`$ react-native link react-native-considerate-service`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-considerate-service` and add `RNConsiderateService.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNConsiderateService.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNConsiderateServicePackage;` to the imports at the top of the file
  - Add `new RNConsiderateServicePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-considerate-service'
  	project(':react-native-considerate-service').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-considerate-service/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-considerate-service')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNConsiderateService.sln` in `node_modules/react-native-considerate-service/windows/RNConsiderateService.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Considerate.Service.RNConsiderateService;` to the usings at the top of the file
  - Add `new RNConsiderateServicePackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNConsiderateService from 'react-native-considerate-service';

// TODO: What to do with the module?
RNConsiderateService;
```
  