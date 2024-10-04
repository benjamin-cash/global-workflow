help([[
Load environment to run GFS workflow ci scripts on Hercules
]])

prepend_path("MODULEPATH", "/opt/spack-stack/spack-stack-1.8.0/envs/unified-env/install/modulefiles/Core")

local stack_intel_ver=os.getenv("stack_intel_ver") or "2021.10.0"
local python_ver=os.getenv("python_ver") or "3.11.6"

load(pathJoin("stack-intel", stack_intel_ver))
load(pathJoin("python", python_ver))
load("py-jinja2")
load("py-pyyaml")
load("py-numpy")

whatis("Description: GFS run setup environment")
