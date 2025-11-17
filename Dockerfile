# Use the official .NET SDK image to build the app
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build

WORKDIR /src

# Copy csproj and restore dependencies
COPY *.sln ./
COPY [TrackerAPI]/TrackerAPI.csproj ./TrackerAPI/
RUN dotnet restore

# Copy everything else and build
COPY . .
WORKDIR /src/TrackerAPI
RUN dotnet publish -c Release -o /app/publish

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /app/publish .
EXPOSE 80
ENTRYPOINT ["dotnet", "TrackerAPI.dll"]
