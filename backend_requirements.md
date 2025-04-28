# Cattle Health Monitoring System - Backend Requirements

## Overview
Backend system to support a Flutter-based cattle health monitoring application using IoT collar devices.

## Current App Features to Support

### 1. Authentication System
- User registration
- Login functionality
- Password reset capability
- Session management
- Role-based access (farmers, veterinarians, administrators)

### 2. Cattle Management
- CRUD operations for cattle records
- Fields required:
  - Cattle ID
  - Basic info (age, breed, gender)
  - Health history
  - Associated collar device
  - Notes/observations
  - Metrics history

### 3. Collar Device Management
- Device registration and association
- Real-time status monitoring
- Battery level tracking
- Location tracking
- Health metrics collection
- Firmware version management

### 4. Alert System
- Health anomaly detection
- Device status alerts (battery, connectivity)
- Custom threshold alerts
- Alert history
- Notification dispatch system

### 5. Dashboard Data
- Real-time health metrics
- Activity summaries
- Recent alerts
- Device status overview
- Historical data visualization

## Proposed Backend Architecture

### Technology Stack

1. **IoT Communication Layer**
```
[IoT Collar Devices] → [MQTT Broker] → [Message Processor]
```
- MQTT Protocol
- AWS IoT Core or Eclipse Mosquitto
- Real-time data streaming

2. **Application Layer**
```typescript
// Node.js + TypeScript + Express.js
// Core services structure
services/
├── auth/          // Authentication & authorization
├── cattle/        // Cattle management
├── devices/       // IoT device management
├── telemetry/     // Sensor data processing
├── alerts/        // Alert management
└── analytics/     // Data analysis
```

3. **Database Layer**
- PostgreSQL: Primary database
  - User management
  - Cattle records
  - Device management
  - Alerts
- TimescaleDB: Time series data
  - Sensor readings
  - Health metrics
  - Location data
- Redis: Caching & real-time data
  - Session management
  - Device status
  - Real-time metrics

### Key Data Models

1. **User Management**
```typescript
interface User {
  id: string;
  email: string;
  passwordHash: string;
  role: UserRole;
  farmId?: string;
  createdAt: Date;
  lastLogin: Date;
}
```

2. **Cattle Records**
```typescript
interface Cattle {
  id: string;
  farmId: string;
  tagNumber: string;
  breed: string;
  dateOfBirth: Date;
  gender: Gender;
  weight: number;
  status: CattleStatus;
  collarDeviceId?: string;
  notes: Note[];
  createdAt: Date;
  updatedAt: Date;
}

interface Note {
  id: string;
  cattleId: string;
  type: NoteType;
  content: string;
  createdBy: string;
  timestamp: Date;
}
```

3. **Device Management**
```typescript
interface CollarDevice {
  id: string;
  cattleId?: string;
  status: DeviceStatus;
  batteryLevel: number;
  firmware: string;
  lastSeen: Date;
  configuration: DeviceConfig;
}

interface DeviceConfig {
  samplingRate: number;
  reportingInterval: number;
  alertThresholds: {
    temperature: Range;
    activity: Range;
    // Other thresholds
  };
}
```

4. **Sensor Data**
```typescript
interface SensorReading {
  deviceId: string;
  timestamp: Date;
  temperature: number;
  activity: number;
  location: {
    lat: number;
    lng: number;
  };
  batteryLevel: number;
  signalStrength: number;
}
```

5. **Alert System**
```typescript
interface Alert {
  id: string;
  cattleId: string;
  deviceId: string;
  type: AlertType;
  severity: AlertSeverity;
  message: string;
  timestamp: Date;
  status: AlertStatus;
  acknowledgedBy?: string;
  acknowledgedAt?: Date;
}
```

### API Endpoints Structure

1. **Authentication**
```
POST   /api/auth/register
POST   /api/auth/login
POST   /api/auth/forgot-password
POST   /api/auth/reset-password
POST   /api/auth/refresh-token
```

2. **Cattle Management**
```
GET    /api/cattle
POST   /api/cattle
GET    /api/cattle/:id
PUT    /api/cattle/:id
DELETE /api/cattle/:id
POST   /api/cattle/:id/notes
GET    /api/cattle/:id/metrics
```

3. **Device Management**
```
GET    /api/devices
POST   /api/devices
GET    /api/devices/:id
PUT    /api/devices/:id
DELETE /api/devices/:id
POST   /api/devices/:id/configure
GET    /api/devices/:id/status
```

4. **Alerts**
```
GET    /api/alerts
GET    /api/alerts/:id
PUT    /api/alerts/:id/acknowledge
GET    /api/alerts/cattle/:cattleId
POST   /api/alerts/configure
```

5. **Metrics & Analytics**
```
GET    /api/metrics/cattle/:id
GET    /api/metrics/farm/:id
GET    /api/analytics/health
GET    /api/analytics/activity
```

### Real-time Features
- WebSocket connections for:
  - Live device status updates
  - Real-time metrics
  - Instant alerts
  - Location tracking

### Security Requirements
1. JWT-based authentication
2. Role-based access control
3. API rate limiting
4. Data encryption
5. Secure device communication
6. Audit logging

### Scalability Considerations
1. Microservices architecture potential
2. Message queue for device data
3. Horizontal scaling capability
4. Data archival strategy
5. Cache optimization

### Monitoring Requirements
1. Device health monitoring
2. System performance metrics
3. Error tracking
4. API usage statistics
5. Alert monitoring
