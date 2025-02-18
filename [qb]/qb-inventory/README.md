# qb-inventory
![image](https://github.com/ItzMuri/qb-inventory/assets/88394932/eddbb2d9-8666-4a92-a618-86a8847b9dcb)
![image](https://github.com/ItzMuri/qb-inventory/assets/88394932/57775c49-3f3b-415c-8a91-5854027490e1)
![image](https://github.com/ItzMuri/qb-inventory/assets/88394932/2bab6096-4917-4226-96dd-a7e67d01691e)
![image](https://github.com/ItzMuri/qb-inventory/assets/88394932/534f2627-cac2-4414-ba08-aa93e496c8ac)



## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-logs](https://github.com/qbcore-framework/qb-logs) - For logging transfer and other history

## Features
- Stashes (Personal and/or Shared)
- Vehicle Trunk & Glovebox
- Weapon Attachments
- Shops
- Item Drops

## Documentation
https://docs.qbcore.org/qbcore-documentation/qbcore-resources/qb-inventory

## Installation
### Manual
- Download the script and put it in the `[qb]` directory.
- Import `qb-inventory.sql` in your database
- Add the following code to your server.cfg/resouces.cfg

# Migrating from old qb-inventory

## Database
### Upload the new `inventory.sql` file to create the new `inventories` table
### Use the provided `migrate.sql` file to migrate all of your saved inventory data from stashes, trunks, etc
### Once complete, you can delete `gloveboxitems` `stashitems` and `trunkitems` tables from your database
```sql
CREATE TABLE IF NOT EXISTS `inventories` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `identifier` VARCHAR(50) NOT NULL,
  `items` LONGTEXT DEFAULT ('[]'),
  PRIMARY KEY (`identifier`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;
```
# Credits

* [yaroph](https://forum.cfx.re/t/inventory-icons-pack-for-rp-server-hq-draw-24k-cloth-l-5000-objects/5203350) for icon.
* 
# License

    QBCore Framework
    Copyright (C) 2021 Joshua Eger

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>
