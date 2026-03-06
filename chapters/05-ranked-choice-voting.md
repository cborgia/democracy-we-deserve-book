# Chapter 5: Beyond Ranked Choice — The Case for Score Voting

If you've been paying attention to democracy reform in the last decade, you've heard of ranked choice voting. It's the darling of the reform movement — adopted in Alaska, Maine, New York City, and dozens of other jurisdictions. Advocacy groups have spent millions promoting it. It sounds intuitive: rank your candidates in order of preference, and if your first choice is eliminated, your vote transfers to your second.

It's a real improvement over plurality voting. But it's not the best we can do.

There's a simpler, more mathematically sound alternative that most Americans have never heard of: **score voting**. And once you understand how both systems work — and where ranked choice breaks down — the case for score voting becomes hard to ignore.

## How Ranked Choice Voting Works

In a ranked choice election (also called instant-runoff voting, or IRV), voters rank candidates: first choice, second choice, third, and so on. If no candidate receives a majority of first-choice votes, the candidate with the fewest first-choice votes is eliminated. Voters who ranked that candidate first have their ballots transferred to their second choice. This process repeats — eliminate the last-place candidate, redistribute their votes — until someone crosses 50%.

It's an elegant idea. And it does solve some real problems.

::: callout
**What RCV gets right:**
- Eliminates the spoiler effect *in most cases* — you can vote for a third-party candidate without "wasting" your vote
- Ensures the winner has majority support *among remaining voters* (though not necessarily among all voters)
- Encourages more candidates to run, increasing choice
- Reduces negative campaigning — candidates want to be your second choice too
:::

RCV has real momentum. As of 2025, it's used in over 50 U.S. jurisdictions.[^ch5-1] Alaska's version, combined with an open primary, produced one of the most competitive and interesting elections in 2022. Maine used it for federal elections starting in 2018. It's a genuine step forward.

So why look further?

Because RCV has a flaw that sits at the heart of its design — and it's not a theoretical edge case. It's a structural problem that gets *worse* as elections get more competitive.

## The Burlington Problem

In 2009, Burlington, Vermont held a mayoral election using ranked choice voting. Three candidates were competitive: the Democrat, the Republican, and the Progressive.

Here's what happened:

The Republican was eliminated first (fewest first-choice votes). His voters' second choices were redistributed, and the Progressive won.

But here's the problem: **the Democrat was preferred head-to-head over both other candidates.** In a one-on-one matchup, the Democrat would have beaten the Progressive. The Democrat would have beaten the Republican. The Democrat was the most broadly supported candidate in the race — the one who best represented the overall will of the voters.

RCV eliminated him anyway.

::: deep-dive
### The Condorcet Winner

Political scientists call a candidate who would beat every other candidate in a head-to-head matchup the "Condorcet winner." They represent the broadest consensus — the candidate the fewest people actively oppose.

RCV can eliminate the Condorcet winner. This isn't a bug in the Burlington election; it's a mathematical property of the system. Because RCV only looks at *first-choice* votes when deciding who to eliminate, a candidate who is everyone's second choice — broadly acceptable, widely liked — can be knocked out early while more polarizing candidates survive.

This is called a "center squeeze." The moderate, consensus candidate gets squeezed out by two more extreme opponents, even though most voters prefer them.[^ch5-2]
:::

Burlington was so upset by the result that they **repealed ranked choice voting** the following year. It's been reimplemented since, but the lesson remains: RCV can produce outcomes that feel wrong — because they *are* wrong, by the most intuitive measure of democratic fairness.

## The Monotonicity Problem

There's another issue, and it's even stranger.

In a ranked choice election, **voting a candidate higher on your ballot can cause them to lose.** And voting them lower can cause them to win.

Read that again. It violates the most basic expectation of any voting system: that supporting a candidate should help them, not hurt them.

This property is called *non-monotonicity*, and it's not theoretical. It's a proven mathematical feature of IRV. The elimination rounds create cascading effects where changing the order of elimination can flip the final result in counterintuitive ways.[^ch5-3]

::: callout
**Monotonicity in plain English:** If you change your ballot to rank Candidate A higher (and change nothing else), Candidate A should do at least as well — never worse. RCV fails this test. Score voting passes it trivially, because giving a candidate more points always helps them.
:::

Most voters will never encounter this in practice. But it matters for two reasons:

1. **It undermines trust.** If experts can show that the system can produce paradoxical results, opponents will use that to discredit it — and they won't be wrong.
2. **It makes strategic voting rational.** If voting honestly can hurt your preferred candidate, sophisticated voters have an incentive to game the system. That's exactly what reform is supposed to eliminate.

## Enter Score Voting

Score voting — sometimes called range voting — works like this:

**Rate each candidate on a scale (say, 0 to 5). The candidate with the highest average score wins.**

That's it. No rounds. No elimination. No transferring ballots. You walk in, score every candidate, and the most broadly supported one wins.

You already use this system every day. Restaurant ratings. Movie reviews. Product scores. Amazon stars. The math is intuitive because humans already think in terms of degree, not just rank.

| Feature | Plurality | RCV | Score Voting |
|---------|-----------|-----|--------------|
| Spoiler effect | Yes | Mostly no | No |
| Monotonic | Yes | **No** | Yes |
| Finds consensus winner | Rarely | Sometimes | Usually |
| Ballot simplicity | Simple | Complex | Simple |
| Counting complexity | Simple | Complex | Simple |
| Condorcet compliance | Poor | Inconsistent | Strong |

::: deep-dive
### How Score Voting Handles Burlington

Let's replay the 2009 Burlington election under score voting. Voters score each candidate 0–5 based on how much they support them.

The Democrat — the broadly acceptable candidate — would receive moderate-to-high scores from nearly everyone. Republican voters would give him a 3 or 4. Progressive voters would give him a 3 or 4. His own supporters would give him a 5.

The Progressive and Republican, being more polarizing, would receive 5s from their base and 0s or 1s from the other side.

Result: the Democrat wins, because score voting naturally surfaces the candidate with the broadest support. The center squeeze can't happen — there's no elimination round to knock out the consensus pick.

This isn't hypothetical. Simulations using Burlington's actual voter preferences consistently show score voting selecting the Condorcet winner.[^ch5-4]
:::

## The Simplicity Argument

One of score voting's most underrated advantages is **how simple it is to count.**

RCV requires centralized tabulation. You can't just count ballots at each precinct and add them up — because the elimination rounds depend on the *global* distribution of first-choice votes. Precinct A's ballots might transfer differently depending on what happened in Precinct B. This makes auditing harder, results slower, and the whole process more opaque.

Score voting? Add up the scores. Precinct by precinct. Then add the precincts together. A fifth-grader can audit it.

::: callout
**Why counting complexity matters:** In 2021, the New York City mayoral primary (RCV) had significant delays and a tabulation error that temporarily included 135,000 test ballots in the count. The Board of Elections had to redo the tabulation. This wasn't RCV's "fault" per se — it was human error — but the complexity of multi-round elimination makes errors harder to catch and easier to make. Score voting's precinct-summable counting makes this class of error nearly impossible.[^ch5-5]
:::

## "But People Will Just Bullet Vote"

The most common objection to score voting is bullet voting: the fear that strategic voters will give their favorite a 5 and everyone else a 0, reducing the system to de facto plurality voting.

It's a fair concern. And the research says: **it doesn't happen much.**

In elections and studies using score voting, most voters use the full range of scores. They differentiate between candidates they like a lot, candidates they're okay with, and candidates they oppose. This mirrors how people naturally think — in degrees, not absolutes.[^ch5-6]

Even when some voters *do* bullet vote, score voting still outperforms RCV and plurality voting in simulations. The system is robust to strategic behavior in a way that RCV is not, because RCV's elimination rounds create much more complex strategic calculations.

::: deep-dive
### STAR Voting: A Hybrid Approach

If bullet voting still concerns you, there's a variant called **STAR voting** (Score Then Automatic Runoff). Voters score candidates 0–5, just like score voting. But instead of the highest average winning outright, the top two scorers advance to an automatic runoff. In the runoff, your full ballot is examined: whichever of the two finalists you scored higher gets your vote.

STAR combines score voting's expressiveness with a final head-to-head comparison that addresses the bullet voting concern. It's been used in local elections in Oregon and is gaining traction in reform circles.

For purists, plain score voting is cleaner. For political pragmatists, STAR might be an easier sell because it includes that familiar "runoff" concept. Either is a massive improvement over both plurality and RCV.[^ch5-7]
:::

## Why RCV Gets All the Attention

If score voting is simpler and more mathematically sound, why is ranked choice voting dominating the reform conversation?

A few reasons:

**First-mover advantage.** FairVote, the largest voting reform organization in the U.S., has championed RCV for decades. They've built the infrastructure — the legal frameworks, the advocacy playbooks, the coalition networks. Score voting advocacy (led by organizations like the Center for Election Science) is newer and less well-funded.

**Intuitive framing.** "Rank your candidates" sounds natural. People understand ranking. "Score your candidates on a scale" requires a beat more explanation — even though people do it constantly in other contexts.

**Sunk cost.** Dozens of jurisdictions have already adopted RCV. Advocates are understandably reluctant to say "actually, there's something better" when they've spent years and millions getting RCV passed.

None of these are arguments about which system produces better outcomes. They're arguments about momentum — and momentum can shift.

## The Path Forward

Here's the honest truth: **either system is dramatically better than what we have.** Plurality voting — our current default — fails on almost every metric. It produces spoilers, punishes third parties, rewards polarization, and gives us representatives that most people didn't vote for.

If your city or state is considering RCV, **support it.** It's a real improvement. Don't let the perfect be the enemy of the good.

But if you're designing a system from scratch — if you're writing ballot initiatives, drafting legislation, or building the next wave of reform — **score voting deserves a seat at the table.** It's simpler, more expressive, easier to audit, and mathematically more likely to elect the candidate that best represents the will of the voters.

::: callout
**The bottom line:** Ranked choice voting is a step forward. Score voting is a leap. Both are light-years ahead of what we have now. The important thing isn't which reform wins — it's that we stop accepting a voting system that was outdated before most of us were born.
:::

Democracy isn't just about who votes. It's about whether the mechanics of voting actually translate the will of the people into representation. On that measure, we can — and must — do better.

---

[^ch5-1]: FairVote, "Where Is Ranked Choice Voting Used?" (2025). Over 50 jurisdictions including New York City, Alaska, Maine, and municipalities in Utah, Colorado, Virginia, and others.

[^ch5-2]: See Merrill, S. and Nagel, J., "The Effect of Approval Balloting on Strategic Voting Under Alternative Decision Rules," *American Political Science Review*, 1987. The center squeeze phenomenon is well-documented in social choice theory.

[^ch5-3]: See Ornstein, J.T. and Norman, R.Z., "Frequency of Monotonicity Failure Under Instant Runoff Voting," *Public Choice*, 2014. The study found non-monotonicity occurs in approximately 5–15% of competitive three-candidate elections.

[^ch5-4]: Green-Armytage, J., "Four Condorcet-Hare Hybrid Methods for Single-Winner Elections," *Voting Matters*, 2011. Multiple simulation studies confirm score voting's superior Condorcet efficiency.

[^ch5-5]: "New York City Board of Elections Admits Error in Ranked-Choice Mayoral Primary Count," *The New York Times*, June 29, 2021.

[^ch5-6]: Laslier, J.F., "And the Loser Is... Plurality Voting," *Handbook on Approval Voting*, Springer, 2010. Studies of score/approval voting consistently show voters using the full range of scores rather than defaulting to min/max.

[^ch5-7]: Equal Vote Coalition, "STAR Voting," starvoting.org. STAR voting was used in Lane County, Oregon Democratic Party elections beginning in 2020.
