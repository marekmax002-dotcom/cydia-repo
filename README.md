# Cydia APT repository template

This is a starter structure for a repository containing legitimate Debian packages
(`.deb`) that you own or are authorized to distribute.

## Structure

- `debs/` — put authorized `.deb` packages here
- `dists/stable/main/binary-iphoneos-arm/Packages` — package index
- `Release` — repository metadata template
- `build-index.sh` — rebuilds the Packages index when `dpkg-scanpackages` is available

## Important

This template is not hosted online and does not have a public repository URL yet.
To use it in Cydia, upload the contents to a web host that serves static files over
HTTPS, then add that HTTPS base URL in Cydia.

Do not include cracked, pirated, or license-bypass packages. Check each package's
license and compatibility before distributing it. iOS 12.5.8 devices commonly use
the `iphoneos-arm` package architecture, but package compatibility still needs
individual verification.
