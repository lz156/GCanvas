Pod::Spec.new do |s|

  s.name         = "GCanvas"
  s.version      = "1.0.6.1"
  s.summary      = "GCanvas Source."

  s.description  = <<-DESC
                   A cross-platform fast Canvas render engine.
                   DESC

  s.homepage     = 'https://github.com/alibaba/GCanvas'
  s.license = {
    :type => 'Copyright',
    :text => <<-LICENSE
           Alibaba-INC copyright
    LICENSE
  }

  s.author       = { 'jwxbond' => 'jwxbond@gmail.com' }

  s.platform     = :ios

  s.ios.deployment_target = '8.0'

 # s.source =  { :path => '.' }
  s.source =  { :git => "https://github.com/alibaba/GCanvas.git", :tag => s.version }

  s.source_files = 'GCanvas/ios/Classes/*.{h,m,mm}',
                   'GCanvas/core/src/GCanvas.{hpp,cpp}',
                   'GCanvas/core/src/GCanvas_*.cpp',
                   'GCanvas/core/src/GCanvasManager.{h,cpp}',
                   'GCanvas/core/src/gcanvas/shaders/*.glsl',
                   'GCanvas/core/src/gcanvas/GFrameBufferObject.{h,cpp}',
                   'GCanvas/core/src/gcanvas/GCanvas2dContext.{h,cpp}',
                   'GCanvas/core/src/gcanvas/GContext2dType.h',
                   'GCanvas/core/src/gcanvas/GCanvasState.{h,cpp}',
                   'GCanvas/core/src/gcanvas/GConvert.{h,cpp}',
                   'GCanvas/core/src/gcanvas/GFillStyle.h',
                   'GCanvas/core/src/gcanvas/GPath.{h,cpp}',
                   'GCanvas/core/src/gcanvas/GPoint.{h,cpp}',
                   'GCanvas/core/src/gcanvas/GShader.{h,cpp}',
                   'GCanvas/core/src/gcanvas/GShaderManager.{h,cpp}',
                   'GCanvas/core/src/gcanvas/GTextDefine.h',
                   'GCanvas/core/src/gcanvas/GTexture.{h,cpp}',
                   'GCanvas/core/src/gcanvas/GTransform.h',
                   'GCanvas/core/src/gcanvas/GTriangulate.{h,cpp}',
                   'GCanvas/core/src/gcanvas/GWebglContext.{h,cpp}',
                   'GCanvas/core/src/gcanvas/GFrameBufferObject.{h,cpp}',
                   'GCanvas/core/src/gcanvas/GFontManager.h',
                   'GCanvas/core/src/gcanvas/GGlyphCache.{h,cpp}',
                   'GCanvas/core/src/gcanvas/GTreemap.{h,cpp}',
                   'GCanvas/core/src/gcanvas/GFontStyle.{h,cpp}',
                   'GCanvas/core/src/gcanvas/GStrSeparator.{h,cpp}',
                   'GCanvas/core/src/support/DynArray.h',
                   'GCanvas/core/src/support/Encode.{h,cpp}',
                   'GCanvas/core/src/support/Log.{h,cpp}',
                   'GCanvas/core/src/support/Util.{h,cpp}',
                   'GCanvas/core/src/export.h',
                   'GCanvas/core/src/platform/iOS/GFontManager.mm'
                   
  s.public_header_files =  'GCanvas/ios/Classes/*.h', 
                           'GCanvas/core/src/GCanvas.hpp',
                           'GCanvas/core/src/GCanvasManager.h',
                           'GCanvas/core/src/gcanvas/GFrameBufferObject.h',
                           'GCanvas/core/src/gcanvas/GCanvas2dContext.h',
                           'GCanvas/core/src/gcanvas/GContext2dType.h',
                           'GCanvas/core/src/gcanvas/GCanvasState.h',
                           'GCanvas/core/src/gcanvas/GConvert.h',
                           'GCanvas/core/src/gcanvas/GFillStyle.h',
                           'GCanvas/core/src/gcanvas/GPath.h',
                           'GCanvas/core/src/gcanvas/GPoint.h',
                           'GCanvas/core/src/gcanvas/GShader.h',
                           'GCanvas/core/src/gcanvas/GShaderManager.h',
                           'GCanvas/core/src/gcanvas/GTextDefine.h',
                           'GCanvas/core/src/gcanvas/GTexture.h',
                           'GCanvas/core/src/gcanvas/GTransform.h',
                           'GCanvas/core/src/gcanvas/GTriangulate.h',
                           'GCanvas/core/src/gcanvas/GWebglContext.h',
                           'GCanvas/core/src/gcanvas/GFrameBufferObject.h',
                           'GCanvas/core/src/gcanvas/GFontManager.h',
                           'GCanvas/core/src/gcanvas/GGlyphCache.h',
                           'GCanvas/core/src/gcanvas/GTreemap.h',
                           'GCanvas/core/src/gcanvas/GFontStyle.h',
                           'GCanvas/core/src/gcanvas/GStrSeparator.h',
                           'GCanvas/core/src/support/DynArray.h',
                           'GCanvas/core/src/support/Encode.h',
                           'GCanvas/core/src/support/Log.h',
                           'GCanvas/core/src/support/Util.h',
                           'GCanvas/core/src/export.h'

  s.user_target_xcconfig  = { 'FRAMEWORK_SEARCH_PATHS' => "'$(PODS_ROOT)/GCanvas'" }

  s.requires_arc = true

  s.frameworks = 'Foundation','UIKit','GLKit', 'CoreMedia', 'AVFoundation'

  s.library = 'c++'


  s.pod_target_xcconfig = { 'OTHER_CFLAGS'  => '-DIOS -DGCANVAS_WEEX', 'GCC_PREPROCESSOR_DEFINITIONS' => 'IOS' }

end
