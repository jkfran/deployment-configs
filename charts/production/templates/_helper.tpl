{{- /* The following code overwrite production specific configurations into .FinalValues */}}
{{- define "values-overwrite" }}
    {{- /* The $_ is used to suppress undesired output */}}
    {{- $_ := omit .Values "production" }}
    {{- $_ := set . "FinalValues" $_ }}
    {{- $_ := mergeOverwrite .FinalValues .Values.production }}
{{- end }}
