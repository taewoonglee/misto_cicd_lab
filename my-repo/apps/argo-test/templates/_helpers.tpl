{{- define "argo-test.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "argo-test.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "argo-test.labels" -}}
app.kubernetes.io/name: {{ include "argo-test.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "argo-test.selectorLabels" -}}
app.kubernetes.io/name: {{ include "argo-test.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}