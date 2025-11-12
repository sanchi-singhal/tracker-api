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

The API is configured to allow requests from the Angular application running on `http://localhost:4200`. CORS settings can be modified in `Program.cs`.

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

