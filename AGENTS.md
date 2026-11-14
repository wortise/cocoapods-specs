# Wortise CocoaPods specs

Wortise's own CocoaPods specs repo: `WortiseSDK/<version>/WortiseSDK.podspec`. Entries are added by `wortise-ios-sdk/scripts/publish.sh` (commit `Added WortiseSDK <version>`). It holds pre-releases and, from December 2026 (CocoaPods trunk read-only), finals too.

The `wortise-sdk` agent plugin (repo `wortise/wortise-sdk-agent`) holds the full context: how this repo relates to the other SDKs and plugins, versioning, branches, and the release procedure (`wortise-release` skill). Read it before releasing or making cross-platform changes.

- Never edit or delete a published spec without the maintainer's explicit approval.
