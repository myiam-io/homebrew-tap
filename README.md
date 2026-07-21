# homebrew-tap

MyIAM Homebrew Tap — [myiam-cli](https://myiam.io) formula.

due2/due2-cli formulae moved to [due2-app/homebrew-due2](https://github.com/due2-app/homebrew-due2).

## Setup

```bash
brew tap myiam-io/tap
brew trust --tap myiam-io/tap
```

## Install

```bash
brew install myiam-cli
```

## Upgrade

```bash
brew upgrade myiam-cli
```

## Troubleshooting

`Skipping myiam-cli: tap formula is not trusted` 메시지가 나오면 trust 설정이 필요합니다:

```bash
brew trust --tap myiam-io/tap
```
