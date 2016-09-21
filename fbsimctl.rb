class Fbsimctl < Formula
  desc "A Powerful Command Line for Managing iOS Simulators"
  homepage "https://github.com/facebook/FBSimulatorControl/fbsimctl/README.md"
  url "https://github.com/facebook/FBSimulatorControl/tarball/v0.2.0"
  sha256 "872b8b98427527cad16c8f235ae987fc2fad3be00dc344632de489a5cce0f620"
  head "https://github.com/facebook/FBSimulatorControl.git"

  depends_on "carthage"
  depends_on :xcode => ["8", :build]

  bottle do
    cellar :any
    sha256 "5d67f406b90525e00d22655e0fbe239a3df4b3252dd68e069380f5b3fc3492eb" => :el_capitan_or_later
  end

  def install
    system "./build.sh", "fbsimctl", "build", prefix
  end

  test do
    system "fbsimctl", "list"
  end
end
