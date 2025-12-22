# ArchLinux Search

![AUR version](https://img.shields.io/aur/version/firefox-extension-arch-search)
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/noraj/firefox-extension-arch-search)
![License](https://img.shields.io/github/license/noraj/firefox-extension-arch-search)

![image](https://user-images.githubusercontent.com/16578570/95793622-4edc3d80-0ce6-11eb-8122-a48bca577fb1.png)

A set of Web Extensions that adds ArchLinux (bug tracker, forum, packages, wiki, AUR, man pages, security advisories, PKGBUILD) as
a search engine to the Firefox browser (using the [chrome_settings_overrides](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/manifest.json/chrome_settings_overrides) manifest key).
Submits the query via GET request for compatibility with [Multi-Account Containers](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/).

Available search engines:

name                                   | shortcut   | Install
---------------------------------------|------------|-----------
ArchLinux Packages Search              | `alpkgs`   | [AMO][arch-pkgs]
ArchLinux Wiki Search                  | `alwiki`   | [AMO][arch-wiki]
ArchLinux User Repository (AUR) Search | `alaur`    | [AMO][arch-aur]
ArchLinux Bugtracker Search            | `albugs`   | [AMO][arch-bugs]
ArchLinux Forum (by author) Search     | `alforuma` | [AMO][arch-forum-a]
ArchLinux Forum (by keywords) Search   | `alforumk` | [AMO][arch-forum-k]
ArchLinux Manual Page Search           | `alman`    | [AMO][arch-man]
ArchLinux Security Search              | `alsec`    | [AMO][arch-security]
ArchLinux PKGBUILD (source) Search     | `alsrc`    | [AMO][arch-pkgbuild]

## Install

- On ArchLinux: `pikaur -S firefox-extension-arch-search`
- On any other OS: install the extensions manually via AMO (**A**ddons **MO**zilla) following the links above

## Develop Locally

* Clone the repo
* Install tools:
  * [Bun](https://bun.sh/) via [asdf](https://asdf-vm.com/)
* Install dependencies:
  * `bun i`
* Lint (check for manifest syntax errors)
  * `bun run --bun lint -- -s web-extensions/v3/<ext-name>`
* Run add-on in isolated Firefox instance using [web-ext](https://developer.mozilla.org/en-US/Add-ons/WebExtensions/Getting_started_with_web-ext) (open the [Browser Toolbox](https://developer.mozilla.org/en-US/docs/Tools/Browser_Toolbox) for console logging):
  * `bun run run -- -s web-extensions/v3/<ext-name>`
* Package for distribution:
  * One extension: `bun run build -- -s web-extensions/v3/<ext-name>`
  * All extensions: `bun run buildAll`

## FAQ

- [Why is there one extension per search engine?](https://stackoverflow.com/questions/64304959/is-it-possible-to-add-multiple-search-engines-in-the-same-firefox-web-extension)
- After the installation, I still don't see the new search engines. Where are there?
  - Disable/Enable the extensions, this will reload them and they'll appear.
- It's possible to add the search engines by clicking the plus button on the search bar, so why an extension?
  - It's way quicker to install the extension rather than manually adding the search engines. An extension also allows automation.
  - The bug tracker & the forum use advanced search with several parameters so it's not possible to add them manually via the search bar, an extension is mandatory.

[amo]:(https://addons.mozilla.org/)
[arch-aur]:https://addons.mozilla.org/en-US/firefox/addon/archlinux-aur-search/
[arch-bugs]:https://addons.mozilla.org/en-US/firefox/addon/archlinux-bugtracker-search/
[arch-forum-a]:https://addons.mozilla.org/en-US/firefox/addon/arch-forum-by-author-search/
[arch-forum-k]:https://addons.mozilla.org/en-US/firefox/addon/arch-forum-by-keywords-search/
[arch-pkgs]:https://addons.mozilla.org/en-US/firefox/addon/archlinux-packages-search/
[arch-wiki]:https://addons.mozilla.org/en-US/firefox/addon/archlinux-wiki-search/
[arch-man]:https://addons.mozilla.org/en-US/firefox/addon/archlinux-manual-pages-search/
[arch-security]:https://addons.mozilla.org/en-US/firefox/addon/archlinux-security-search/
[arch-pkgbuild]:https://addons.mozilla.org/en-US/firefox/addon/archlinux-pkgbuild-search/
