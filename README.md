## SpectralMuse

built with [Spectra](https://github.com/dcunited001/SpectraNu)


### Building for OSX

everything should be set now. When i set it up, I just followed the
directions on carthage's github, including the FRAMEWORK_SEARCH_PATHS.  

Setting up Muse:

### Building for iOS

I needed to follow the Carthage directions, setting
FRAMEWORK_SEARCH_PATHS.

I ran into some problems including spectra with Carthage.  this project
requires that MetalKit is available when building.  This means that iOS
hardware has to be available and the compiler needs to be configured to
build specifically for that arch.  So carthage doesn't involve this
stuff with it's automated build process using xcode commandline tools.
So, it can't build projects that include MetalKit as a dependency.  At
least, not without some tweaking.  So i built the project manually -- it
must be built under a target.

And now after I `import Fuzi` into the project I'm running into some
issues with the header search paths.  either it can't find libxml2 or
i add it to the search paths and i run into module map issues


