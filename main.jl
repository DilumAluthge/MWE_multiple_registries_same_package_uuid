import Pkg

@info "" Base.DEPOT_PATH

path1 = joinpath(@__DIR__, "registry1_copy")
path2 = joinpath(@__DIR__, "registry2_copy")

rm(path1; force = true, recursive = true)
rm(path2; force = true, recursive = true)

cp(joinpath(@__DIR__, "registry1"), path1; force = true)
cp(joinpath(@__DIR__, "registry2"), path2; force = true)

Pkg.Registry.add(Pkg.RegistrySpec(path = path1))
Pkg.Registry.add(Pkg.RegistrySpec(path = path2))

Pkg.add(Pkg.PackageSpec(name = "Example", uuid = "7876af07-990d-54b4-ab0e-23690620f79a"))
