---
title: Get started with BDD using Docker and Selenium
date: 2018-09-10
categories: 
  - Blog
tags: 
  - DevOps
featured: false
draft: false
resources:
  - name: other
    src: erik-jan-leusink-326914-unsplash.jpg
    params:
      credit: Photo by Erik-Jan Leusink on Unsplash
      link: https://unsplash.com/photos/UbeuY3rPTJs
  - name: cover
    src: shane-aldendorff-587930-unsplash.jpg
    params:
      credit: Photo by Shane Aldendorff on Unsplash
      link: https://unsplash.com/photos/mQHEgroKw2k
  
---
*UPDATE (May 2019): The video below has been updated and expanded. Check it out!*

[Behaviour Driven Development (or BDD)](https://en.wikipedia.org/wiki/Behavior-driven_development) ensures everyone has the same understanding of how an application should work and gives you a clear indication when a feature is finished. In general, any test-automation dramatically speeds up acceptance and regression testing. 

Plus, it feels like magic.

Unfortunately, getting started can be tough. You need a browser, a testing framework like [Cucumber](https://cucumber.io/), a web driver like [Selenium](https://www.seleniumhq.org/), and something like [Capybara](https://github.com/teamcapybara/capybara) to glue it all together (which requires [Ruby](https://www.ruby-lang.org/en/)).

For more advanced BDD, check out things like the Java-based [Serenity](http://www.thucydides.info/#/) framework which uses the popular [Screenplay Pattern](http://thucydides.info/docs/articles/screenplay-tutorial.html). For something simple to get you started, read on...

## Get started in 5 minutes
Here's a quick and easy way to set up a BDD environment using [Docker](https://docker.io) and [standalone Selenium containers](https://github.com/SeleniumHQ/docker-selenium). In the video below we create a browser container, connect to it with [VNC](https://en.wikipedia.org/wiki/Virtual_Network_Computing) so we can see what's happening, then create another container to run Ruby/Capybara and then we test Google to make sure that we see the word "dog" when we search for "puppies".

{{< youtube cPF3GKkBHHY >}}

<br>
## Step by step
Here's a text-based summary of the video above. It assumes you have [docker](https://www.docker.com/) installed, you've [logged in](https://docs.docker.com/engine/reference/commandline/login/) to [docker hub](https://hub.docker.com/) at least once and you have a basic knowledge of BDD.

To begin, clone [this repository](https://github.com/peterkappus/selenium-cucumber-docker) from a terminal like so:

```
git clone git@github.com:peterkappus/selenium-cucumber-docker.git
```

Now move into the directory you just cloned...
```
cd selenium-cucumber-docker
```

Start the two containers (one for running ruby, and one with the browser). We specify that we want a bash session (so we can run cucumber interactively), and this container specifies the browser container as a dependency so it will start automagically.

```
docker-compose run ruby bash
```

Now you can see into the browser container by using VNC to connect:
```
open vnc://:secret@0.0.0.0:5900
```
This should open a VNC viewer and show you an empty Ubuntu desktop.

Returning to the original terminal window, we should have a bash session where we can start cucumber:

```
cucumber
```

Looking at the VNC window, we'll see a browser open and perform a Google search, and then close. In the Ruby container, we can see the tests running and see the results.

We can now extend this by writing tests in our "feature" folder and step definitions in our "features/step_definitions" folder. The repo above includes a few generic step definitions for seeing things and clicking on things. You'll no doubt want to write your own but this will get you started. 

Take a look at the [capybara documentation](https://www.rubydoc.info/github/teamcapybara/capybara/master) and this [cheat sheet](https://gist.github.com/zhengjia/428105) for help writing step definitions.


When you've finished testing, you can exit the ruby container like so:

```
exit
```

And finally stop both containers by running this from the host:

```
docker-compose down
```


I hope this helps you to get started exploring test automation and BDD and makes it easier to standardise your test environment among your development team.

[Let me know](/contact) how it works for you!
