# Workshop Facilitation Guide - Feb 1, 2026

**For:** Roy (facilitator)
**Audience:** Todd (backend) & Maxi (content/AI lead)
**Duration:** ~2 hours
**Format:** Zoom screen share + hands-on practice

---

## Pre-Workshop Setup (30 min before)

### Your Preparation:

1. **Open these files in Cursor:**
   - `README.md` (main guide)
   - `github-mcp-workflows.md` (for copy-paste prompts)
   - `WORKSHOP-FACILITATION-GUIDE.md` (this file)

2. **Verify GitHub MCP is working:**
   - Ask AI: "Use GitHub MCP to tell me who I am and list repos I can access"
   - Confirm you see `origin8-ai/workshop-practice`

3. **Clean the repo (if needed):**
   - Check GitHub for any open issues/PRs from testing
   - Close or delete them so you start fresh

4. **Test screen share:**
   - Make sure Cursor window is visible
   - Terminal ready
   - GitHub repo open in browser (as backup)

5. **Have ready:**
   - This facilitation guide
   - Coffee ☕
   - Patience 😊

---

## Workshop Flow (2 hours total)

### Introduction (10 min) - 9:00-9:10

**What to say:**

> "Welcome! Today we're learning Git/GitHub workflows using a new tool called GitHub MCP that lives right inside Cursor. This means we can do everything - create issues, open PRs, merge code - without ever leaving the editor.
>
> This repo is a safe sandbox. You literally cannot break anything important. By end of today, you'll be able to work independently on the production repo starting Monday.
>
> Questions before we start?"

**Share screen:** Show the `README.md` so they see the structure.

**Assign roles:**
- Roy (you): UX and README clarity
- Todd: Backend setup docs
- Maxi: Content guidelines + repo lead (assigns issues, reviews PRs)

---

### Round 0: Connect GitHub MCP (15 min) - 9:10-9:25

**Objective:** Make sure everyone's MCP is working.

**Steps:**

1. **You demonstrate first:**
   - Show Cursor with this repo open
   - Say: "I'm going to ask the AI to use GitHub MCP"
   - Type in chat: `"Use GitHub MCP to tell me who I am and confirm I can see the origin8-ai/workshop-practice repo"`
   - Show the AI's response with your GitHub username and repo confirmation

2. **Their turn (one at a time):**
   - Ask Todd: "Now you try the same thing"
   - Watch him do it, verify success
   - Ask Maxi: "Your turn"
   - Verify success

3. **If someone's MCP isn't working:**
   - Check `~/.cursor/mcp.json` (or wherever their config is)
   - Verify GitHub token is set
   - Restart Cursor if needed
   - Don't proceed until everyone is connected

**✅ Success check:** All three of you can ask the AI about your GitHub identity and see the workshop repo.

---

### Round 1: Guided Walkthrough (45 min) - 9:25-10:10

**Objective:** Walk through the full loop once, with everyone following along.

**Format:** You narrate, Todd executes, everyone watches.

#### Step 1: Maxi creates an issue (3 min)

**What to say:**

> "Maxi, you're our repo lead. First task: create an issue for Todd to document backend setup."

**Maxi types in Cursor AI chat:**
```
In the origin8-ai/workshop-practice repo, create an issue titled "Document backend setup checklist" with a description asking Todd to add clear setup instructions for Node, npm, and running the app. Assign it to Todd and label it "docs".
```

**You point out:**
- "See? Natural language. No clicking through GitHub UI."
- "AI is using the `issue_write` MCP tool behind the scenes."
- "Note the issue number it returns - we'll reference that later."

**✅ Success check:** Issue appears on GitHub (you can open browser to verify if needed).

---

#### Step 2: Todd lists his issues (2 min)

**What to say:**

> "Todd, now check your personal backlog."

**Todd types:**
```
List all open issues assigned to me in the origin8-ai/workshop-practice repository.
```

**You point out:**
- "This is how you see what work is yours."
- "On Monday, you'll start each day by checking issues assigned to you."

---

#### Step 3: Todd creates a branch (3 min)

**What to say:**

> "Todd, now create a feature branch for this work. Never commit directly to main."

**Todd types in terminal (or uses Cursor git UI):**
```bash
git checkout -b feat/todd-backend-setup
```

**Verify:** Bottom-left of Cursor should show the new branch name.

**You explain:**
- "Branch = isolated workspace. Your changes won't affect main until we merge."
- "Branch naming: `feat/` for features, `fix/` for bugs, `docs/` for documentation."

---

#### Step 4: Todd creates the file (5 min)

**What to say:**

> "Todd, create `backend-setup.md` in the repo root."

**Todd does:**
1. Right-click in file explorer → New File
2. Name it: `backend-setup.md`
3. Add some basic content:
   ```markdown
   # Backend Setup
   
   ## Prerequisites
   - Node.js 18+
   - npm 9+
   
   ## Installation
   1. Clone the repo
   2. Run `npm install`
   3. Start dev server: `npm run dev`
   ```
4. Save (Ctrl+S / Cmd+S)

**You explain:**
- "Changes are local only right now."
- "Git doesn't know about them until we commit."

---

#### Step 5: Todd checks status (2 min)

**Todd types in terminal:**
```bash
git status
```

**You explain the output:**
- Red file = changed but not staged
- "This is like a preview of what you're about to commit."

---

#### Step 6: Todd stages the file (2 min)

**Todd types:**
```bash
git add backend-setup.md
```

**Then check again:**
```bash
git status
```

**You explain:**
- "Now it's green = staged, ready to commit."
- "Staging lets you choose exactly what goes in this commit."

---

#### Step 7: Todd commits (3 min)

**Todd types:**
```bash
git commit -m "docs: add backend setup checklist"
```

**You explain commit messages:**
- Format: `type: short description`
- Types: `docs`, `feat`, `fix`, `chore`
- Keep it clear and specific
- This message will appear in Git history forever

---

#### Step 8: Todd pushes the branch (3 min)

**Todd types:**
```bash
git push -u origin feat/todd-backend-setup
```

**You explain:**
- `-u origin feat/todd-backend-setup` sets up tracking
- "Now GitHub knows about this branch."
- "Next time just `git push` will work."

---

#### Step 9: Open PR via MCP (5 min)

**What to say:**

> "Now we need a pull request. Maxi, you can help with this."

**Maxi types in Cursor AI:**
```
In origin8-ai/workshop-practice, create a pull request from branch feat/todd-backend-setup into main. Title it "docs: add backend setup checklist" and in the description say "This PR adds initial backend setup instructions" and mention that it closes issue #[number from step 1]. Assign me (Maxi) as reviewer.
```

**You point out:**
- "PR = proposal to merge this branch into main."
- "Always assign a reviewer - never merge your own code."
- "Note how we linked it to the issue."

**✅ Success check:** PR appears on GitHub with correct title, description, and reviewer.

---

#### Step 10: Maxi reviews the PR (5 min)

**What to say:**

> "Maxi, now you're wearing your reviewer hat."

**Maxi types:**
```
List all open pull requests in origin8-ai/workshop-practice and summarize the changes in PR #[number]. Tell me what files changed.
```

**AI will summarize the PR.**

**Maxi then:**
- Opens `backend-setup.md` in Cursor to read the actual content
- Checks if it makes sense
- (In this case, approves it)

**You explain:**
- "Review = human decision. AI helps you see the changes, but you decide if they're good."
- "Look for: Does it make sense? Any typos? Does it follow our style?"

---

#### Step 11: Maxi merges via MCP (3 min)

**Maxi types:**
```
Approve PR #[number] in origin8-ai/workshop-practice and merge it into main.
```

**You point out:**
- "Now Todd's changes are in main."
- "Everyone who pulls main will get this file."
- "The branch is done - we can delete it."

**✅ Success check:** PR shows as merged on GitHub.

---

#### Step 12: Close the issue (3 min)

**Maxi types:**
```
Close issue #[number] in origin8-ai/workshop-practice with state reason "completed" and add a comment saying "Completed in PR #[number]".
```

**You explain:**
- "Always close issues when work is done."
- "This keeps the backlog accurate."
- "Link the PR so there's a paper trail."

---

**Round 1 Summary (5 min):**

> "That's the full loop:
> 1. Issue created (what to do)
> 2. Branch created (isolated workspace)
> 3. File edited (actual work)
> 4. Committed (save point with message)
> 5. Pushed (upload to GitHub)
> 6. PR opened (propose merge)
> 7. Reviewed (human checks)
> 8. Merged (changes go to main)
> 9. Issue closed (backlog stays clean)
>
> Questions?"

---

### Break (10 min) - 10:10-10:20

☕ Coffee break. Stretch. Bathroom.

---

### Round 2: Independent Practice (40 min) - 10:20-11:00

**Objective:** Each person does the full loop alone.

**Setup (5 min):**

**Maxi creates 2 more issues via MCP:**
```
Create two more issues in origin8-ai/workshop-practice:
1. Title "Polish UX principles doc" assigned to Roy, label "docs"
2. Title "Write content guidelines" assigned to me (Maxi), label "docs"
```

**Then say:**

> "You each have an issue now. Complete the full loop independently:
> - Roy: Update `ux-principles.md` with real UX principles
> - Maxi: Create `content-guidelines.md` with content rules
> - I'll watch but only help if you're stuck >5 minutes
> 
> Use `github-mcp-workflows.md` for prompt examples if you forget the exact wording.
> 
> Ready? Go."

**Your role (35 min):**
- Watch them work
- Answer questions
- Don't do it for them
- Guide with questions: "Did you stage the file?" "Are you on a feature branch?"

**Common issues:**
- Forgot to create branch (still on main)
- Forgot to stage (`git add`)
- Forgot to save file before committing
- Typo in branch name

**✅ Success check:** 
- All 3 issues closed
- All 3 PRs merged
- No commits directly to main

---

### Round 3: Conflict Resolution (25 min) - 11:00-11:25

**Objective:** Create and resolve a merge conflict together.

#### Setup (5 min):

**Maxi creates an issue:**
```
Create an issue titled "Improve workshop tips in README" assigned to all three of us, labeled "docs".
```

**You say:**

> "We're all going to change the same section of README.md at the same time. This will cause a conflict. That's the point."

#### Everyone creates conflicting branches (5 min):

**Roy:**
```bash
git checkout main
git pull origin main
git checkout -b feat/roy-tips
```
Edit line 225 in README (first tip) to say something different.
Commit, push, open PR via MCP.

**Todd:**
```bash
git checkout main
git pull origin main
git checkout -b feat/todd-tips
```
Edit the SAME line to say something ELSE.
Commit, push, open PR via MCP.

**Maxi:**
```bash
git checkout main
git pull origin main
git checkout -b feat/maxi-tips
```
Edit the SAME line to say a THIRD thing.
Commit, push, open PR via MCP.

#### Merge first PR (2 min):

**You merge Roy's PR first (no conflict yet):**
```
Approve and merge PR #[Roy's] in origin8-ai/workshop-practice.
```

#### Encounter conflict (3 min):

**Try to merge Todd's PR:**
```
Approve and merge PR #[Todd's] in origin8-ai/workshop-practice.
```

**It will fail with a conflict.**

**You say:**

> "See? GitHub says there's a conflict. Todd's change touches the same line Roy already changed. Git needs a human decision."

#### Resolve conflict (10 min):

**Todd does this locally:**

1. Pull main to see Roy's changes:
   ```bash
   git checkout feat/todd-tips
   git pull origin main
   ```

2. Git will show conflict markers in README.md:
   ```
   <<<<<<< HEAD
   Todd's version
   =======
   Roy's version (from main)
   >>>>>>> main
   ```

3. **You explain:**
   - `HEAD` = your version
   - Below `===` = their version
   - You pick one, or combine both
   - Delete the `<<<`, `===`, `>>>` markers

4. Todd edits the file to keep the best version (or combine ideas).

5. Save, then:
   ```bash
   git add README.md
   git commit -m "fix: resolve merge conflict in tips section"
   git push
   ```

6. Now merge via MCP:
   ```
   Merge PR #[Todd's] in origin8-ai/workshop-practice.
   ```

**✅ Success check:** Todd's PR merges successfully.

**Then:** Maxi does the same process for her PR.

---

### Round 4 (Optional): Team Dashboard (10 min) - 11:25-11:35

**Objective:** Show Maxi how to get a team overview via MCP.

**Maxi asks:**
```
In origin8-ai/workshop-practice, list all open issues grouped by assignee, then list all open PRs.
```

**You explain:**
- "This is your 'dashboard' as team lead."
- "Fast way to see: Who's working on what? What's blocked?"
- "Much faster than clicking through GitHub UI."

---

### Wrap-Up (10 min) - 11:35-11:45

**Review learning objectives:**

> "Let's check what you learned:"
> - ✅ Create branch
> - ✅ Commit with proper message
> - ✅ Push to GitHub
> - ✅ Use MCP for issues
> - ✅ Use MCP for PRs
> - ✅ Resolve conflicts
> - ✅ Never commit to main
>
> "Questions?"

**Next steps:**

> "Monday morning:
> - We'll clone the production repo: origin8-v2
> - You'll get your first real issue
> - Use the exact same workflow we practiced today
> - This repo gets archived tomorrow, but your knowledge stays
>
> Keep `github-mcp-workflows.md` handy - it has all the prompts you need."

**Answer any final questions.**

---

## Troubleshooting Guide

### GitHub MCP Not Working

**Symptom:** AI says "I don't have access to GitHub MCP" or similar.

**Fix:**
1. Check `~/.cursor/mcp.json` exists and has GitHub config
2. Verify token is valid (not expired/revoked)
3. Restart Cursor completely
4. Test with simple prompt: "Use GitHub MCP to tell me who I am"

---

### Someone Committed to Main

**Symptom:** They ran `git commit` while on `main` branch.

**Fix (before pushing):**
```bash
# Create branch from current position
git checkout -b feat/their-feature-name

# Go back to main
git checkout main

# Reset main to match remote
git reset --hard origin/main
```

**If they already pushed to main:**
- Don't panic
- You (Roy) can force reset main on GitHub (you have admin)
- Or just leave it and use as teaching moment

---

### Merge Conflict Panic

**Symptom:** Someone sees conflict markers and freaks out.

**What to say:**
> "This is 100% normal. Conflicts just mean Git needs your help deciding which version to keep. Let's look at it together."

**Walk them through:**
1. Open the file
2. Find the `<<<` markers
3. Explain what each section means
4. Help them decide what to keep
5. Remove markers
6. Save, add, commit, push

---

### Lost or Confused

**Symptom:** Someone says "I don't know what branch I'm on" or "I lost my changes."

**Debug:**
```bash
git status          # Shows current branch and changed files
git branch          # Lists all local branches (* = current)
git log --oneline   # Shows recent commits
```

**Common fixes:**
- Wrong branch: `git checkout correct-branch-name`
- Uncommitted changes: `git stash` to save them temporarily
- Lost commit: Usually still in Git history, can recover

---

### AI Gives Wrong MCP Response

**Symptom:** AI says it did something but GitHub doesn't show it.

**Possible causes:**
- Token doesn't have right permissions
- Rate limit hit
- Wrong repo name

**Fix:**
- Check GitHub directly to verify
- Ask AI to try again
- Fall back to GitHub UI if MCP is broken

---

## Time Management Tips

**If running behind:**
- Skip Round 4 (optional)
- Do Round 3 with just 2 people instead of 3
- Cut break shorter

**If ahead of schedule:**
- Do Round 4
- Add extra practice issue for everyone
- Answer deep-dive questions about Git internals

**If someone is stuck:**
- Help them, but let others continue
- They can catch up during Round 2

---

## Post-Workshop

**After everyone leaves:**

1. **Update README** with all three names in "Training Participants"
2. **Take a screenshot** of the merged PRs as proof of success
3. **Archive the repo** on Monday (Settings → Archive)
4. **Celebrate** - you taught people Git! 🎉

---

**Good luck, Roy! You've got this. 💪**
