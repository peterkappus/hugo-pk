---
title: "A Tour of Basic Agile Terminology"
date: 2019-07-08T19:28:24Z
categories: blog  
draft: false
featured: true
tags: 
  - agile
resources:
  - name: cover
    src: olga-guryanova-ft7vJxwl2RY-unsplash.jpg
    params:
      credit: Photo by Olga Guryanova on Unsplash
      link: https://unsplash.com/photos/ft7vJxwl2RY

---

Agile concepts often feel quite alien to teams who are used to traditional ways of working, especially when they're involved in a wholesale, large scale "agile transformation" effort. As [John Cutler](https://twitter.com/johncutlefish?lang=en) points out, [agile makes no sense](https://hackernoon.com/agile-makes-no-sense-c8ebbf971012)! :grin: 
While it's best to avoid jargon altogether, there are some basic terms that are useful to know and today I remembered how important it is to introduce teams to those terms and not to assume anyone already knows what they mean, so I've written this short guide. You might also enjoy reading my [introduction to basic project management terms](/blog/project-management-terms/).
 
Without being exhaustive, this guide aims to be as basic and straight forward as possible. [Let me know](/contact) what I've missed!

## Origins of Agile
In 1986 Hirotaka Takeuchi (a Harvard Business School professor) and Ikujiro Nonaka (professor emeritus at Hitotsubashi University in Tokyo) wrote an article in the Harvard Business Review called [The New New Product Development Game](https://hbr.org/1986/01/the-new-new-product-development-game). They described how the old ways of developing new products didn't allow companies to be competitive in the new landscape:

<div class="blockquote"> The traditional sequential or “relay race” approach to product development...may conflict with the goals of maximum speed and flexibility. Instead, a holistic or “rugby” approach—where a team tries to go the distance as a unit, passing the ball back and forth—may better serve today’s competitive requirements.</div>

They go on to describe a "scrum" process which included:

1. Built-in instability
2. Self organising project teams
3. Overlapping development phases
4. "Multilearning"
5. Subtle control
6. Organisational transfer of learning

Years later, in February of 2001, seventeen veterans of the software industry from areas such as Extreme Programming, DSDM and other emerging development methodologies came together in Snowmass Utah to (among other things) talk about an alternative to documentation and process heavy, software development. Read the [full story here](https://agilemanifesto.org/history.html). What emerged was a concise [agile manifesto](http://agilemanifesto.org/) (which reads almost like haiku):


**Individuals and interactions** over processes and tools<br>
**Working software** over comprehensive documentation<br>
**Customer collaboration** over contract negotiation<br>
**Responding to change** over following a plan

They also wrote a set of [12  principles of agile software development](http://agilemanifesto.org/principles.html) which have come to guide much of software development over the past nearly 20 years.

## Common terms
If you're starting out with agile you'll hear many of these terms quite frequently:

<div class="row">
  <div class="col-sm-6">
  {{% markdownify %}}
- Agile frameworks:
  - Scrum
  - Kanban
  - Scrumban
- Agile ceremonies:
  - Backlog refinement
  - Sprint planning
  - Daily Stand-up
  - Sprint Review (Demo)
  - Retrospective
  {{% /markdownify %}}
</div>
<div class="col-sm-6">
{{% markdownify %}}
- Agile concepts & roles:
  - Product owner
  - Cross-functional team
  - Kaizen
- Agile Artefacts:
  - Backlog
  - User Stories
  - Epics
  - Information radiators
  - Acceptance Criteria
  - Definition of Done
{{% /markdownify %}}
</div>
</div>
## Basic agile frameworks
The two basic agile frameworks that many teams adopt (which can be mixed together) are **Scrum** and **Kanban**.

**Scrum** is about committing to doing a specific chunk of work in a given time period called a **Sprint**. Think about the notion of a rugby scrum where the whole team is involved in a single clear goal within a fixed timeframe.

**Kanban**, by contrast, is about maximising the continuous flow of work through the system on a perpetual basis. It's great for BAU and work which can't be easily planned when new work must be continuously added to the system.

Let's look deeper.

In both cases, a **product owner** maintains a **product backlog** which is a **ranked**  list of **user stories** (various user needs & desires framed from the user's perspective). User stories may have specific **acceptance criteria** which describes how a user would determine that this ticket is done, but doesn't define how the team should do the actual work. They may also use a **"Definition of Done"** which defines when the story is considered complete and work on it can stop.

The user story is the smallest unit of work which independently delivers value. The [I.N.V.E.S.T.](https://en.wikipedia.org/wiki/INVEST_(mnemonic)) mnemonic is useful for remembering that stories should be **Individual** (not dependent on other stories to deliver value), **Negotiable** (there should be some wiggle room in the story; it's not a contract), **Valuable** (if it doesn't deliver value to stakeholders, don't do it), **Estimatable** (if you can't estimate how big/complex it is, it's probably too vague), **Small**/Sized appropriately (if a story is too big, it can be impossible to plan/prioritise/deliver), **Testable** (if you can't test the story, it's too vague or not written correctly). 

A larger story which may take several weeks or months to implement is sometimes called an **epic**. It may be broken into smaller user stories which can be delivered in a few days.

An agile team should be **cross-functional** meaning that they have _complimentary skills_ and _mutual accountability_ to each other. It means the team has all the skills necessary to design, build, test, deploy, and support a solution which provides real value to the end-user without having to go outside the team. 

## Scrum
In scrum, the team commits to what they will do in the sprint in a **sprint planning** session (involving the whole team).  It's great for building new products when the business can let the team focus on delivering a specific set of user stories for a couple of weeks at a time without interrupting them with new work. 

Usually every morning, the team has a short (15min maximum) check-in with each other called the **daily stand-up** which is often done standing up near some type of board, screen or other **information radiator** where they can visualise their work in progress (or **WIP**). At the standup, each team member will share what they've done yesterday, what they're committing to doing today, and where they need help from their teammates or the **delivery manager** (sometimes called a **Scrum master** or **Agile master**) to liaise with someone outside the team to remove a **blocker**. It's like a tiny planning and retrospective session covering the previous and current days.

Teams may also update a **burn down chart** every day to show how much work has been completed and how much remains. This helps to see if the team is working at a good pace or if something about the work or workflow needs to be changed. A good burn down should show work being completed at a smooth and continuous rate. 

After the designated number of days (usually two weeks) has passed and the committed work has (hopefully) been delivered, the team conducts a **sprint review** (hopefully demonstrating working software to any interested parties). Then they'll hold a full-team **retrospective** to come up with ideas to continually improve their **ways of working** (e.g. the process they follow to do the work). Some people use the term **[Kaizen](https://en.wikipedia.org/wiki/Kaizen)** which means "change for the better" in Japanese.

Some teams also have a **pre-planning** session or **backlog refinement** session to ensure the items at the top of the backlog are well-defined and understood by the whole team.

## Kanban
The other major agile framework, **kanban**, comes from another Japanese word which means "signboard". The kanban method originated at Toyota where sign cards would be placed near the bottom of a stack of automobile parts (e.g. tires) to indicate the moment where the assembly technicians should request more stock. In this way, they reduced excess inventory build up and ensured parts were always available when needed.

In software development, kanban creates a visible workflow of different states and encourages individuals to "pull" work through the system as they have capacity to prevent unfinished work from building up. The four basic steps of kanban are to:

1. Visualise the workflow
2. Limit work in progress
3. Make policies explicit
4. Remove [waste](https://www.isixsigma.com/dictionary/8-wastes-of-lean/) and maximise flow (using data!)

Read more about [getting started with kanban](https://medium.com/startup-patterns/kanban-in-5-easy-steps-68e7bd0647b6).

Kanban is useful when you can't predict what's coming next or when you want to make small incremental improvements rather than big changes in your ways of working.

A kanban board is very useful in showing where work is getting "stuck" so that you can focus on improving those areas and maximising flow.

Many teams using kanban also use daily standups, demos (or reviews) to share what they've done, and retrospectives to keep improving.

Teams often combine elements of both in something called **Scrumban**. In this model, teams may visualise their work and maximise flow (as in kanban) but use the sprint **timebox** to help define clear goals and measure how much work they can deliver in a given time period.

## Estimation & Velocity
Scrum embraces the fact that not all stories are the same size. In this case, a team may estimate the relative size & complexity of a story using **T-shirt sizes** (S, M, L, XL) or **[story points](https://www.mountaingoatsoftware.com/blog/what-are-story-points)**. By adding up how many story points were delivered in a sprint, the teams establish their **velocity**. This number helps teams decide how much to take on in each sprint. Ideally, a team's velocity is constantly increasing as the team matures.

In kanban, the goal is usually to slice stories so that they are similar in size and complexity. By measuring the time required to go from idea to implementation (known as **cycle time** or **lead time**) for many stories (or tickets), teams can get very good at predicting how long (on average) a new piece of work will take. This is easier when the work can be standardised.

Some teams avoid estimating altogether because they believe their work is too variable and the effort required to estimate  doesn't provide enough certainty to justify the cost.

Other teams enjoy estimating because it forces them to really dig into each story and ensure they understand all the nuances of how they will deliver it.

## Continuous improvement
The most important thing in adopting agile is to **inspect and adapt**. You'll hear this phrase frequently and may also hear **Plan, Do, Check, Adjust** (or PDCA) as a way to describe the continuous process of doing the work, observing how the work happens, and making changes to improve how the work gets done.

## Conclusion
It can feel daunting in the beginning but as long as you remember to keep talking about ways to improve and keep implementing your ideas and measuring the results, you'll get better and better. This is the heart of agile.

I hope this guide has been useful. Please [get in touch](/contact) and let me know. Also check out my [introduction to basic project management terms](/blog/project-management-terms/).
