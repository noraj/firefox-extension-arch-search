# ArchLinux Search

A set of Web Extensions that adds ArchLinux (bug tracker, forum, packages, wiki, AUR) as
a search engine to the Firefox browser (using the [chrome_settings_overrides](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/manifest.json/chrome_settings_overrides) manifest key).
Submits the query via GET request for compatibility with [Multi-Account Containers](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/).

Available search engines:

name                                   | shortcut   | Install
---------------------------------------|------------|-----------
ArchLinux Packages Search              | `alpkgs`   | [AMO][arch-pkgs]
ArchLinux Wiki Search                  | `alwiki`   | [AMO][arch-wiki]
ArchLinux User Repository (AUR) Search | `alaur`    | [AMO][arch-aur]
ArchLinux Bugtracker (by FS) Search    | `albugsfs` | [AMO][arch-bugs-fs]
ArchLinux Bugtracker (by text) Search  | `albugst`  | [AMO][arch-bugs-t]
ArchLinux Forum (by author) Search     | `alforuma` | [AMO][arch-forum-a]
ArchLinux Forum (by keywords) Search   | `alforumk` | [AMO][arch-forum-k]

## Develop Locally

* Clone the repo
* Install tools:
  * [Node.js](https://nodejs.org) via [asdf](https://asdf-vm.com/)
* Install dependencies:
  * `npm i`
* Lint (check for manifest syntax errors)
  * `npm run lint -- -s web-extensions/<ext-name>`
* Run add-on in isolated Firefox instance using [web-ext](https://developer.mozilla.org/en-US/Add-ons/WebExtensions/Getting_started_with_web-ext) (open the [Browser Toolbox](https://developer.mozilla.org/en-US/docs/Tools/Browser_Toolbox) for console logging):
  * `npm run run -- -s web-extensions/<ext-name>`
* Package for distribution:
  * One extension: `npm run build -- -s web-extensions/<ext-name>`
  * All extensions: `npm run buildAll`

## FAQ

- [Why is there one extension per search engine?](https://stackoverflow.com/questions/64304959/is-it-possible-to-add-multiple-search-engines-in-the-same-firefox-web-extension)

[amo]:(https://addons.mozilla.org/)
[arch-aur]:https://addons.mozilla.org/en-US/firefox/addon/archlinux-aur-search/
[arch-bugs-fs]:https://addons.mozilla.org/en-US/firefox/addon/arch-bugtracker-by-fs-search/
[arch-bugs-t]:https://addons.mozilla.org/en-US/firefox/addon/arch-bugtracker-by-text-search/
[arch-forum-a]:https://addons.mozilla.org/en-US/firefox/addon/arch-forum-by-author-search/
[arch-forum-k]:https://addons.mozilla.org/en-US/firefox/addon/arch-forum-by-keywords-search/
[arch-pkgs]:https://addons.mozilla.org/en-US/firefox/addon/archlinux-packages-search/
[arch-wiki]:https://addons.mozilla.org/en-US/firefox/addon/archlinux-wiki-search/
