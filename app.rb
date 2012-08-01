#coding: utf-8
require 'opencv'

image = OpenCV::IplImage.load(ARGV[0])

#detector = OpenCV::CvHaarClassifierCascade::load('/usr/local/share/OpenCV/haarcascades/haarcascade_frontalface_alt.xml')
detector = OpenCV::CvHaarClassifierCascade::load('/usr/local/share/OpenCV/haarcascades/haarcascade_frontalface_alt2.xml')

detector.detect_objects(image) do |rect|
  image.rectangle!(rect.top_left, rect.bottom_right, color: OpenCV::CvColor::Blue)
end

image.save_image('output.jpg')

