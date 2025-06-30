#!/usr/bin/swift sh

// How to run:
// swift sh run.swift /path/to/your/project.xcodeproj
import Foundation
import XcodeProj  // @tuist ~> 8.8.0
import PathKit

let projectPath = Path(CommandLine.arguments[1])
let xcodeproj = try XcodeProj(path: projectPath)

xcodeproj.pbxproj.groups.forEach { group in
  print("Group: name=\(group.name), path=\(group.path)")
}

/* Output:
Group: name=Optional("Products"), path=nil
Group: name=nil, path=Optional("SubFolder")
Group: name=nil, path=Optional("ExampleAddFile")
Group: name=nil, path=nil
Group: name=nil, path=Optional("ExampleAddFileUITests")
Group: name=nil, path=Optional("ExampleAddFileTests")
*/
