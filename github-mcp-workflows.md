## GitHub MCP Workflows for This Workshop

This page shows **exact prompts** you can use in Cursor to drive GitHub through the **GitHub MCP** server. Keep it open during the workshop.

---

## Core MCP Tools We Actually Use

You do not need to remember tool names; the AI does. This is just to make the flow less “magic.”

- **`get_me`**: Figures out who you are on GitHub.
- **`search_repositories` / repo lookups**: Confirms the `origin8-ai/workshop-practice` repo exists and is accessible.
- **`issue_write`**: Creates or updates GitHub issues (title, body, assignee, labels, state).
- **`list_issues` / `search_issues`**: Finds issues by state, assignee, or text.
- **`create_pull_request`**: Opens a PR from a branch into `main` with title/body.
- **`list_pull_requests` / `pull_request_read`**: Lists PRs and reads details, diffs, status, and comments.
- **`pull_request_review_write`**: Approves or requests changes on a PR.
- **`merge_pull_request`**: Merges a PR once review is complete.

---

## Standard Prompts (Copy / Adapt These)

You can paste these into Cursor and tweak names/branches as needed.

### 1. Check MCP + Identity

- **Prompt:**  
  “Use the GitHub MCP tools to tell me which GitHub user I am and confirm I have access to the `origin8-ai/workshop-practice` repository.”

### 2. Create and Assign an Issue

- **Prompt (Maxi, as lead):**  
  “In the `origin8-ai/workshop-practice` repo, create an issue titled `Document backend setup` with a short description of what Todd should document, assign it to Todd, and label it `docs`.”

### 3. List My Open Issues

- **Prompt (anyone):**  
  “List all open issues assigned to me in the `origin8-ai/workshop-practice` repository, with their numbers and titles.”

### 4. Create a PR From a Branch

- **Prompt (after pushing a branch):**  
  “In `origin8-ai/workshop-practice`, create a pull request from branch `feat/todd-backend-setup` into `main` with a clear title and description, and link it to the backend-setup issue. Assign Maxi as reviewer.”

### 5. Summarize and Review a PR

- **Prompt (reviewer):**  
  “List all open pull requests in `origin8-ai/workshop-practice` and then summarize the changes in PR #<number>. Tell me what files changed and whether anything looks risky.”

### 6. Approve and Merge a PR

- **Prompt (reviewer, usually Maxi):**  
  “Approve PR #<number> in `origin8-ai/workshop-practice` and then merge it into `main` using the default merge method.”

### 7. Close an Issue as Completed

- **Prompt:**  
  “In `origin8-ai/workshop-practice`, close issue #<number> with state reason `completed` and add a short comment explaining that the related PR has been merged.”

---

## Role Playbooks

### Roy – UX & Docs

- **Goal:** Keep `README.md` and `ux-principles.md` clear and friendly.
- **Typical loop:**
  1. Ask MCP to create or find a UX-related issue assigned to you.
  2. Create a branch locally for that issue.
  3. Edit `README.md` or `ux-principles.md` in Cursor.
  4. Commit and push.
  5. Ask MCP to open a PR and assign Maxi as reviewer.
  6. After review, use MCP to merge and close the issue.

### Todd – Backend & Infra

- **Goal:** Make `backend-setup.md` a reliable setup checklist.
- **Typical loop:**
  1. Ask MCP to list infra/“backend setup” issues assigned to you.
  2. Create a feature branch for the issue.
  3. Update `backend-setup.md` with clear, step‑by‑step setup instructions.
  4. Commit and push the branch.
  5. Ask MCP to open a PR for your branch into `main`, linked to the issue.
  6. Once reviewed and merged via MCP, close the issue.

### Maxi – AI, Content & Repo Lead

- **Goal:** Keep issues and PRs flowing smoothly; own `content-guidelines.md`.
- **Typical loop:**
  1. Use MCP to create issues for new docs work and assign them to Roy/Todd/yourself.
  2. Periodically ask MCP to list all open issues and PRs for this repo, grouped by assignee.
  3. Review PRs using MCP summaries plus Cursor diffs.
  4. Approve and merge PRs via MCP once changes look good.
  5. Close related issues via MCP and, if needed, open follow‑up issues.

---

## One Simple Mental Model

For this workshop, always think in this order:

1. **Issue** – “What are we doing and who owns it?”
2. **Branch** – “Do the work safely, away from `main`.”
3. **Commit** – “Savepoints with meaningful messages.”
4. **PR** – “Ask to merge, get reviewed.”
5. **Merge** – “Bring good changes into `main`.”
6. **Close Issue** – “Mark the todo as done so the board stays clean.”

GitHub MCP just lets you drive steps **2, 4, 5, and 6** from inside Cursor using natural language instead of clicking around in the browser.

