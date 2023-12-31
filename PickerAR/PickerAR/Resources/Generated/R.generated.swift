//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import RswiftResources

private class BundleFinder {}
let R = _R(bundle: Bundle(for: BundleFinder.self))

struct _R {
  let bundle: Foundation.Bundle
  var color: color { .init(bundle: bundle) }
  var image: image { .init(bundle: bundle) }
  var file: file { .init(bundle: bundle) }

  func color(bundle: Foundation.Bundle) -> color {
    .init(bundle: bundle)
  }
  func image(bundle: Foundation.Bundle) -> image {
    .init(bundle: bundle)
  }
  func file(bundle: Foundation.Bundle) -> file {
    .init(bundle: bundle)
  }
  func validate() throws {

  }

  struct project {
    let developmentRegion = "en"
  }

  /// This `_R.color` struct is generated, and contains static references to 1 colors.
  struct color {
    let bundle: Foundation.Bundle

    /// Color `AccentColor`.
    var accentColor: RswiftResources.ColorResource { .init(name: "AccentColor", path: [], bundle: bundle) }
  }

  /// This `_R.image` struct is generated, and contains static references to 4 images.
  struct image {
    let bundle: Foundation.Bundle

    /// Image `fender_stratocaster`.
    var fender_stratocaster: RswiftResources.ImageResource { .init(name: "fender_stratocaster", path: [], bundle: bundle, locale: nil, onDemandResourceTags: nil) }

    /// Image `robot_walk_idle`.
    var robot_walk_idle: RswiftResources.ImageResource { .init(name: "robot_walk_idle", path: [], bundle: bundle, locale: nil, onDemandResourceTags: nil) }

    /// Image `teapot`.
    var teapot: RswiftResources.ImageResource { .init(name: "teapot", path: [], bundle: bundle, locale: nil, onDemandResourceTags: nil) }

    /// Image `toy_biplane_idle`.
    var toy_biplane_idle: RswiftResources.ImageResource { .init(name: "toy_biplane_idle", path: [], bundle: bundle, locale: nil, onDemandResourceTags: nil) }
  }

  /// This `_R.file` struct is generated, and contains static references to 4 resource files.
  struct file {
    let bundle: Foundation.Bundle

    /// Resource file `fender_stratocaster.usdz`.
    var fender_stratocasterUsdz: RswiftResources.FileResource { .init(name: "fender_stratocaster", pathExtension: "usdz", bundle: bundle, locale: LocaleReference.none) }

    /// Resource file `robot_walk_idle.usdz`.
    var robot_walk_idleUsdz: RswiftResources.FileResource { .init(name: "robot_walk_idle", pathExtension: "usdz", bundle: bundle, locale: LocaleReference.none) }

    /// Resource file `teapot.usdz`.
    var teapotUsdz: RswiftResources.FileResource { .init(name: "teapot", pathExtension: "usdz", bundle: bundle, locale: LocaleReference.none) }

    /// Resource file `toy_biplane_idle.usdz`.
    var toy_biplane_idleUsdz: RswiftResources.FileResource { .init(name: "toy_biplane_idle", pathExtension: "usdz", bundle: bundle, locale: LocaleReference.none) }
  }
}