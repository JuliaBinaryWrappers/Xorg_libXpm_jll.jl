# Autogenerated wrapper script for Xorg_libXpm_jll for armv7l-linux-musleabihf
export libXpm

using Xorg_libX11_jll
using Gettext_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libXpm`
const libXpm_splitpath = ["lib", "libXpm.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libXpm_path = ""

# libXpm-specific global declaration
# This will be filled out by __init__()
libXpm_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libXpm = "libXpm.so.4"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Xorg_libXpm")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Xorg_libX11_jll.PATH_list, Gettext_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Xorg_libX11_jll.LIBPATH_list, Gettext_jll.LIBPATH_list,))

    global libXpm_path = normpath(joinpath(artifact_dir, libXpm_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libXpm_handle = dlopen(libXpm_path)
    push!(LIBPATH_list, dirname(libXpm_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

