##Adding Closed Captions support to FFmpeg's libraries and integrating with CCExtractor

####Personal Details
* **Name**: Pranav Vaish
* **Email**: pranav.vaish@gmail.com
* **University**: [Indian Institute of Technology, Kanpur, India](http://www.iitk.ac.in)
* **Degree-Major**: B.Tech in Computer Science and Engineering
* **Telephone**: (+91)7753058610 or (+91)9545702024
* **IRC**: vaishious@irc.freenode.net
* **Github**: [vaishious](https://github.com/vaishious)
* **Time Zone**: GMT(UTC) +0530

####Title
Adding Closed Captions support to FFmpeg's libraries and integrating with CCExtractor

####Abstract
My proposal is to use CCExtractor's libraries to add support for Closed Captions in FFmpeg. This will allow FFmpeg to handle closed caption streams during decoding and encoding of media. The main point to note is that this will help CCExtractor use FFmpeg for decoding video files with closed captions. This adds support for many video files which are currently not supported in CCExtractor's parser.

####Benefits to both Communities
This integration work will help both CCExtractor and FFmpeg. CCExtractor will be able to handle many more different types of files given the diversity of FFmpeg. FFmpeg will be able to treat the closed captions as a different stream and use filters on it. Also inter community bonding improves which can result in future code improvements for both.

####Detailed Description
