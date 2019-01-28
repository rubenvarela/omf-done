#### omf-done
> A plugin for [Oh My Fish][omf-link].

Forked from https://github.com/franciscolourenco/done

## Installation

### Oh-my-fish

```fish
$ omf install https://github.com/rubenvarela/omf-done.git
```

### Manually
Installations at https://github.com/franciscolourenco/done/

## Usage
Just go on with your normal life. You will get a notification when a process takes more than 5 seconds finish, and the terminal window not in the foreground.

After installing you could type, for instance `sleep 6`, and start using other app. After 6 seconds you should get a notification.

## Dependencies

If you want notifications with icons on macOS, please install `terminal-notifier`

```fish
brew install terminal-notifier
```

## Settings

### Only display notifications if a command takes more than a certain amount of time

```fish
`set -U __done_min_cmd_duration 5000  # default: 5000 ms`
```

### Prevent specific commands from triggering notifications. Accepts a regex.

This is useful to exclude commands like `git commit` for instance, since it could trigger unwanted notifications if it is configured to use an external editor.

```fish

set -U __done_exclude 'git (?!push|pull)'  # default: all git commands, except push and pull. accepts a regex.
```

### Execute a custom command instead of showing the default notifications

```fish
set -U __done_notification_command 'some custom command'
```

## Tested

This fork has only been tested on macOS but should work on the same versions as the upstream project.


# License

[MIT][mit] 

# Contributors

    Francisco Lourenço - Maintainer
    Daniel Wehner - Proof of Concept
    Thanh Duc Nguyen - Logo


Check upstream for up to date contributor and other information.


[mit]:            https://opensource.org/licenses/MIT
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish
