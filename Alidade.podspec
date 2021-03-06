Pod::Spec.new do |s|
  s.name         = "Alidade"
  s.version      = "0.2.0"
  s.summary      = "Utility components"

  s.homepage     = "https://github.com/netcosports/Alidade"
  s.license      = { :type => "MIT" }
  s.author = { 
    'Dmitry Duleba' => 'dmitry.duleba@netcosports.com'
  }
  s.source       = { :git => "https://github.com/netcosports/Alidade.git", :tag => s.version.to_s }
  s.framework = ["UIKit", "Foundation"]

  s.ios.deployment_target = "9.0"
  
  s.default_subspec = 'Default'

  s.subspec 'Default' do |ss|
    ss.dependency 'Alidade/Core'
    ss.dependency 'Alidade/FormatterPool'
    ss.dependency 'Alidade/Vectors'
    ss.dependency 'Alidade/String'
    ss.dependency 'Alidade/UI'
    ss.dependency 'Alidade/UIExtension'
  end

  s.subspec 'Core' do |ss|
    ss.source_files = 'Utility/Source/Core/*.swift'
  end

  s.subspec 'Geometry' do |ss|
    ss.source_files = 'Utility/Source/Geometry/*.swift'
    ss.dependency 'Alidade/Core'
    ss.dependency 'Alidade/Vectors'
  end

  s.subspec 'Vectors' do |ss|
    ss.source_files = 'Utility/Source/Vectors/*.swift'
    # ss.dependency 'Interpolate'
  end

  s.subspec 'String' do |ss|
    ss.source_files = 'Utility/Source/String/*.swift'
    ss.dependency 'Alidade/Core'
  end

  s.subspec 'UI' do |ss|
    ss.source_files = 'Utility/Source/UI/**/*.swift'
  end

  s.subspec 'UIExtension' do |ss|
    ss.source_files = 'Utility/Source/UIExtension/*.swift'
  end

  # Other

  s.subspec 'Associatable' do |ss|
    ss.source_files = 'Utility/Source/Other/Associatable.swift'
    ss.dependency 'Alidade/Boxed'
  end

  s.subspec 'Boxed' do |ss|
    ss.source_files = 'AlidUtilityade/Source/Other/Boxed.swift'
  end

  s.subspec 'Flowable' do |ss|
    ss.source_files = 'Utility/Source/Other/Flowable.swift'
  end

  s.subspec 'FormatterPool' do |ss|
    ss.source_files = 'Utility/Source/Other/FormatterPool.swift'
  end

end
