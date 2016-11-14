#Cucumber Sample

This project has as objective to help QA Engineers to automate these Acceptance Tests using Cucumber, Capybara, Selenium. Follow possible configurations:

##Drivers
Project works with selenium by default, but also could be used Poltergeist to running tests on Headless mode.

```cucumber HEADLESS=true```

##Browsers

1. Firefox: ```cucumber BROWSER=firefox```
2. Chrome (as default) ```cucumber```


##Parallel Tests

As used on Java and C# tests, cucumber also allow to run parallel test using gem parallel_tests. It allows to run tests faster as usual.

```parallel_cucumber features/ -n #{number of process}```

P.s.
Even running with no features filter, it's mandatory to set features/ before -n.