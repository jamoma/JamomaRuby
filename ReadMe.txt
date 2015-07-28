 Jamoma Ruby
Language Bindings for the Jamoma Platform
_________________________________________________________________


Introduction
The Jamoma Foundation API and Runtime is an open source, cross-platform, C++ programming layer for creating dynamically-bound objects optimized for realtime processing contexts.  It the basis of commercial products such as TapTools, Jade, and Hipno, and is used by other open source projects such as Jamoma Modular.


Features
- Rapid development
- Self-documenting and clear code-structure
- Attributes are range-checked and limited


Installing
Build by running "ruby build.rb" and install by running "ruby install.rb"

NOTE: On the lastest Mac OS this does not appear to work. As a work around you can pass the path to the lib as detailed below.


Running Examples

Call Ruby, pass the path to the Jamoma.bundle extension we just built, and then the path to the Ruby file.
The following assumes you have cd'd into the "examples" folder.

ruby -Ilib:../library SmoothingFilter.rb 


Documentation / API
Please check the examples folder until more formal documentation exists.


License
Jamoma Foundation is licensed as open source software under the terms of the GNU LPGL.


Known Issues & Wish List
See the issue tracker at http://redmine.jamoma.org


More Information
This project hosted is hosted at http://github.com/


Change Log
The change log can be found at http://redmine.jamoma.org

