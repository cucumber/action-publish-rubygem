# create-release-pr

Creates a pull request for a release. We use this in the Cucumber project to add a manual
approval step before making an automated release from the (protected) `release/*` branch.

This action takes two mandatory inputs:

* `current_release`
* `next_version`

Both `current_release` and `next_version` should be of the form `X.Y.Z`, the [semantic version] number of the previous and next release. You can use the [`get-released-version`](https://github.com/cucumber-actions/get-released-version) action to figure out the `current_release` from tags.

The action will create two branches: 

* `pre-release/v<next_version>` from the head of the current branch (or the optional `ref` input), marking the latest commit to be released.
* `release/v<next_version>` from a commit tagged with `v<current_release>`, marking the last commit to have been previously released.

It then creates a pull request from the `pre-release/v<next_version>` branch to the `release/v<next_version_branch>` branch, containing all the commits to be released.

If either of those branches already exist, they will be force-pushed to match the current state of the repo.

Note that this assumes you have tagged the previous release commit with `v<current_release>`. To bootstrap this for a not-yet-released project, you can add a `v0.0.0` tag to the first commit in your repo. Make sure that, when this new release is made, a tag will be added.

[semantic version]: https://semver.org/
