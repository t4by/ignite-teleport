# IGNITE-TELEPORT 🎉

IGNITE-TELEPORT is a FiveM script for the QBCore framework that allows administrators to teleport to predefined locations using simple commands. This script ensures that only players with the "admin" group can access these commands, providing a convenient tool for server management.

## Features

- **Admin-only Commands**: Restrict teleportation commands to admin users.
- **Predefined Locations**: Teleport to Police, EMS, Legion, and Paleto locations.
- **Easy Configuration**: Simple and intuitive setup process.

## Commands

- `/police` - Teleport to the police coordinates.
- `/ems` - Teleport to the EMS coordinates.
- `/legion` - Teleport to the Legion coordinates.
- `/paleto` - Teleport to the Paleto coordinates.

## Installation

### 1. Clone the Repository

Clone the repository into your FiveM resources directory.

### 2. Add to server.cfg

ensure ignite-teleport

### 3. Configuration

The teleport coordinates are predefined in the ignite-teleport.lua file. You can customize these coordinates as needed:

```
local teleportCoords = {
    police = vector4(425.1, -979.5, 30.7, 90.0), -- Police coords
    ems = vector4(298.3, -584.7, 43.3, 0.0), -- EMS coords
    legion = vector4(215.8, -810.2, 30.7, 0.0), -- Legion coords
    paleto = vector4(-449.7, 6012.9, 31.7, 45.0) -- Paleto coords
}
```

## Usage

Once the resource is installed and configured, admins can use the following commands in-game to teleport to specific locations:

/police
/ems
/legion
/paleto

## Contributions

Contributions are welcome! Please fork the repository and submit a pull request with your improvements.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Support
If you encounter any issues or have questions, feel free to open an issue on GitHub.

```sh
