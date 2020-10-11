# ArchLinux Search

A set of Web Extensions that adds ArchLinux (bug tracker, forum, packages, wiki, AUR) as
a search engine to the Firefox browser (using the [chrome_settings_overrides](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/manifest.json/chrome_settings_overrides) manifest key).
Submits the query via GET request for compatibility with [Multi-Account Containers](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/).

Available search engines:

name                                   | shortcut
---------------------------------------|---------
ArchLinux Packages Search              | `alpkgs`
ArchLinux Wiki Search                  | `alwiki`
ArchLinux User Repository (AUR) Search | `alaur`
ArchLinux Bugtracker (by FS) Search    | `albugsfs`
ArchLinux Bugtracker (by text) Search  | `albugst`
ArchLinux Forum (by author) Search     | `alforuma`
ArchLinux Forum (by keywords) Search   | `alforumk`

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

