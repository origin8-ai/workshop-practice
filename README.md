# Origin8 Workshop Practice Repository

**Purpose:** Safe sandbox for learning Git/GitHub workflows before working on production code.

**Duration:** Active only for Sunday Feb 1 workshop. Archived Monday Feb 2.

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

### Round 1: Guided Practice (Everyone Together)
Add your name to the participant list below.

**Goal:** Learn the full Git cycle with Roy demonstrating each step.

---

### Round 2: Independent Practice (Work Alone)
Each person creates a documentation file:
- **Todd:** `backend-setup.md`
- **Maxi:** `content-guidelines.md`
- **Roy:** `ux-principles.md`

**Goal:** Complete branch → commit → PR → merge without help.

---

### Round 3: Conflict Resolution (Team Exercise)
Intentionally create and resolve merge conflicts together.

**Goal:** Learn conflicts are normal, not scary.

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
□ 3 merged PRs from Round 1 (one per person)
□ 3 merged PRs from Round 2 (independent work)
□ 3 resolved conflicts (everyone practiced)
□ Zero commits directly to main branch
```

---

## File Structure

```
workshop-practice/
├── README.md               (this file)
├── CLAUDE.md              (AI agent instructions)
├── .gitignore             (files to ignore)
├── backend-setup.md       (created by Todd in Round 2)
├── content-guidelines.md  (created by Maxi in Round 2)
└── ux-principles.md       (created by Roy in Round 2)
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
1. ✅ Complete all 3 practice rounds
2. ✅ Resolve at least 1 conflict
3. ✅ Save cheat sheet locally
4. ⏭️ Clone production repo: origin8-v2
5. ⏭️ Monday 1AM standup: First real task assigned
```

---

## Workshop Learning Objectives

By end of session, you should be able to:

- [ ] Create a feature branch independently
- [ ] Make changes and commit with proper message
- [ ] Push branch to GitHub
- [ ] Create pull request with description
- [ ] Merge PR without breaking main
- [ ] Resolve basic merge conflicts
- [ ] Explain why we never commit to main directly

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
