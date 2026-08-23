<div align="center">

# Harsha Vardhan Yalamanchili

**CS @ IIT Bombay** · Honours in Computer Science · JEE Advanced AIR 170 '24

Building production systems · Systems · Algorithms · Applied Cryptography · Web

[![Portfolio](https://img.shields.io/badge/Portfolio-y--harsha--vardhan.github.io-08080d?style=flat-square&logo=githubpages&logoColor=white)](https://y-harsha-vardhan.github.io)
[![GitHub](https://img.shields.io/badge/GitHub-Y--Harsha--Vardhan-181717?style=flat-square&logo=github)](https://github.com/Y-Harsha-Vardhan)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Harsha%20Vardhan-0A66C2?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/harsha-vardhan-yalamanchili-086a60323)
[![Codeforces](https://img.shields.io/badge/Codeforces-limitless__-1F8ACB?style=flat-square&logo=codeforces)](https://codeforces.com/profile/limitless__)
[![Email](https://img.shields.io/badge/Email-yharshavardhan37@gmail.com-EA4335?style=flat-square&logo=gmail)](mailto:yharshavardhan37@gmail.com)

</div>

---

Second-year CS undergrad at IIT Bombay (Honours track). I like taking things past the point where they're "done for the assignment" and into the point where a real user is depending on them — that's meant shipping a production CRM for a paying client, backtesting systematic trading strategies against real market data, and building search-based AI from the ground up rather than importing a library.

For the full writeups, decision logs, and reports, see the **[portfolio](https://y-harsha-vardhan.github.io)**.

---

## Selected Projects

### 1. [Freight CRM](https://github.com/Ganeshrane1234/Advanced_CRM) *(team repo on a teammate's account)* — Production, paid engagement

Production freight-forwarding CRM built for a Mumbai logistics firm as a paid freelance engagement — 5 weeks, team of four (lead + 3 devs), **live and in use today**.

**My scope:** the React 19 SPA architecture the team built around, plus Buckets 6B–11 — email drafts, enquiry board (Kanban + timeline), sea/air enquiry forms, agent dispatch with a 4-hour IMAP reminder loop, and a rates table with L1 freeze + margin calculator. ~50 of 124 endpoints, 13 of 31 tables — owned end-to-end from spec to deploy.

**Stack:** ![React](https://img.shields.io/badge/React%2019-20232A?style=flat-square&logo=react&logoColor=61DAFB) ![Vite](https://img.shields.io/badge/Vite%208-646CFF?style=flat-square&logo=vite&logoColor=white) ![Node.js](https://img.shields.io/badge/Node.js%2022-339933?style=flat-square&logo=node.js&logoColor=white) ![Express](https://img.shields.io/badge/Express-000000?style=flat-square&logo=express&logoColor=white) ![SQLite](https://img.shields.io/badge/better--sqlite3-003B57?style=flat-square&logo=sqlite&logoColor=white)

**Infra:** GCP `e2-small` · Ubuntu 22.04 · Nginx + Certbot · PM2 under systemd · daily SQLite snapshots to GCS.

📄 Full writeup with architecture, AI-scoring weights, and team & work split → **[portfolio writeup](https://y-harsha-vardhan.github.io/assets/writeups/freight-crm.html)**

---

### 2. [Quantitative Trading Models — Summer of Quant](https://github.com/Y-Harsha-Vardhan/SoQ-Project)

Systematic trading strategies backtested against real market data during IIT Bombay's **Summer of Quant** program. **Finished Top 10** in the cohort.

**Approach:** stochastic processes and time-series analysis, feature engineering, risk-adjusted performance metrics (Sharpe, drawdown), walk-forward validation — the same discipline of "does this actually hold up outside the notebook" that matters when building any data-driven product.

**Stack:** ![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white) ![Pandas](https://img.shields.io/badge/Pandas-150458?style=flat-square&logo=pandas&logoColor=white) ![NumPy](https://img.shields.io/badge/NumPy-013243?style=flat-square&logo=numpy&logoColor=white)

---

### 3. [AI Chess Engine](https://github.com/Y-Harsha-Vardhan/AI-Chess-Bot)

A fully playable chess engine built from scratch around classic AI search — no engine library, no shortcuts.

**Approach:** Minimax with Alpha-Beta pruning, a hand-tuned static evaluator (material, piece-square tables, mobility), move ordering for pruning efficiency, and the full rule set (en passant, castling, promotion).

**Stack:** ![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)

---

### 4. [Restaurant E-Commerce Platform](https://github.com/8787233419/e-commerce-dashboard) *(team repo)*

Full-stack web app for browsing menus and managing orders. Component-state cart, modular React architecture, clean frontend/backend separation.

**Stack:** ![React](https://img.shields.io/badge/React-20232A?style=flat-square&logo=react&logoColor=61DAFB) ![Node.js](https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white) ![Express](https://img.shields.io/badge/Express-000000?style=flat-square&logo=express&logoColor=white)

---

<details>
<summary><b>Coursework & Research Writeups</b> (SAT solvers, applied crypto, advanced algorithms, graph routing)</summary>
<br>

- **[SAT Puzzle Solvers (CS228 Logic)](https://github.com/Y-Harsha-Vardhan/Sem-3/tree/main/CS228-Logic/Assignments/Assignment%201)** — encoding puzzles into CNF and reasoning about what encoding choices do to solver runtime.
- **[Applied Cryptography (CS409)](https://github.com/Y-Harsha-Vardhan/Sem-3/tree/main/CS409-Cryptography/Labs)** — symmetric primitives, public-key constructions, attacks on weak ciphers, protocol-level analysis. Under Prof. Sruthi Shekar.
- **[Advanced Algorithms (CS213)](https://github.com/Y-Harsha-Vardhan/Sem-3/tree/main/CS213-DSA)** — randomised algorithms, approximation algorithms, network flow, competitive analysis. Writeups cover alternatives considered and rejected, not just the final implementation.
- **[Graph Routing (CS293 Team Project)](https://github.com/Y-Harsha-Vardhan/CS293-TeamProject)** — algorithm selection, complexity analysis, benchmarking. Currently being expanded into a deeper case study.

</details>

---

## Tech Stack

| Domain | Tools |
|---|---|
| **Languages** | C/C++, Python, JavaScript, Bash, Assembly, Verilog |
| **Web** | React 19, Node.js, Express, Vite, SQLite |
| **ML / Data** | TensorFlow, Keras, Pandas, NumPy |
| **Infra** | Git, Docker, GCP, Nginx, PM2, LaTeX |
| **Areas** | Systems Programming, Applied Cryptography, Algorithms, Quant, ML |

---

## Currently

- **Honours track** in Computer Science at IIT Bombay
- Looking for the next thing worth building end-to-end — ideally at the intersection of AI, systems, and real users
- Competitive programming on Codeforces — [limitless__](https://codeforces.com/profile/limitless__)

---

## Get in Touch

Working on an AI product, or building something in systems, applied crypto, or quant — happy to talk.

- **Email:** [yharshavardhan37@gmail.com](mailto:yharshavardhan37@gmail.com)
- **LinkedIn:** [Harsha Vardhan Yalamanchili](https://www.linkedin.com/in/harsha-vardhan-yalamanchili-086a60323)
- **Portfolio:** [y-harsha-vardhan.github.io](https://y-harsha-vardhan.github.io)

---

<div align="center">
<sub>IIT Bombay · Computer Science · Building things to understand them — and to ship them</sub>
</div>
