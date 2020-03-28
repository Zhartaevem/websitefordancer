#FROM mcr.microsoft.com/dotnet/core/aspnet:3.0-buster-slim AS base
#WORKDIR /app
#
#FROM mcr.microsoft.com/dotnet/core/sdk:3.0-buster AS build
#WORKDIR /src
#COPY ["WebSiteForDancer.csproj", ""]
#RUN dotnet restore "./WebSiteForDancer.csproj"
#COPY . .
#WORKDIR "/src/."
#RUN dotnet build "WebSiteForDancer.csproj" -c Release -o /app/build
#
#FROM build AS publish
#RUN dotnet publish "WebSiteForDancer.csproj" -c Release -o /app/publish
#
#FROM base AS final
#WORKDIR /app
#COPY --from=publish /app/publish .
#ENTRYPOINT ["dotnet", "WebSiteForDancer.dll"]


FROM microsoft/dotnet:3.1-sdk AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o out

# Build runtime image
FROM microsoft/dotnet:3.1-aspnetcore-runtime
WORKDIR /app
COPY --from=build-env /app/out .
CMD dotnet WebSiteForDancer.dll
