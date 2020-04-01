[Official documentation on how to publish circleci orbs](https://circleci.com/docs/2.0/creating-orbs/#using-the-cli-to-publish-orbs)

Publish development orb:
```bash
circleci orb publish <path> banzaicloud/<orb>@dev:<version>
```
> Development orbs are mutable and expire after 90 days.

Publish production orb:
```bash
circleci orb publish <path> banzaicloud/<orb>@<version>
```

Promote a dev orb to production:
```bash
circleci orb publish promote banzaicloud/<orb>@<dev:version> [major|minor|patch]
```

> Only organization administrators are allowed to publish production orbs.
