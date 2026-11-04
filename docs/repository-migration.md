# YangSlots repository migration

Moved to its own repository on **4 November 2026**.

| Item                     | Preserved source                                                                            |
| ------------------------ | ------------------------------------------------------------------------------------------- |
| Original repository      | [nguyenhonggiang2407/DTDD](https://github.com/nguyenhonggiang2407/DTDD)                     |
| Original branch          | [yangslots](https://github.com/nguyenhonggiang2407/DTDD/tree/yangslots)                     |
| Original tip             | `d9419ac787bf5bdec3686c342a8e2c4f353f7b40`                                                  |
| Reachable source history | 7 commits, retained unchanged as ancestors of the migration commit                          |
| New default branch       | `main` in [nguyenhonggiang2407/YangSlots](https://github.com/nguyenhonggiang2407/YangSlots) |

This is a repository extraction, not a new implementation. The source commit and its full reachable history remain available. The DTDD branch is retained. No original commits or authors were rewritten, and no force push was used.

Application code, database schema, `LICENSE`, `NOTICE.md`, `LICENSES/` and `upstream/` are unchanged. The migration updates the clone URL, current CI badge, push branch filter and screenshot-publishing branch. `.gitattributes` makes text checkouts consistent across Windows and Linux while retaining CRLF for Windows command wrappers. Historical attribution links keep their original targets. No database or hosting configuration was moved.

## Validation

- The source tip was checked out before documentation changes; the working tree matched that commit.
- The original history remains an ancestor; source tree and license/reference blobs are checked before publishing.
- Java 17.0.21 / Maven `verify`: **24 tests passed**, no failure/error/skipped; `target/yangslots.jar` built successfully.
- The packaged-JAR browser suite passed **6 tests**, including holds/confirmation/export, cancellation/resource edits, lost-response idempotency, literal text/CSV safety, concurrent edits and mobile workflow. Playwright 1.64.1 used its installed Chromium on Windows. Actual desktop/mobile captures were regenerated.
- The new repository's workflow runs formatting, Maven, browser and Docker build/health checks. A workflow file alone is not evidence that those checks passed; see the actual [Actions runs](https://github.com/nguyenhonggiang2407/YangSlots/actions).
- Docker is unavailable on the local Windows host. Hosted Docker results are reported separately after CI finishes.

The screenshots in this repository are actual application captures with fictional local test data. There is no public application URL yet. A healthy CI run is not a live deployment.
