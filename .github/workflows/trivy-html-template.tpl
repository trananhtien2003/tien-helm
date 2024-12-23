<html>
<head>
  <title>Trivy Scan Report</title>
  <style>
    body { font-family: Arial, sans-serif; }
    table { width: 100%; border-collapse: collapse; margin-top: 20px; }
    th, td { padding: 8px; text-align: left; border-bottom: 1px solid #ddd; }
  </style>
</head>
<body>
  <h1>Trivy Vulnerability Scan Report</h1>
  <table>
    <thead>
      <tr>
        <th>Vulnerability ID</th>
        <th>Package Name</th>
        <th>Severity</th>
        <th>Installed Version</th>
        <th>Fixed Version</th>
      </tr>
    </thead>
    <tbody>
      {{ range .Vulnerabilities }}
      <tr>
        <td>{{ .VulnerabilityID }}</td>
        <td>{{ .PkgName }}</td>
        <td>{{ .Severity }}</td>
        <td>{{ .InstalledVersion }}</td>
        <td>{{ .FixedVersion }}</td>
      </tr>
      {{ end }}
    </tbody>
  </table>
</body>
</html>
