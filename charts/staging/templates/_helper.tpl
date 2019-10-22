{{- /* The following code overwrite staging specific configurations into .FinalValues */}}
{{- define "values-overwrite" }}
    {{- /* The $_ is used to suppress undesired output */}}
    {{- $_ := omit .Values "staging" }}
    {{- $_ := set . "FinalValues" $_ }}
    {{- $_ := mergeOverwrite .FinalValues .Values.staging }}
{{- end }}
