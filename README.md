# A vcpkg template

A simple vcpkg starter template.

## Installation instructions

- Install <https://git-scm.com/>
- Install <https://github.com/microsoft/vcpkg>
- Install <https://cmake.org/>
- `pkg-config` must be installed as well.

Set the following environment variables:
- `VCPKG_ROOT` shall point to the vcpkg installation directory.
- Add `${VCPKG_ROOT}` to your systems search path.

### macOS

Use <https://brew.sh/>

```bash
brew install cmake git pkg-config
```

## Run

Now it should be possible to build the project and running the unit tests by calling

```bash
./build.sh
```

## License

See [License](LICENSE).
