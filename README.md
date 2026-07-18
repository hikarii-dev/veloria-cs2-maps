# veloria-cs2-dumper

This repository is automatically updated and serves as the asset and offset storage. It contains CS2 game data extracted and processed on every game update.

## Contents

### Assets
- **`maps/`** - Radar images and coordinate data for all official CS2 maps
- **`workshop/`** - Radar images and data for Steam Workshop maps
- **`icons/`** - Weapon and item icons used in the radar overlay
- **`characters/`** - Player model thumbnails
- **`manifest.json`** - Current CS2 build ID and map index

### Schemas (live dump)
- **`schemas/`** - Full schema dump from a running CS2 process - all classes, enums, fields per DLL

| File pattern | Contents |
|---|---|
| `client_dll.*`, `engine2_dll.*`, ... | All classes and fields for each DLL |
| `buttons.*` | Key buttons |
| `interfaces.*` | Engine interfaces |
| `offsets.*` | Live offsets |
| `info.*` | Build ID and timestamp |

Formats: json / hpp / rs / cs / zig

### Offsets (static)
- **`offsets/`** - Game offsets extracted from CS2 DLLs, updated on every patch

| File | Format | Usage |
|------|--------|-------|
| `offsets.json` | JSON | General purpose, web/scripts |
| `offsets.hpp` | C++ header | Native plugins |
| `offsets.rs` | Rust | Rust-based tools |
| `offsets.cs` | C# | .NET projects |
| `offsets.zig` | Zig | Zig-based tools |
| `info.json` / `info.hpp` / `info.rs` / `info.cs` / `info.zig` | Metadata | Build ID and timestamp in each format |

All offsets files group entries by DLL (`client.dll`, `engine2.dll`, etc.).

## Updates

Assets and offsets are updated on every CS2 patch. Pattern signatures are verified automatically - if a signature breaks after an update, a notification is sent and offsets are re-extracted once fixed.

## License

Licensed under the MIT license ([LICENSE](./LICENSE)).
