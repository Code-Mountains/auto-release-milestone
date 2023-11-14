FROM mcr.microsoft.com/dotnet/core/sdk:3.1

LABEL "com.github.actions.name"="Auto Release Milestone"
LABEL "com.github.actions.description"="Drafts a GitHub release based on a nearly closed milestone"

LABEL version="0.1.0"
LABEL repository="https://github.com/Code-Mountains/auto-release-milestone"
LABEL maintainer="Code Mountains IT Solutions"

RUN apt-get update && apt-get install -y jq

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
