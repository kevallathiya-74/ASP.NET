# ASP.NET Web Forms Practice Project

This repository contains a C# ASP.NET Web Forms project targeting .NET Framework 4.7.2.
It includes chapter-wise exercises and extra practice pages.

## Tech Stack

- ASP.NET Web Forms
- C#
- .NET Framework 4.7.2
- SQL Server (for database-related pages)

## Project Structure

```
.
|-- 230801347.sln
|-- 230801347.csproj
|-- Web.config
|-- packages.config
|-- App_Themes/
|-- Calc_Class_Library/
|-- Ch1/                # Chapter 1 pages
|-- Ch2/                # Chapter 2 pages
|-- Ch3/                # Chapter 3 pages
|-- Ch4/                # Chapter 4 pages
|-- Connected Services/
|-- Extra/
`-- New/
```

## Prerequisites

- Visual Studio 2022 (or Visual Studio 2019)
- .NET Framework 4.7.2 Developer Pack
- NuGet package restore enabled

## Setup and Run

1. Open `230801347.sln` in Visual Studio.
2. Restore NuGet packages:
	- Visual Studio: Right-click solution -> Restore NuGet Packages
	- Or CLI: `nuget restore 230801347.sln`
3. Build the solution.
4. Run with IIS Express (default in project settings).

## Notes

- Generated folders such as `bin/`, `obj/`, `.vs/`, and `packages/` are intentionally excluded from git.
- Keep only source code and configuration files under version control.

## Author

Project maintained by Keval.