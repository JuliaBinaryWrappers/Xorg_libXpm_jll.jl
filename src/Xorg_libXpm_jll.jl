# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Xorg_libXpm_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("Xorg_libXpm")
JLLWrappers.@generate_main_file("Xorg_libXpm", UUID("1a3ddb2d-74e3-57f3-a27b-e9b16291b4f2"))
end  # module Xorg_libXpm_jll
