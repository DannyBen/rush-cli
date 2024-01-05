Change Log
========================================

v0.7.13 - 2024-01-05
----------------------------------------

- Add ability to configure default root directory with `RUSH_ROOT`


v0.7.12 - 2023-11-19
----------------------------------------

- Add man documentation
- Add `rush ls` as an alias to `rush list`
- Add `--undo` to the `rush snatch` command


v0.7.11 - 2023-08-11
----------------------------------------

- Update bashly config lib
- Refactor push command to avoid chmod by default and add --chmod flag


v0.7.10 - 2023-07-26
----------------------------------------

- Improve performance of rush list and package name completion


v0.7.9 - 2023-05-19
----------------------------------------

- Regenerate with bashly 1.0.2
- Change push command to only chmod new (untracked) files


v0.7.7 - 2023-02-17
----------------------------------------

- Generate with bashly 1.0 and embolden usage captions


v0.7.6 - 2022-12-24
----------------------------------------

- Regenerate with Bashly 0.9.3


v0.7.5 - 2022-10-15
----------------------------------------

- Add --force and --verbose to 'rush get' command
- Add --force and --verbose to 'rush undo' and 'rush snatch'


v0.7.4 - 2022-09-04
----------------------------------------

- Generate with bashly 0.8.3
- Improve bash completions (through bashly 0.8.4 and completely 0.5.0)


v0.7.3 - 2022-06-01
----------------------------------------

- Regenerate with bashly 0.8.2


v0.7.2 - 2022-05-12
----------------------------------------

- Genearte with bashly 0.8.0


v0.7.1 - 2022-01-28
----------------------------------------

- Regenerate with bashly 0.7.2


v0.7.0 - 2021-10-30
----------------------------------------

- Regenerate with bashly 0.7.0


v0.6.9 - 2021-09-04
----------------------------------------

- Add --all to rush list


v0.6.8 - 2021-09-03
----------------------------------------

- Fix rush show to not break when the package contains directories


v0.6.7 - 2021-09-03
----------------------------------------

- Regenerate with bashly 0.6.5


v0.6.6 - 2021-08-28
----------------------------------------

- Exit gracefully when bash < 4


v0.6.5 - 2021-07-21
----------------------------------------

- Implement full bash completion


v0.6.4 - 2021-07-21
----------------------------------------

- Refactor setup script for a more polite autocomplete location
- Fix rush list -s to not show empty repos


v0.6.3 - 2021-04-30
----------------------------------------

- Add copy command for copying packages


v0.6.2 - 2021-04-30
----------------------------------------

- Change push command to only push the default


v0.6.1 - 2021-04-28
----------------------------------------

- Update clone command --shallow and --default


v0.6.0 - 2021-04-23
----------------------------------------

- Add show command instead of info -x


v0.5.9 - 2020-10-10
----------------------------------------

- Add titles to search output sections


## [v0.5.8](https://github.com/DannyBen/rush-cli/tree/v0.5.8) (2020-04-13)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.5.7...v0.5.8)

**Merged pull requests:**

- chmod +x {main,undo} on push [\#44](https://github.com/DannyBen/rush-cli/pull/44) ([DannyBen](https://github.com/DannyBen))

## [v0.5.7](https://github.com/DannyBen/rush-cli/tree/v0.5.7) (2020-04-12)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.5.6...v0.5.7)

**Merged pull requests:**

- Fix rush clone for private repos [\#43](https://github.com/DannyBen/rush-cli/pull/43) ([DannyBen](https://github.com/DannyBen))

## [v0.5.6](https://github.com/DannyBen/rush-cli/tree/v0.5.6) (2020-04-08)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.5.5...v0.5.6)

**Merged pull requests:**

- Fix non zero exit [\#42](https://github.com/DannyBen/rush-cli/pull/42) ([DannyBen](https://github.com/DannyBen))

## [v0.5.5](https://github.com/DannyBen/rush-cli/tree/v0.5.5) (2020-04-08)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.5.4...v0.5.5)

**Merged pull requests:**

- Show warning when get or undo exit with nonzero code [\#41](https://github.com/DannyBen/rush-cli/pull/41) ([DannyBen](https://github.com/DannyBen))

## [v0.5.4](https://github.com/DannyBen/rush-cli/tree/v0.5.4) (2020-04-01)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.5.3...v0.5.4)

**Merged pull requests:**

- Fix config regex for mac [\#40](https://github.com/DannyBen/rush-cli/pull/40) ([DannyBen](https://github.com/DannyBen))

## [v0.5.3](https://github.com/DannyBen/rush-cli/tree/v0.5.3) (2020-03-31)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.5.2...v0.5.3)

**Implemented enhancements:**

- Improve list command [\#38](https://github.com/DannyBen/rush-cli/issues/38)

**Merged pull requests:**

- Improve rush list output [\#39](https://github.com/DannyBen/rush-cli/pull/39) ([DannyBen](https://github.com/DannyBen))

## [v0.5.2](https://github.com/DannyBen/rush-cli/tree/v0.5.2) (2020-03-11)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.5.1...v0.5.2)

**Merged pull requests:**

- Fix list command [\#37](https://github.com/DannyBen/rush-cli/pull/37) ([DannyBen](https://github.com/DannyBen))
- Add rush clone --ignore and rueh get --clone [\#36](https://github.com/DannyBen/rush-cli/pull/36) ([DannyBen](https://github.com/DannyBen))

## [v0.5.1](https://github.com/DannyBen/rush-cli/tree/v0.5.1) (2020-03-10)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.5.0...v0.5.1)

## [v0.5.0](https://github.com/DannyBen/rush-cli/tree/v0.5.0) (2020-03-06)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.4.1...v0.5.0)

**Merged pull requests:**

- Add snatch command and beautify output [\#35](https://github.com/DannyBen/rush-cli/pull/35) ([DannyBen](https://github.com/DannyBen))

## [v0.4.1](https://github.com/DannyBen/rush-cli/tree/v0.4.1) (2020-03-02)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.4.0...v0.4.1)

**Merged pull requests:**

- Regenerate with bashly 0.3.8 [\#34](https://github.com/DannyBen/rush-cli/pull/34) ([DannyBen](https://github.com/DannyBen))

## [v0.4.0](https://github.com/DannyBen/rush-cli/tree/v0.4.0) (2020-02-26)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.3.15...v0.4.0)

**Merged pull requests:**

- Default to shallow clone, and add --full for full clone [\#33](https://github.com/DannyBen/rush-cli/pull/33) ([DannyBen](https://github.com/DannyBen))

## [v0.3.15](https://github.com/DannyBen/rush-cli/tree/v0.3.15) (2020-02-06)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.3.14...v0.3.15)

**Merged pull requests:**

- Non interactive setup script [\#32](https://github.com/DannyBen/rush-cli/pull/32) ([DannyBen](https://github.com/DannyBen))

## [v0.3.14](https://github.com/DannyBen/rush-cli/tree/v0.3.14) (2020-02-03)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.3.13...v0.3.14)

**Merged pull requests:**

- Add USER\_CWD variable [\#31](https://github.com/DannyBen/rush-cli/pull/31) ([DannyBen](https://github.com/DannyBen))
- Switch to github actions [\#30](https://github.com/DannyBen/rush-cli/pull/30) ([DannyBen](https://github.com/DannyBen))

## [v0.3.13](https://github.com/DannyBen/rush-cli/tree/v0.3.13) (2020-01-24)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.3.12...v0.3.13)

**Merged pull requests:**

- Fix undo message [\#29](https://github.com/DannyBen/rush-cli/pull/29) ([DannyBen](https://github.com/DannyBen))

## [v0.3.12](https://github.com/DannyBen/rush-cli/tree/v0.3.12) (2020-01-17)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.3.11...v0.3.12)

**Merged pull requests:**

- Fix search command to ignore dot paths [\#28](https://github.com/DannyBen/rush-cli/pull/28) ([DannyBen](https://github.com/DannyBen))

## [v0.3.11](https://github.com/DannyBen/rush-cli/tree/v0.3.11) (2019-12-23)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.3.10...v0.3.11)

## [v0.3.10](https://github.com/DannyBen/rush-cli/tree/v0.3.10) (2019-12-20)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.3.9...v0.3.10)

**Merged pull requests:**

- Add rush edit [\#26](https://github.com/DannyBen/rush-cli/pull/26) ([DannyBen](https://github.com/DannyBen))

## [v0.3.9](https://github.com/DannyBen/rush-cli/tree/v0.3.9) (2019-12-19)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.3.8...v0.3.9)

**Merged pull requests:**

- Show commands with group captions [\#25](https://github.com/DannyBen/rush-cli/pull/25) ([DannyBen](https://github.com/DannyBen))
- Add REPO\_PATH variable for main and undo [\#24](https://github.com/DannyBen/rush-cli/pull/24) ([DannyBen](https://github.com/DannyBen))

## [v0.3.8](https://github.com/DannyBen/rush-cli/tree/v0.3.8) (2019-12-18)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.3.7...v0.3.8)

## [v0.3.7](https://github.com/DannyBen/rush-cli/tree/v0.3.7) (2019-12-17)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.3.6...v0.3.7)

**Merged pull requests:**

- Support older git without -C [\#23](https://github.com/DannyBen/rush-cli/pull/23) ([DannyBen](https://github.com/DannyBen))

## [v0.3.6](https://github.com/DannyBen/rush-cli/tree/v0.3.6) (2019-12-14)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.3.5...v0.3.6)

**Implemented enhancements:**

- Add rush search to search in info files [\#18](https://github.com/DannyBen/rush-cli/issues/18)

**Merged pull requests:**

- Generate with bashly 0.3.5 [\#27](https://github.com/DannyBen/rush-cli/pull/27) ([DannyBen](https://github.com/DannyBen))
- Add rush info --extended [\#22](https://github.com/DannyBen/rush-cli/pull/22) ([DannyBen](https://github.com/DannyBen))
- Build with bashly 0.3.3 [\#21](https://github.com/DannyBen/rush-cli/pull/21) ([DannyBen](https://github.com/DannyBen))

## [v0.3.5](https://github.com/DannyBen/rush-cli/tree/v0.3.5) (2019-12-13)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.3.4...v0.3.5)

**Merged pull requests:**

- Add search command [\#20](https://github.com/DannyBen/rush-cli/pull/20) ([DannyBen](https://github.com/DannyBen))

## [v0.3.4](https://github.com/DannyBen/rush-cli/tree/v0.3.4) (2019-12-12)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.3.3...v0.3.4)

**Implemented enhancements:**

- rush default should remove the source repo [\#17](https://github.com/DannyBen/rush-cli/issues/17)

**Merged pull requests:**

- Fix rush push and make rush default delete source [\#19](https://github.com/DannyBen/rush-cli/pull/19) ([DannyBen](https://github.com/DannyBen))

## [v0.3.3](https://github.com/DannyBen/rush-cli/tree/v0.3.3) (2019-12-12)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.3.2...v0.3.3)

**Merged pull requests:**

- Add undo command [\#16](https://github.com/DannyBen/rush-cli/pull/16) ([DannyBen](https://github.com/DannyBen))

## [v0.3.2](https://github.com/DannyBen/rush-cli/tree/v0.3.2) (2019-12-11)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.3.1...v0.3.2)

**Merged pull requests:**

- Add push command [\#15](https://github.com/DannyBen/rush-cli/pull/15) ([DannyBen](https://github.com/DannyBen))

## [v0.3.1](https://github.com/DannyBen/rush-cli/tree/v0.3.1) (2019-12-10)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.3.0...v0.3.1)

**Merged pull requests:**

- Switch form echo -e to printf for old bash on mac [\#14](https://github.com/DannyBen/rush-cli/pull/14) ([DannyBen](https://github.com/DannyBen))

## [v0.3.0](https://github.com/DannyBen/rush-cli/tree/v0.3.0) (2019-12-09)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/v0.2.2...v0.3.0)

**Merged pull requests:**

- Change package name format and modify tests to approvals [\#13](https://github.com/DannyBen/rush-cli/pull/13) ([DannyBen](https://github.com/DannyBen))
- Add rush list --search TEXT [\#12](https://github.com/DannyBen/rush-cli/pull/12) ([DannyBen](https://github.com/DannyBen))
- Generate with bashly 0.3.0 [\#11](https://github.com/DannyBen/rush-cli/pull/11) ([DannyBen](https://github.com/DannyBen))

## [v0.2.2](https://github.com/DannyBen/rush-cli/tree/v0.2.2) (2019-11-27)

[Full Changelog](https://github.com/DannyBen/rush-cli/compare/1e2789455772ecbdeb8180280e842d1956b8b635...v0.2.2)

**Implemented enhancements:**

- Add `rush info PACKAGE` [\#5](https://github.com/DannyBen/rush-cli/issues/5)
- Create a separate sample repo GitHub template [\#4](https://github.com/DannyBen/rush-cli/issues/4)
- Should we chmod +x all main files on pull / clone? [\#3](https://github.com/DannyBen/rush-cli/issues/3)

**Merged pull requests:**

- Add rush list --deep [\#10](https://github.com/DannyBen/rush-cli/pull/10) ([DannyBen](https://github.com/DannyBen))
- Ignore folders that start with an underscore [\#9](https://github.com/DannyBen/rush-cli/pull/9) ([DannyBen](https://github.com/DannyBen))
- Updates [\#8](https://github.com/DannyBen/rush-cli/pull/8) ([DannyBen](https://github.com/DannyBen))
- Chmod +x before running [\#7](https://github.com/DannyBen/rush-cli/pull/7) ([DannyBen](https://github.com/DannyBen))
- Add rush info [\#6](https://github.com/DannyBen/rush-cli/pull/6) ([DannyBen](https://github.com/DannyBen))
- Switch to bats testing [\#2](https://github.com/DannyBen/rush-cli/pull/2) ([DannyBen](https://github.com/DannyBen))
- Add tests [\#1](https://github.com/DannyBen/rush-cli/pull/1) ([DannyBen](https://github.com/DannyBen))
