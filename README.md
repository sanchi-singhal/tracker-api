# Tracker .NET Web API

This is the .NET Web API backend for the Tracker project.

## Prerequisites

- .NET 8.0 SDK or higher
- Visual Studio 2022, Visual Studio Code, or any IDE with .NET support

## Getting Started

1. Navigate to the `dotnet-api` directory:
   ```bash
   cd dotnet-api
   ```

2. Restore dependencies:
   ```bash
   dotnet restore
   ```

3. Run the application:
   ```bash
   dotnet run
   ```

The API will be available at:
- HTTPS: `https://localhost:7000`
- HTTP: `http://localhost:5000`
- Swagger UI: `https://localhost:7000/swagger`

## API Endpoints

### Values Controller
- `GET /api/values` - Get all values
- `GET /api/values/{id}` - Get value by ID
- `POST /api/values` - Create a new value

### Weather Forecast Controller
- `GET /api/weatherforecast` - Get weather forecast data

## CORS Configuration

Allowed origins are managed via the `Cors:AllowedOrigins` array in `appsettings.json` (production) and `appsettings.Development.json` (local overrides). The production file is already set to allow the deployed UI at `https://all-in-one-tracker-ui.vercel.app`, while the development file allows `http://localhost:4200`. Update these values if the UI domains change. `Program.cs` reads the configuration at startup and applies it to the CORS policy.

## Project Structure

```
dotnet-api/
├── Controllers/
│   ├── ValuesController.cs
│   └── WeatherForecastController.cs
├── Program.cs
├── appsettings.json
├── appsettings.Development.json
└── TrackerApi.csproj
```

## Development

The API uses Swagger for API documentation and testing. When running in Development mode, Swagger UI is automatically available at `/swagger`.

## Build

Build the project:
```bash
dotnet build
```

## Publish

Publish the project for production:
```bash
dotnet publish -c Release
```

