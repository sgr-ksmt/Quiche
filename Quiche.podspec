Pod::Spec.new do |s|
  s.name             = "Quiche"
  s.version          = "0.1.0"
  s.summary          = "Type-safe Firestore Query for Swift."
  s.homepage         = "https://github.com/sgr-ksmt/Quiche"
  s.license          = 'MIT'
  s.author           = { "Suguru Kishimoto" => "melodydance.k.s@gmail.com" }
  s.source           = { :git => "https://github.com/sgr-ksmt/Quiche.git", :tag => s.version.to_s }
  s.platform         = :ios, '9.0'
  s.requires_arc     = true
  s.source_files     = "Sources/**/*"
  s.static_framework = true
  s.dependency "Firebase/Firestore"
end
