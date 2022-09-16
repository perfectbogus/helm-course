{{ define "nginx" }}
- name: nginxcontainer
  image: "{{ .Values.deployment.image.app }}:{{ .Values.deployment.image.version }}"
  ports:
    - name: http
      containerPort: 80
      protocol: TCP
{{- if eq .Values.proxy.enabled true -}}
{{- include "proxy" . | nindent 8  }}
{{- end -}}
{{ end }}