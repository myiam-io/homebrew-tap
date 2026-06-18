# homebrew-tap

MyIAM Homebrew Tap — [due2-cli](https://github.com/my-due2/due2-cli) and [Due2](https://due2.app) formulae.

## Setup

```bash
brew tap myiam-io/tap
brew trust --tap myiam-io/tap
```

## Install

```bash
# CLI
brew install due2-cli

# macOS app
brew install --cask due2
```

## Upgrade

```bash
brew upgrade due2-cli
brew upgrade --cask due2
```

## Troubleshooting

`Skipping due2-cli: tap formula is not trusted` 메시지가 나오면 trust 설정이 필요합니다:

```bash
brew trust --tap myiam-io/tap
```
