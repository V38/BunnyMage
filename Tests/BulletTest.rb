#require "bigdecimal"
require "bigdecimal/math"
include BigMath
$deg_to_rad = 180/(BigMath.PI(20)) #57.295779513082320876798154814105

class ScreenObjects
  def initialize
    @x=3.0
    @y=0.0
  end
  def getx
   return(@x)
  end
end

class Bullet < ScreenObjects
  def initialize
    super
    @x=16.0
    @angle=135
    @speed=0.2
    @destroy=0
  end
  def Move
    @x+=(Math.sin(@angle/$deg_to_rad)*@speed).round(4)
    @y-=(Math.cos(@angle/$deg_to_rad)*@speed).round(4)
  end
#  def Collision
#//    if @x+20<0
#DX = A.x - B.x
#DY = A.y - B.y
#dist = (DX)^2 + (DY)^2
#if dist = (radiusA+radiusB)^2
#/collide
#end
#  end
end

one = Bullet.new
puts(one.getx())
puts self
puts self.class
p(one)
one.Move
p(one)
##one.angle+=90
#p(one)


#(1..315).each { |i| puts Math.cos(i.to_f/100)}
ab = 90/$deg_to_rad
puts ab
puts Math.cos(ab)
puts Math.cos(1.57079632679)
