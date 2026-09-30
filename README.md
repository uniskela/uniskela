# Hi, I'm Uniskela 👋

I build useful software for **self-hosting, homelabs, and the spaces where systems have to work together.**

Most of my projects start with a real problem in my own infrastructure. I care about clear documentation, sensible defaults, guarded automation, and software that people can run for themselves.

🌐 **[uniskela.com](https://uniskela.com)** · 📦 **[All projects](https://www.uniskela.com/projects/)** · 🐦 **[X / Twitter](https://twitter.com/Uniskela)**

## 🧰 What I work with

| | |
| --- | --- |
| **Languages** | TypeScript, Python |
| **Deployment** | Docker, OCI containers, Linux |
| **Integrations** | Home Assistant, SQLite, REST, MCP, GitHub Actions |

## 🚀 Projects

| Project | What it does |
| --- | --- |
| [**Stack Manager**](#stack-manager) | Git-native workspace for Docker Compose stacks |
| [**Migraine Tracker**](#migraine-tracker) | Private, self-hosted migraine journal |
| [**UniHomelabDash**](#unihomelabdash) | Phone-friendly homelab dashboard |
| [**ADHD Progress Hub**](#adhd-progress-hub) | Remember the next step across AI coding sessions |
| [**TS6 Manager**](#ts6-manager) | TeamSpeak server management in the browser |
| [**Codex LB Rates**](#codex-lb-rates) | Codex usage quotas in Home Assistant |
| [**Codex Custom Assist**](#codex-custom-assist) | OpenAI-compatible APIs for Home Assistant Assist |

### 🐳 Self-hosting & homelab

#### Stack Manager

[![Release](https://img.shields.io/github/v/release/uniskela/stack-manager?display_name=tag&sort=semver)](https://github.com/uniskela/stack-manager/releases/latest) [![License: MIT](https://img.shields.io/github/license/uniskela/stack-manager)](https://github.com/uniskela/stack-manager/blob/main/LICENSE)

Edit and manage your Docker Compose Git repository from the browser, then deploy **only the stacks you changed** through Portainer or another deployment system. It complements tools like Portainer rather than replacing them. *Early development (0.x).*

`TypeScript` · `Next.js` · `Docker` · `Portainer` · `Gitea/Forgejo`

[Repository](https://github.com/uniskela/stack-manager) · [Documentation](https://uniskela.com/docs/stack-manager/) · [Releases](https://github.com/uniskela/stack-manager/releases)

#### UniHomelabDash

[![Release](https://img.shields.io/github/v/release/uniskela/UniHomelabDash?display_name=tag&sort=semver)](https://github.com/uniskela/UniHomelabDash/releases/latest) [![CI](https://github.com/uniskela/UniHomelabDash/actions/workflows/ci.yml/badge.svg)](https://github.com/uniskela/UniHomelabDash/actions/workflows/ci.yml) [![License: MIT](https://img.shields.io/github/license/uniskela/UniHomelabDash)](https://github.com/uniskela/UniHomelabDash/blob/main/LICENSE)

Bring self-hosted service links, on-demand health checks, and container views together in a dashboard designed for your phone.

`TypeScript` · `Next.js` · `SQLite` · `Docker`

[Repository](https://github.com/uniskela/UniHomelabDash) · [Documentation](https://uniskela.github.io/UniHomelabDash/) · [Site](https://www.uniskela.com/projects/unihomelabdash/) · [GHCR](https://github.com/users/uniskela/packages/container/package/unihomelabdash) · [Docker Hub](https://hub.docker.com/r/uniskela/unihomelabdash)

#### TS6 Manager

[![Release](https://img.shields.io/github/v/release/uniskela/ts6-manager?display_name=tag&sort=semver)](https://github.com/uniskela/ts6-manager/releases/latest) [![Container images](https://github.com/uniskela/ts6-manager/actions/workflows/publish-images.yml/badge.svg)](https://github.com/uniskela/ts6-manager/actions/workflows/publish-images.yml) [![License: MIT](https://img.shields.io/github/license/uniskela/ts6-manager)](https://github.com/uniskela/ts6-manager/blob/main/LICENSE)

My opinionated fork of TS6 Manager: a browser-based interface for TeamSpeak server management, music bots, and automated workflows, with a focus on security and reliability. A continuation of [clusterzx/ts6-manager](https://github.com/clusterzx/ts6-manager); community work is recorded in [CREDITS.md](https://github.com/uniskela/ts6-manager/blob/main/CREDITS.md).

`TypeScript` · `React` · `Node.js` · `SQLite` · `Go` · `Docker`

[Repository](https://github.com/uniskela/ts6-manager) · [Documentation](https://github.com/uniskela/ts6-manager/tree/main/docs) · [Site](https://www.uniskela.com/projects/ts6-manager/) · [GHCR](https://github.com/users/uniskela/packages/container/package/ts6-manager%2Fall-in-one)

### 🩺 Personal tools

#### Migraine Tracker

[![Release](https://img.shields.io/github/v/release/uniskela/migraine-tracker?display_name=tag&sort=semver)](https://github.com/uniskela/migraine-tracker/releases/latest) [![License: AGPL-3.0](https://img.shields.io/github/license/uniskela/migraine-tracker)](https://github.com/uniskela/migraine-tracker/blob/main/LICENSE)

A private, self-hosted migraine journal built to take as little effort as possible: one tap starts an episode, and you add symptoms, medication and sleep when you're ready. Includes trends, doctor-ready PDF reports, an installable mobile PWA and secure backups. Your health data stays on your server.

`TypeScript` · `React` · `SQLite` · `PWA` · `Docker`

[Repository](https://github.com/uniskela/migraine-tracker) · [Documentation](https://uniskela.com/docs/migraine-tracker/) · [Releases](https://github.com/uniskela/migraine-tracker/releases)

#### ADHD Progress Hub

[![Release](https://img.shields.io/github/v/release/uniskela/adhd-hub?display_name=tag&sort=semver)](https://github.com/uniskela/adhd-hub/releases/latest) [![Container images](https://github.com/uniskela/adhd-hub/actions/workflows/container.yml/badge.svg)](https://github.com/uniskela/adhd-hub/actions/workflows/container.yml) [![License: MIT](https://img.shields.io/github/license/uniskela/adhd-hub)](https://github.com/uniskela/adhd-hub/blob/main/LICENSE)

Keep track of unfinished coding work and the next step across AI-assisted tools and sessions. Inspired by [shaheer-00/claude-adhd](https://github.com/shaheer-00/claude-adhd) and developed as a tool-agnostic MCP and REST hub.

`Python` · `MCP` · `REST` · `SQLite` · `Docker`

[Repository](https://github.com/uniskela/adhd-hub) · [Documentation](https://uniskela.github.io/adhd-hub/) · [Site](https://www.uniskela.com/projects/adhd-hub/) · [GHCR](https://github.com/users/uniskela/packages/container/package/adhd-hub)

### 🏠 Home Assistant integrations

Both are independent projects, not affiliated with OpenAI. Install via HACS.

#### Codex LB Rates

[![Release](https://img.shields.io/github/v/release/uniskela/codex-lb-rates?display_name=tag&sort=semver)](https://github.com/uniskela/codex-lb-rates/releases/latest) [![Validate](https://github.com/uniskela/codex-lb-rates/actions/workflows/validate.yml/badge.svg)](https://github.com/uniskela/codex-lb-rates/actions/workflows/validate.yml) [![License: MIT](https://img.shields.io/github/license/uniskela/codex-lb-rates)](https://github.com/uniskela/codex-lb-rates/blob/main/LICENSE)

Monitor remaining Codex usage quotas and reset times in Home Assistant, with configurable quota alerts.

`Python` · `Home Assistant` · `HACS`

[Repository](https://github.com/uniskela/codex-lb-rates) · [Documentation](https://github.com/uniskela/codex-lb-rates/blob/main/README.md) · [Site](https://www.uniskela.com/projects/codex-lb-rates/)

#### Codex Custom Assist

[![Release](https://img.shields.io/github/v/release/uniskela/codex-custom-assist?display_name=tag&sort=semver)](https://github.com/uniskela/codex-custom-assist/releases/latest) [![Validate](https://github.com/uniskela/codex-custom-assist/actions/workflows/validate.yml/badge.svg)](https://github.com/uniskela/codex-custom-assist/actions/workflows/validate.yml) [![License: MIT](https://img.shields.io/github/license/uniskela/codex-custom-assist)](https://github.com/uniskela/codex-custom-assist/blob/main/LICENSE)

Connect Home Assistant conversation, speech, and AI tasks to configurable OpenAI-compatible APIs.

`Python` · `Home Assistant` · `HACS` · `OpenAI-compatible APIs`

[Repository](https://github.com/uniskela/codex-custom-assist) · [Documentation](https://github.com/uniskela/codex-custom-assist/blob/main/README.md) · [Site](https://www.uniskela.com/projects/codex-custom-assist/)

## 🕒 Recently updated

Refreshed daily from my public repositories.

<!-- RECENT:START -->
| Repository | Description | Last push |
| --- | --- | --- |
| [**stack-manager**](https://github.com/uniskela/stack-manager) | Git-native workspace for managing self-hosted Docker Compose stacks, with safe editing, selective deployments and runtime awareness. | 2026‑09‑30 |
| [**migraine-tracker**](https://github.com/uniskela/migraine-tracker) | Private, self-hosted migraine journal for tracking episodes, symptoms, medication and trends, with doctor-ready reports and secure backups. | 2026‑09‑30 |
| [**codex-lb-rates**](https://github.com/uniskela/codex-lb-rates) | Codex-LB Rates — Home Assistant sensors for Codex-LB pools and ChatGPT/CLI 5-hour & weekly quotas | 2026‑09‑29 |
| [**adhd-hub**](https://github.com/uniskela/adhd-hub) | Self-hosted source of truth for half-finished plans, migrations, and setups for coding agents. | 2026‑09‑29 |
| [**UniHomelabDash**](https://github.com/uniskela/UniHomelabDash) | A self-hosted mobile-first homelab dashboard PWA for manual services, health checks, and future control-plane integrations. | 2026‑09‑29 |
<!-- RECENT:END -->

## 📊 GitHub stats

<!-- STATS:START -->
**7** public projects · **6** ⭐ stars · Languages: `Python` ×3 · `TypeScript` ×3 · `JavaScript` ×1
<!-- STATS:END -->

Counts cover my own public repositories only (no forks), updated daily.

## 🤝 Open source & collaboration

Found a rough edge? Please open an issue in the relevant repository. Bug reports, feature suggestions, documentation improvements, and thoughtful contributions are all welcome.
