# Seutuinfo

A modern web application for displaying and interacting with regional information using interactive maps.

## Description

Seutuinfo is a web-based application built with SvelteKit and TypeScript that provides an interactive mapping interface using Leaflet. The application allows users to view and interact with regional geographical data and information.

### Key Features
- Interactive map interface powered by Leaflet
- TypeScript support for enhanced development experience
- Modern frontend architecture using SvelteKit
- Responsive design for various screen sizes
- GeoJSON data integration capabilities

## Installation

### Prerequisites
- Node.js (v18 or higher)
- npm (Node Package Manager)
- Git

### Setup Instructions

1. Clone the repository:
```bash
git clone https://github.com/yourusername/seutuinfo.git
cd seutuinfo
```

2. Install frontend dependencies:
```bash
cd fe
npm install
```

3. Set up development environment:
```bash
# Copy environment variables (if needed)
cp .env.example .env
```

## Usage

### Development Mode

To run the application in development mode:

```bash
cd fe
npm run dev
```

This will start the development server at `http://localhost:5173` (or another available port).

To open the application in your default browser automatically:
```bash
npm run dev -- --open
```

### Building for Production

To create a production build:

```bash
npm run build
```

Preview the production build:
```bash
npm run preview
```

### Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Create production build
- `npm run preview` - Preview production build
- `npm run check` - Run type checking
- `npm run lint` - Run linting
- `npm run format` - Format code using Prettier

## Project Structure

```
fe/
├── src/             # Source files
├── static/          # Static assets
├── package.json     # Project dependencies and scripts
├── svelte.config.js # Svelte configuration
├── tsconfig.json    # TypeScript configuration
└── vite.config.ts   # Vite configuration
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the terms found in the LICENSE file in the root directory.
