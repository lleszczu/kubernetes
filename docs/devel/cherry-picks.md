<!-- BEGIN MUNGE: UNVERSIONED_WARNING -->

<!-- BEGIN STRIP_FOR_RELEASE -->

![WARNING](http://releases.k8s.io/HEAD/docs/warning.png)
![WARNING](http://releases.k8s.io/HEAD/docs/warning.png)
![WARNING](http://releases.k8s.io/HEAD/docs/warning.png)

<h1>PLEASE NOTE: This document applies to the HEAD of the source
tree only. If you are using a released version of Kubernetes, you almost
certainly want the docs that go with that version.</h1>

<strong>Documentation for specific releases can be found at
[releases.k8s.io](http://releases.k8s.io).</strong>

![WARNING](http://releases.k8s.io/HEAD/docs/warning.png)
![WARNING](http://releases.k8s.io/HEAD/docs/warning.png)
![WARNING](http://releases.k8s.io/HEAD/docs/warning.png)

<!-- END STRIP_FOR_RELEASE -->

<!-- END MUNGE: UNVERSIONED_WARNING -->
# Overview

This document explains cherry picks are managed on release branches within the
Kubernetes projects.

## Propose a Cherry Pick

Any contributor can propose a cherry pick of any pull request, like so:

```
hack/cherry_pick_pull.sh upstream/release-3.14 98765
```

This will walk you through the steps to propose an automated cherry pick of pull
 #98765 for remote branch `upstream/release-3.14`.

## Cherry Pick Review

Cherry pick pull requests are reviewed differently than normal pull requests. In
particular, they may be self-merged by the release branch owner without fanfare,
in the case the release branch owner knows the cherry pick was already
requested - this should not be the norm, but it may happen.

[Contributor License Agreements](../../CONTRIBUTING.md) is considered implicit
for all code within cherry-pick pull requests, ***unless there is a large
conflict***.

## Searching for Cherry Picks

Now that we've structured cherry picks as PRs, searching for all cherry-picks
against a release is a GitHub query: For example,
[this query is all of the v0.21.x cherry-picks](https://github.com/GoogleCloudPlatform/kubernetes/pulls?utf8=%E2%9C%93&q=is%3Apr+%22automated+cherry+pick%22+base%3Arelease-0.21)


<!-- BEGIN MUNGE: GENERATED_ANALYTICS -->
[![Analytics](https://kubernetes-site.appspot.com/UA-36037335-10/GitHub/docs/devel/cherry-picks.md?pixel)]()
<!-- END MUNGE: GENERATED_ANALYTICS -->