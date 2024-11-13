# Changelog

## [0.6.3](https://github.com/acdh-oeaw/apis-base-container/compare/v0.6.2...v0.6.3) (2024-11-13)


### Bug Fixes

* install graphviz in container ([1c7bbb1](https://github.com/acdh-oeaw/apis-base-container/commit/1c7bbb1a8fd8be38806b65313b32f0f20c632e2e))

## [0.6.2](https://github.com/acdh-oeaw/apis-base-container/compare/v0.6.1...v0.6.2) (2024-10-21)


### Bug Fixes

* switch back to gunicorn as the default application server ([0f2b08a](https://github.com/acdh-oeaw/apis-base-container/commit/0f2b08ae07ff7ec534d2475dbfd50d3cac4c6162))

## [0.6.1](https://github.com/acdh-oeaw/apis-base-container/compare/v0.6.0...v0.6.1) (2024-10-18)


### Bug Fixes

* install git in container ([6ef20c8](https://github.com/acdh-oeaw/apis-base-container/commit/6ef20c80d68afa5217d55be167eefefbbaf85895))

## [0.6.0](https://github.com/acdh-oeaw/apis-base-container/compare/v0.5.0...v0.6.0) (2024-10-18)


### Features

* install and enable opentelementry ([4a0099a](https://github.com/acdh-oeaw/apis-base-container/commit/4a0099adb12928def75041b763f3657049479a67))
* make container smaller by basing it on the -slim version ([601f65d](https://github.com/acdh-oeaw/apis-base-container/commit/601f65d9123fd37240cfcdeb68af082fccabbae4))
* move to uvicorn ([66f6083](https://github.com/acdh-oeaw/apis-base-container/commit/66f608375e392077beca5eb57e827c714f0b9050))

## [0.5.0](https://github.com/acdh-oeaw/apis-base-container/compare/v0.4.0...v0.5.0) (2024-04-15)


### Features

* add a startup script to compile gettext messages ([8507656](https://github.com/acdh-oeaw/apis-base-container/commit/8507656481d292d41344ee60dca15ce7d991369d))
* include gettext in container ([8dd241d](https://github.com/acdh-oeaw/apis-base-container/commit/8dd241dd19e33371f48bc64c42522135fb15f74d))

## [0.4.0](https://github.com/acdh-oeaw/apis-base-container/compare/v0.3.0...v0.4.0) (2024-02-12)


### Features

* include psql in container ([b23a900](https://github.com/acdh-oeaw/apis-base-container/commit/b23a900879df876d0d94f72f11fc05b199e64ab6))

## [0.3.0](https://github.com/acdh-oeaw/apis-base-container/compare/v0.2.1...v0.3.0) (2024-01-26)


### Features

* set user shell to bash ([5955f02](https://github.com/acdh-oeaw/apis-base-container/commit/5955f02e0b85760450f7f9bde1d3be27cd75c3f1))
* ship with ldap libraries and ldap startup script ([c3c1402](https://github.com/acdh-oeaw/apis-base-container/commit/c3c14022a993b981b59e213c742c916682bc730e))

## [0.2.1](https://github.com/acdh-oeaw/apis-base-container/compare/v0.2.0...v0.2.1) (2023-11-22)


### Bug Fixes

* copy local startup files ([7b868a5](https://github.com/acdh-oeaw/apis-base-container/commit/7b868a542be298d8290e1d16025d050c8ff41353)), closes [#23](https://github.com/acdh-oeaw/apis-base-container/issues/23)
* don't cache python files and disable pip version check ([cf2fdaf](https://github.com/acdh-oeaw/apis-base-container/commit/cf2fdafd91ea68b4c8e0113c096546443f9cc581)), closes [#20](https://github.com/acdh-oeaw/apis-base-container/issues/20)
* remove apt cache files after installation ([05c0720](https://github.com/acdh-oeaw/apis-base-container/commit/05c0720650de311d53c14af24e2e6a4289c4bde7)), closes [#26](https://github.com/acdh-oeaw/apis-base-container/issues/26)
* set gunicorn to be more verbose ([52f9dd6](https://github.com/acdh-oeaw/apis-base-container/commit/52f9dd677ff8b279a7d66e0e8c7d6ad3cdb15838)), closes [#21](https://github.com/acdh-oeaw/apis-base-container/issues/21)

## [0.2.0](https://github.com/acdh-oeaw/apis-base-container/compare/v0.1.1...v0.2.0) (2023-09-27)


### Features

* add initialrevsions Django command ([4a47d44](https://github.com/acdh-oeaw/apis-base-container/commit/4a47d44ce70a1dfa980ae2c4446361b66a9b1fdc))
* add tmux to container ([5c18be9](https://github.com/acdh-oeaw/apis-base-container/commit/5c18be9ad8d00afc7d1fa3d5aaf545dec3ef7375))


### Bug Fixes

* add `--noinput` to collectstatic command ([d480d63](https://github.com/acdh-oeaw/apis-base-container/commit/d480d63b1c814c6cc831e4cf454ddc1be576e33b)), closes [#15](https://github.com/acdh-oeaw/apis-base-container/issues/15)

## [0.1.1](https://github.com/acdh-oeaw/apis-base-container/compare/v0.1.0...v0.1.1) (2023-08-21)


### Bug Fixes

* install gunicorn ([a166c51](https://github.com/acdh-oeaw/apis-base-container/commit/a166c51b1f408c588159814affa3b322867404cb)), closes [#11](https://github.com/acdh-oeaw/apis-base-container/issues/11)

## [0.1.0](https://github.com/acdh-oeaw/apis-base-container/compare/v0.0.1...v0.1.0) (2023-08-17)


### Features

* add /app/local to PYTHONPATH for local dev setups ([470edbf](https://github.com/acdh-oeaw/apis-base-container/commit/470edbf9cef37584c93e2cb61422aea0bd96b0ca))
* add command to remove stale contenttypes ([dedcf52](https://github.com/acdh-oeaw/apis-base-container/commit/dedcf5221da280c044643cf58236666e0467bcf1)), closes [#6](https://github.com/acdh-oeaw/apis-base-container/issues/6)
* split python app and startup logic ([f1603af](https://github.com/acdh-oeaw/apis-base-container/commit/f1603afbd741f07ae0618362aa7be2f1460548c3))

## 0.0.1 (2023-07-07)


### Features

* add default wsgi.py file ([00a523a](https://github.com/acdh-oeaw/apis-base-container/commit/00a523ab0155db5d9cf4709b6d2d9e1482c9e3ca))
* make startup scripts more flexible ([ca2b840](https://github.com/acdh-oeaw/apis-base-container/commit/ca2b840d2581605fd1560d6a86f534f99573d92b))
* use the $USERNAME variable everywhere in the Dockerfile ([6db5c55](https://github.com/acdh-oeaw/apis-base-container/commit/6db5c55fd6ddc73914879564e8a25f9f2f0e8c14))


### Miscellaneous Chores

* add release-please workflow ([34872f9](https://github.com/acdh-oeaw/apis-base-container/commit/34872f96df42d1eeedb525c2dc2f19463b2ecb4c))
