
## REST Endpoints

### Get User's Alerts

```
GET /api/alerts
```

**Query Parameters:**
- `status` (optional): Filter by alert status
    - Values: "new" | "acknowledged" | "all"
    - Default: all alerts
- `startDate` (optional): ISO datetime string
- `endDate` (optional): ISO datetime string
    - Note: startDate and endDate must be provided together

**Response:**
```json
[
  {
    "alertId": "string",
    "userId": "string",
    "cattleId": "string",
    "tagId": "string",
    "timestamp": number,
    "type": "temperature" | "pulseRate" | "motion" | "battery",
    "severity": "low" | "medium" | "high",
    "value": number,
    "threshold": {
      "min": number | null,
      "max": number | null
    },
    "status": "new" | "acknowledged",
    "acknowledgedBy": "string | null",
    "acknowledgedAt": "number | null"
  }
]
```

### Get Cattle's Alerts

```
GET /api/alerts/cattle/:cattleId
```

**Parameters:**
- `cattleId`: ID of the cattle to fetch alerts for

**Query Parameters:**
- Same as Get User's Alerts

**Response:**
- Same structure as Get User's Alerts

### Acknowledge Alert

```
PUT /api/alerts/:alertId/acknowledge
```

**Parameters:**
- `alertId`: ID of the alert to acknowledge

**Response:**
```json
{
  "alertId": "string",
  "userId": "string",
  "cattleId": "string",
  "tagId": "string",
  "timestamp": number,
  "type": "temperature" | "pulseRate" | "motion" | "battery",
  "severity": "low" | "medium" | "high",
  "value": number,
  "threshold": {
    "min": number | null,
    "max": number | null
  },
  "status": "acknowledged",
  "acknowledgedBy": "string",
  "acknowledgedAt": number
}
```

## Error Responses

All endpoints may return the following error responses:

```json
{
  "status": "error",
  "code": "ERROR_CODE",
  "message": "Error message"
}
```

Common error codes:
- `UNAUTHORIZED`: Authentication required
- `CATTLE_NOT_FOUND`: Requested cattle not found or not owned by user
- `ALERT_NOT_FOUND`: Alert not found
- `FORBIDDEN`: User doesn't have permission for the operation
- `ALREADY_ACKNOWLEDGED`: Alert is already acknowledged
- `INVALID_OPERATION`: Operation cannot be performed (with details)

## Authentication

All alert endpoints require authentication. Include the authentication token in the request header:

```
Authorization: Bearer <token>
```