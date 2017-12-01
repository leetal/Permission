Pod::Spec.new do |s|
  s.name         = "leetal-Permission"
  s.module_name  = "Permission"
  s.version      = "2.1.1"
  s.license      = { :type => "MIT" }
  s.homepage     = "https://github.com/leetal/Permission"
  s.author       = { "Damien" => "damien@delba.io", "Alexander Widerberg" => "widerbergaren@gmail.com" }
  s.summary      = "A unified API to ask for permissions on iOS"
  s.source       = { :git => "https://github.com/leetal/Permission.git", :tag => "v#{s.version}" }

  s.weak_framework = 'Speech'

  s.ios.deployment_target = "8.0"

  s.requires_arc = true

  s.default_subspec = 'Core'

  s.subspec 'Core' do |co|
    co.source_files = "Source/**/*.{swift, h}"
  end

  s.subspec 'AddressBook' do |ab|
    ab.dependency 'leetal-Permission/Core'
    ab.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_ADDRESS_BOOK" }
  end

  s.subspec 'Bluetooth' do |bl|
    bl.dependency 'leetal-Permission/Core'
    bl.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_BLUETOOTH" }
  end

  s.subspec 'Camera' do |cm|
    cm.dependency 'leetal-Permission/Core'
    cm.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_CAMERA" }
  end

  s.subspec 'Contacts' do |cn|
    cn.dependency 'leetal-Permission/Core'
    cn.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_CONTACTS" }
  end

  s.subspec 'Events' do |ev|
    ev.dependency 'leetal-Permission/Core'
    ev.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_EVENTS" }
  end

  s.subspec 'Location' do |lo|
    lo.dependency 'leetal-Permission/Core'
    lo.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_LOCATION" }
  end

  s.subspec 'Microphone' do |mi|
    mi.dependency 'leetal-Permission/Core'
    mi.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_MICROPHONE" }
  end

  s.subspec 'Motion' do |mo|
    mo.dependency 'leetal-Permission/Core'
    mo.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_MOTION" }
  end

  s.subspec 'Notifications' do |no|
    no.dependency 'leetal-Permission/Core'
    no.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_NOTIFICATIONS" }
  end

  s.subspec 'UserNotifications' do |un|
    un.dependency 'leetal-Permission/Core'
    un.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_USER_NOTIFICATIONS" }
  end

  s.subspec 'Photos' do |ph|
    ph.dependency 'leetal-Permission/Core'
    ph.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_PHOTOS" }
  end

  s.subspec 'Reminders' do |re|
    re.dependency 'leetal-Permission/Core'
    re.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_REMINDERS" }
  end

  s.subspec 'SpeechRecognizer' do |rs|
    rs.dependency 'leetal-Permission/Core'
    rs.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_SPEECH_RECOGNIZER" }
  end

  s.subspec 'MediaLibrary' do |ml|
    ml.dependency 'leetal-Permission/Core'
    ml.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_MEDIA_LIBRARY" }
  end

  s.subspec 'Siri' do |ab|
    ab.dependency 'leetal-Permission/Core'
    ab.pod_target_xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "PERMISSION_SIRI" }
  end
end
