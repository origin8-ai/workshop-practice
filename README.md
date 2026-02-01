# Origin8 Workshop Practice Repository

**Purpose:** Safe sandbox for learning Git/GitHub workflows before working on production code.

**Duration:** Active only for Sunday Feb 1 workshop. Archived Monday Feb 2.

**🎯 For Roy (Facilitator):** See [`WORKSHOP-FACILITATION-GUIDE.md`](WORKSHOP-FACILITATION-GUIDE.md) for step-by-step instructions on running the workshop.

---

## What This Repo Is For

✅ Practice creating branches
✅ Practice making commits
✅ Practice creating pull requests
✅ Practice resolving conflicts
✅ Breaking things without consequences

❌ Not for real Origin8 code
❌ Not for production features
❌ Will be archived Monday Feb 2

---

## Workshop Structure

This workshop is **issue-driven and MCP-assisted**: almost every action in GitHub (issues, PRs, merges) is done by asking the AI to use the **GitHub MCP** server from inside Cursor.

### Roles in This Practice Repo

- **Roy (UX):** Owns `ux-principles.md` and keeps this `README.md` clear and friendly.
- **Todd (Backend/Infra):** Owns `backend-setup.md` and documents environment + tooling.
- **Maxi (AI & Content Lead):** Owns `content-guidelines.md`, creates/assigns issues, and reviews/merges PRs.

### Git & GitHub Building Blocks (Plain English)

- **Branch**: A separate line of work so you can experiment without touching `main`.
- **Commit**: A saved snapshot of your changes with a short message explaining *why* you changed things.
- **Push**: Send your local commits up to GitHub so others (and MCP) can see them.
- **Issue**: A shared todo card in GitHub that describes work, who owns it, and why it matters.
- **Pull request (PR)**: A proposal to merge a branch into another branch (usually `main`), with discussion and review.
- **Merge**: Accepting a PR and combining its changes into the target branch.
- **Conflict**: When two changes touch the same lines differently and Git needs a human decision.

### Round 0: Connect GitHub MCP (Everyone)

- Make sure Cursor is connected to the **GitHub MCP** server.
- Ask the AI: “Use GitHub MCP to tell me who I am and confirm I can see the `origin8-ai/workshop-practice` repo.”

**Goal:** Confirm MCP is wired up so we can drive GitHub from inside Cursor.

---

### Round 1: Guided Walkthrough (Everyone Together)

Roy walks everyone through a **single end‑to‑end loop**; the AI explains each action and suggests the next step:

1. **Maxi creates an issue via MCP** – what: opens a shared todo in GitHub; next: assignee checks their issues.
2. **Todd lists issues assigned to them via MCP** – what: views personal backlog; next: create a feature branch for one issue.
3. **Todd creates a branch** (`git checkout -b feat/todd-backend-setup`) – what: isolates work from `main`; next: edit the file tied to the issue.
4. **Todd edits `backend-setup.md` in Cursor** – what: changes are only local; next: check what changed.
5. **Todd runs `git status`** – what: see which files changed; next: stage the right file.
6. **Todd runs `git add backend-setup.md`** – what: stage changes for the next commit; next: create a commit.
7. **Todd runs `git commit -m "docs: add backend setup checklist"`** – what: record a snapshot with message; next: push branch to GitHub.
8. **Todd runs `git push -u origin feat/todd-backend-setup`** – what: upload commits to GitHub; next: ask MCP to open a PR.
9. **Maxi (or Todd) asks MCP to create a PR from that branch into `main` and link it to the issue** – what: open a pull request so changes can be reviewed; next: reviewer reads and approves.
10. **Maxi reviews the PR via MCP and in Cursor’s diff view** – what: human checks the content; next: approve and merge if it looks good.
11. **Maxi tells MCP to approve and merge the PR** – what: merge brings branch changes into `main`; next: close the related issue.
12. **The issue is closed via MCP with reason “completed”** – what: backlog stays accurate; next: repeat the same loop for the next issue.

**Goal:** Everyone sees the full “issue → branch → commit → PR → merge → close issue” loop once with guidance.

---

### Round 2: Independent Practice (Work Alone)

Each person repeats the same loop **on their own issue**, using MCP for all GitHub actions:

- **Todd:** `backend-setup.md`
- **Maxi:** `content-guidelines.md`
- **Roy:** `ux-principles.md`

**Goal:** Complete issue → branch → commit → PR → merge → close issue without help.

---

### Round 3: Conflict Resolution (Team Exercise)

Everyone opens branches that change the same section of `README.md` so at least one merge conflict appears.
Conflicts are resolved calmly in Cursor, then PRs are merged via MCP with notes explaining the chosen resolution.

**Goal:** Learn conflicts are normal, visible in PRs, and fixable with a simple step‑by‑step process.

---

### Round 4: Team Dashboard with MCP (Optional)

Maxi uses MCP to list all open issues and PRs, grouped by assignee, to check team progress.

**Goal:** Show how a lead can use MCP as a fast, text‑driven “team dashboard” without leaving Cursor.

---

## Training Participants

**Add your name below after completing Round 1:**

- Roy Daneman: ✅ Completed Round 1

<!-- Add your name here during workshop:
- Todd [Last]: ✅ Completed Round 1
- Maxi [Last]: ✅ Completed Round 1
-->

---

## Success Criteria

By end of workshop, this repo should have:

```
□ Everyone completed Round 1 guided walkthrough
□ 3 merged PRs from Round 2 (one per person, independent work)
□ At least 3 resolved conflicts in Round 3 (everyone practiced)
□ All GitHub operations (issues, PRs, merges) done via MCP
□ Zero commits directly to main branch
```

---

## File Structure

```
workshop-practice/
├── README.md                        (this file - participant guide)
├── WORKSHOP-FACILITATION-GUIDE.md  (Roy's step-by-step facilitation playbook)
├── github-mcp-workflows.md          (MCP prompts and role playbooks)
├── CLAUDE.md                        (AI agent instructions)
├── .gitignore                       (files to ignore)
├── backend-setup.md                 (created by Todd in Round 2)
├── content-guidelines.md            (created by Maxi in Round 2)
└── ux-principles.md                 (created by Roy in Round 2)
```

---

## Common Commands Quick Reference

### Create Branch
```bash
git checkout -b feat/your-name-test
```

### Check Status
```bash
git status
```

### Stage Changes
```bash
git add filename.md
```

### Commit
```bash
git commit -m "your message"
```

### Push
```bash
git push origin your-branch-name
```

### Switch Back to Main
```bash
git checkout main
```

### Pull Latest
```bash
git pull origin main
```

---

## Emergency Contacts

**Stuck during workshop?**
- Raise hand in Zoom
- Post in group chat
- Roy will help debug

**After workshop?**
- This repo archived Monday
- All future work in `origin8-v2` repo

---

## Next Steps After Workshop

```
1. ✅ Complete Rounds 0-4 (MCP setup through team dashboard)
2. ✅ Practice the full issue → branch → PR → merge loop independently
3. ✅ Save github-mcp-workflows.md and git command cheat sheet locally
4. ⏭️ Clone production repo: origin8-v2
5. ⏭️ Monday 1AM standup: First real task assigned
```

---

## Workshop Learning Objectives

By end of session, you should be able to:

- [ ] Create a feature branch independently
- [ ] Make changes and commit with proper message
- [ ] Push branch to GitHub
- [ ] Use GitHub MCP to create and manage issues
- [ ] Use GitHub MCP to create pull requests from branches
- [ ] Use GitHub MCP to review and merge PRs
- [ ] Resolve basic merge conflicts
- [ ] Explain why we never commit to main directly
- [ ] Understand the full issue → branch → commit → PR → merge → close issue loop

---

## Tips for Success

### During Workshop:
1. **Follow along:** Don't just watch, actually do each step
2. **Ask questions:** If confused, ask immediately
3. **Share screen:** Let Roy verify your setup
4. **Test everything:** Each step should work before moving to next

### After Workshop:
1. **Keep cheat sheet visible:** You'll reference it daily
2. **Start small:** Monday's first task is intentionally simple
3. **Ask for help early:** Don't struggle alone for hours
4. **Practice daily:** Git workflow becomes second nature with repetition

---

## Common Mistakes to Avoid

❌ **Committing directly to main**
✅ Always create feature branch first

❌ **Vague commit messages** ("updated stuff")
✅ Descriptive messages ("feat: add carousel list view")

❌ **Not testing before commit**
✅ Test locally, verify no errors, then commit

❌ **Force pushing** (`git push -f`)
✅ Ask Roy before force pushing anything

❌ **Panicking at conflicts**
✅ Follow conflict resolution steps calmly

---

## Why This Matters

**Before this workshop:**
- One person edits at a time
- No change history
- Can't safely experiment
- Break often, debug long

**After this workshop:**
- Everyone works in parallel
- Full change tracking
- Safe experimentation in branches
- Test before merging

**Result:** 3x faster development, fewer bugs, happier team.

---

## Repository Status

**Created:** Jan 30, 2026
**Workshop Date:** Feb 1, 2026
**Archived:** Feb 2, 2026
**Purpose:** Training only
**Production Repo:** origin8-v2 (starts Monday)

---

## Final Note

**This is your safe space to make mistakes.**

- Try things
- Break things
- Ask questions
- Learn by doing

There's no such thing as a dumb question in a training environment.

**See you Sunday. Come ready to learn.**

— Roy
---

Branch: TB-Fix-text