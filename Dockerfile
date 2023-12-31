FROM mcr.microsoft.com/dotnet/sdk:6.0

LABEL "com.github.actions.name"="Auto Release Milestone"
LABEL "com.github.actions.description"="Drafts a GitHub release based on a nearly closed milestone"

LABEL version="0.1.0"
LABEL repository="https://github.com/Code-Mountains/auto-release-milestone"
LABEL maintainer="Code Mountains IT Solutions"

RUN apt-get update && apt-get install -y jq
RUN dotnet tool install -g GitReleaseManager.Tool 

ENV PATH /root/.dotnet/tools:$PATH

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

