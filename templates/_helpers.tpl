{{- define "annotator.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "webserver.image" -}}
{{- printf "%s:%s" .Values.webserver.image .Values.webserver.tag -}}
{{- end -}}

{{- define "worker.image" -}}
{{- printf "%s:%s" .Values.worker.image .Values.worker.tag -}}
{{- end -}}

{{- define "mongodb.url" -}}
{{ printf "mongodb://%s:%s@coco-annotator-mongodb/%s" .Values.mongodb.mongodbUsername .Values.mongodb.mongodbPassword  .Values.mongodb.mongodbDatabase -}}
{{- end -}}

{{- define "broker.url" -}}
{{ printf "amqp://%s:%s@coco-annotator-rabbitmq:5672//" .Values.rabbitmq.rabbitmq.username .Values.rabbitmq.rabbitmq.password -}}
{{- end -}}
