{{/*
Expand the name of the chart.
*/}}
{{- define "cekit-builder.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "cekit-builder.labels" -}}
app: {{ include "cekit-builder.name" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}