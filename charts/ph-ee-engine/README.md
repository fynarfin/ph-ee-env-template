# ph-ee-engine

![Version: 1.0.22](https://img.shields.io/badge/Version-1.0.22-informational?style=flat-square)

PaymentHub EE Engine

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Innocent | <innocent.lou@oneacrefund.org> |  |

## TL;DR;

This chart will install Paymenthub

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| http://helm.elastic.co | elasticsearch | 7.16.3 |
| http://helm.elastic.co | kibana | 7.16.3 |
| https://charts.bitnami.com/bitnami | operationsmysql(mysql) | 8.8.23 |
| https://helm.camunda.io | zeebe-cluster-helm | 1.0.0 |
| https://helm.camunda.io | zeebe-operate-helm | 1.0.0 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| channel.DFSPIDS | string | `""` |  |
| channel.LOGGING_LEVEL_ROOT | string | `"INFO"` |  |
| channel.SPRING_PROFILES_ACTIVE | string | `""` |  |
| channel.TRANSACTION_ID_LENGTH | int | `20` |  |
| channel.deployment.annotations | object | `{}` |  |
| channel.enabled | bool | `true` |  |
| channel.hostname | string | `""` |  |
| channel.image | string | `"oaftech.azurecr.io/phee-ns/ph-ee-connector-channel:e40b8b7834"` |  |
| channel.imagePullPolicy | string | `"Always"` |  |
| channel.ingress.enabled | bool | `false` |  |
| channel.limits.cpu | string | `"500m"` |  |
| channel.limits.memory | string | `"768M"` |  |
| channel.replicas | int | `1` |  |
| channel.requests.annotations | object | `{}` |  |
| channel.requests.backend | object | `{}` |  |
| channel.requests.cpu | string | `"200m"` |  |
| channel.requests.memory | string | `"768M"` |  |
| channel.requests.path | string | `"/channel"` |  |
| configmap.apiversion | string | `"v1"` |  |
| deployment.apiversion | string | `"apps/v1"` |  |
| elasticsearch.clusterName | string | `"ph-ee-elasticsearch"` |  |
| elasticsearch.enabled | bool | `true` |  |
| elasticsearch.fullnameOverride | string | `"ph-ee-elasticsearch"` |  |
| elasticsearch.imageTag | string | `"7.16.3"` |  |
| elasticsearch.minimumMasterNodes | int | `1` |  |
| elasticsearch.replicas | int | `1` |  |
| identity.hostname | string | `""` |  |
| importer_es.image | string | `""` |  |
| importer_es.imagePullPolicy | string | `"Always"` |  |
| importer_es.ingress.enabled | bool | `false` |  |
| importer_es.limits.cpu | string | `"500m"` |  |
| importer_es.limits.memory | string | `"512M"` |  |
| importer_es.replicas | int | `1` |  |
| importer_es.requests.cpu | string | `"200m"` |  |
| importer_es.requests.memory | string | `"512M"` |  |
| importer_rdbms.LOGGING_LEVEL_ROOT | string | `"INFO"` |  |
| importer_rdbms.datasource.host | string | `""` |  |
| importer_rdbms.datasource.password | string | `""` |  |
| importer_rdbms.datasource.port | int | `3306` |  |
| importer_rdbms.datasource.schema | string | `""` |  |
| importer_rdbms.datasource.username | string | `""` |  |
| importer_rdbms.deployment.annotations | object | `{}` |  |
| importer_rdbms.enabled | bool | `true` |  |
| importer_rdbms.image | string | `""` |  |
| importer_rdbms.imagePullPolicy | string | `"Always"` |  |
| importer_rdbms.limits.cpu | string | `"500m"` |  |
| importer_rdbms.limits.memory | string | `"512M"` |  |
| importer_rdbms.replicas | int | `1` |  |
| importer_rdbms.requests.cpu | string | `"200m"` |  |
| importer_rdbms.requests.memory | string | `"512M"` |  |
| ingress.apiversion | string | `"networking.k8s.io/v1"` |  |
| kafka.advertised.host | string | `""` |  |
| kafka.advertised.port | string | `""` |  |
| kafka.deployment.annotations | object | `{}` |  |
| kafka.enabled | bool | `true` |  |
| kafka.image | string | `""` |  |
| kafka.imagePullPolicy | string | `"Always"` |  |
| kafka.limits.cpu | string | `"500m"` |  |
| kafka.limits.memory | string | `"512M"` |  |
| kafka.replicas | int | `1` |  |
| kafka.requests.cpu | string | `"200m"` |  |
| kafka.requests.memory | string | `"512M"` |  |
| kibana.elasticsearchHosts | string | `"http://ph-ee-elasticsearch:9200/"` |  |
| kibana.enabled | bool | `true` |  |
| kibana.fullnameOverride | string | `"ph-ee-kibana"` |  |
| kibana.imageTag | string | `"7.16.3"` |  |
| messagegateway.CALLBACKCONFIG_HOST | string | `"ph-ee-connector-notifications"` |  |
| messagegateway.DATASOURCE_URL | string | `""` |  |
| messagegateway.HOSTCONFIG_HOST | string | `""` |  |
| messagegateway.LOGGING_LEVEL_ROOT | string | `"INFO"` |  |
| messagegateway.MYSQL_PASSWORD | string | `"password"` |  |
| messagegateway.MYSQL_USERNAME | string | `"mifos"` |  |
| messagegateway.PROVIDERSOURCE_FROMDATABASE | string | `""` |  |
| messagegateway.PROVIDERSOURCE_FROMYML | string | `""` |  |
| messagegateway.deployment.annotations | object | `{}` |  |
| messagegateway.enabled | bool | `true` |  |
| messagegateway.hostname | string | `""` |  |
| messagegateway.image | string | `"oaftech.azurecr.io/phee-ns/message-gateway:34d94ccc09"` |  |
| messagegateway.imagePullPolicy | string | `"Always"` |  |
| messagegateway.ingress.enabled | bool | `false` |  |
| messagegateway.limits.cpu | string | `"500m"` |  |
| messagegateway.limits.memory | string | `"512M"` |  |
| messagegateway.replicas | int | `1` |  |
| messagegateway.requests.annotations | object | `{}` |  |
| messagegateway.requests.backend | object | `{}` |  |
| messagegateway.requests.cpu | string | `"200m"` |  |
| messagegateway.requests.memory | string | `"512M"` |  |
| messagegateway.requests.path | string | `"/messages"` |  |
| messagegateway.secret.key.telerivet_api_key | string | `""` |  |
| messagegateway.secret.name | string | `""` |  |
| mpesa.LOGGING_LEVEL_ROOT | string | `"INFO"` |  |
| mpesa.SPRING_PROFILES_ACTIVE | string | `""` |  |
| mpesa.business_short_code | string | `""` |  |
| mpesa.callback_host | string | `""` |  |
| mpesa.deployment.annotations | object | `{}` |  |
| mpesa.enabled | bool | `true` |  |
| mpesa.hostname | string | `""` |  |
| mpesa.image | string | `"oaftech.azurecr.io/phee-ns/ph-ee-connector-mpesa:v1.0.1"` |  |
| mpesa.imagePullPolicy | string | `"Always"` |  |
| mpesa.ingress.enabled | bool | `false` |  |
| mpesa.limits.cpu | string | `"500m"` |  |
| mpesa.limits.memory | string | `"512M"` |  |
| mpesa.replicas | int | `1` |  |
| mpesa.requests.annotations | object | `{}` |  |
| mpesa.requests.backend | object | `{}` |  |
| mpesa.requests.cpu | string | `"200m"` |  |
| mpesa.requests.memory | string | `"512M"` |  |
| mpesa.requests.path | string | `"/mpesa"` |  |
| mpesa.retry_count | int | `1` |  |
| mpesa.safaricom.api_host | string | `""` |  |
| mpesa.safaricom.auth_host | string | `""` |  |
| mpesa.secret.key.auth_client_key | string | `""` |  |
| mpesa.secret.name | string | `""` |  |
| mpesa.tenant | string | `""` |  |
| mpesa.till_number | string | `""` |  |
| mpesa.zeebe_broker_contactpoint | string | `""` |  |
| notifications.LOGGING_LEVEL_ROOT | string | `"INFO"` |  |
| notifications.MESSAGEGATEWAYCONFIG_HOST | string | `""` |  |
| notifications.NOTIFICATION_FAILURE_ENABLED | bool | `false` |  |
| notifications.NOTIFICATION_LOCAL_HOST | string | `""` |  |
| notifications.NOTIFICATION_SUCCESS_ENABLED | bool | `false` |  |
| notifications.SPRING_PROFILES_ACTIVE | string | `""` |  |
| notifications.deployment.annotations | object | `{}` |  |
| notifications.enabled | bool | `true` |  |
| notifications.hostconfig.host | string | `""` |  |
| notifications.hostconfig.port | string | `""` |  |
| notifications.hostname | string | `""` |  |
| notifications.image | string | `"oaftech.azurecr.io/phee-ns/ph-ee-notifications:v1.0.1"` |  |
| notifications.imagePullPolicy | string | `"Always"` |  |
| notifications.ingress.enabled | bool | `false` |  |
| notifications.limits.cpu | string | `"500m"` |  |
| notifications.limits.memory | string | `"512M"` |  |
| notifications.replicas | int | `1` |  |
| notifications.requests.annotations | object | `{}` |  |
| notifications.requests.backend | object | `{}` |  |
| notifications.requests.cpu | string | `"200m"` |  |
| notifications.requests.memory | string | `"512M"` |  |
| notifications.requests.path | string | `"/notifications"` |  |
| notifications.zeebe_broker_contactpoint | string | `""` |  |
| operations.enabled | bool | `false` |  |
| operations_app.LOGGING_LEVEL_ROOT | string | `"INFO"` |  |
| operations_app.SPRING_PROFILES_ACTIVE | string | `""` |  |
| operations_app.datasource.host | string | `""` |  |
| operations_app.datasource.password | string | `""` |  |
| operations_app.datasource.port | int | `3306` |  |
| operations_app.datasource.schema | string | `""` |  |
| operations_app.datasource.username | string | `""` |  |
| operations_app.deployment.annotations | object | `{}` |  |
| operations_app.enabled | bool | `true` |  |
| operations_app.hostname | string | `""` |  |
| operations_app.image | string | `""` |  |
| operations_app.imagePullPolicy | string | `"Always"` |  |
| operations_app.ingress.enabled | bool | `false` |  |
| operations_app.limits.cpu | string | `"500m"` |  |
| operations_app.limits.memory | string | `"512M"` |  |
| operations_app.replicas | int | `1` |  |
| operations_app.requests.annotations | object | `{}` |  |
| operations_app.requests.backend | object | `{}` |  |
| operations_app.requests.cpu | string | `"200m"` |  |
| operations_app.requests.memory | string | `"512M"` |  |
| operations_app.requests.path | string | `"/opsapp"` |  |
| operations_app.tenants | string | `""` |  |
| operations_app.token_client_channel_secret | string | `""` |  |
| operations_web.deployment.annotations | object | `{}` |  |
| operations_web.enabled | bool | `true` |  |
| operations_web.hostname | string | `""` |  |
| operations_web.image | string | `""` |  |
| operations_web.imagePullPolicy | string | `"Always"` |  |
| operations_web.ingress.enabled | bool | `false` |  |
| operations_web.limits.cpu | string | `"500m"` |  |
| operations_web.limits.memory | string | `"512M"` |  |
| operations_web.replicas | int | `1` |  |
| operations_web.requests.annotations | object | `{}` |  |
| operations_web.requests.backend | object | `{}` |  |
| operations_web.requests.cpu | string | `"200m"` |  |
| operations_web.requests.memory | string | `"512M"` |  |
| operations_web.requests.path | string | `"/"` |  |
| operations_web.webhost | string | `""` |  |
| operationsmysql.auth.database | string | `""` |  |
| operationsmysql.auth.password | string | `""` |  |
| operationsmysql.auth.rootPassword | string | `""` |  |
| operationsmysql.auth.username | string | `""` |  |
| operationsmysql.fullnameOverride | string | `"operationsmysql"` |  |
| operationsmysql.image.debug | bool | `false` |  |
| operationsmysql.image.tag | string | `"5.7"` |  |
| operationsmysql.ingress.enabled | bool | `false` |  |
| ph_ee_connector_ams_mifos.SPRING_PROFILES_ACTIVE | string | `""` |  |
| ph_ee_connector_ams_mifos.deployment.annotations | object | `{}` |  |
| ph_ee_connector_ams_mifos.enabled | bool | `true` |  |
| ph_ee_connector_ams_mifos.image | string | `""` |  |
| ph_ee_connector_ams_mifos.imagePullPolicy | string | `"Always"` |  |
| ph_ee_connector_ams_mifos.ingress.enabled | bool | `false` |  |
| ph_ee_connector_ams_mifos.limits.cpu | string | `"500m"` |  |
| ph_ee_connector_ams_mifos.limits.memory | string | `"512M"` |  |
| ph_ee_connector_ams_mifos.replicas | int | `1` |  |
| ph_ee_connector_ams_mifos.requests.cpu | string | `"200m"` |  |
| ph_ee_connector_ams_mifos.requests.memory | string | `"512M"` |  |
| roster_connector.SPRING_PROFILES_ACTIVE | string | `""` |  |
| roster_connector.ams.local.enabled | string | `""` |  |
| roster_connector.containerPort | int | `5000` |  |
| roster_connector.deployment.annotations | object | `{}` |  |
| roster_connector.enabled | bool | `true` |  |
| roster_connector.image | string | `"oaftech.azurecr.io/phee-ns/ph-ee-connector-ams-pesa:v1.0.0"` |  |
| roster_connector.imagePullPolicy | string | `"Always"` |  |
| roster_connector.ingress.enabled | bool | `false` |  |
| roster_connector.limits.cpu | string | `"500m"` |  |
| roster_connector.limits.memory | string | `"512M"` |  |
| roster_connector.pesacore.auth_header | string | `""` |  |
| roster_connector.replicas | int | `1` |  |
| roster_connector.requests.cpu | string | `"200m"` |  |
| roster_connector.requests.memory | string | `"512M"` |  |
| secret.apiversion | string | `"v1"` |  |
| service.apiversion | string | `"v1"` |  |
| tls | string | `""` |  |
| wildcardhostname | string | `""` |  |
| zeebe-cluster-helm.clusterSize | string | `"1"` |  |
| zeebe-cluster-helm.cpuThreadCount | string | `"2"` |  |
| zeebe-cluster-helm.elasticsearch.clusterName | string | `"zeebe-elasticsearch"` |  |
| zeebe-cluster-helm.elasticsearch.enabled | bool | `false` |  |
| zeebe-cluster-helm.elasticsearch.fullnameOverride | string | `"zeebe-elasticsearch"` |  |
| zeebe-cluster-helm.env[0].name | string | `"ZEEBE_BROKER_EXECUTION_METRICS_EXPORTER_ENABLED"` |  |
| zeebe-cluster-helm.env[0].value | string | `"true"` |  |
| zeebe-cluster-helm.env[1].name | string | `"ZEEBE_BROKER_EXPORTERS_ELASTICSEARCH_JARPATH"` |  |
| zeebe-cluster-helm.env[1].value | string | `"/exporters/ph-ee-kafka-exporter.jar"` |  |
| zeebe-cluster-helm.env[2].name | string | `"ZEEBE_BROKER_EXPORTERS_KAFKA_JARPATH"` |  |
| zeebe-cluster-helm.env[2].value | string | `"/exporters/ph-ee-kafka-exporter.jar"` |  |
| zeebe-cluster-helm.env[3].name | string | `"ZEEBE_BROKER_EXPORTERS_KAFKA_CLASSNAME"` |  |
| zeebe-cluster-helm.env[3].value | string | `"hu.dpc.rt.kafkastreamer.exporter.KafkaExporter"` |  |
| zeebe-cluster-helm.env[4].name | string | `"ZEEBE_BROKER_BACKPRESSURE_VEGAS_INITIALLIMIT"` |  |
| zeebe-cluster-helm.env[4].value | string | `"1000"` |  |
| zeebe-cluster-helm.env[5].name | string | `"ZEEBE_BROKER_BACKPRESSURE_VEGAS_ALPHA"` |  |
| zeebe-cluster-helm.env[5].value | string | `"2"` |  |
| zeebe-cluster-helm.env[6].name | string | `"ZEEBE_BROKER_BACKPRESSURE_VEGAS_BETA"` |  |
| zeebe-cluster-helm.env[6].value | string | `"8"` |  |
| zeebe-cluster-helm.extraInitContainers | string | `"- name: init-ph-ee-kafka-exporter\n  image: busybox:1.28\n  command: ['/bin/sh', '-c']\n  args: ['wget -O /exporters/ph-ee-kafka-exporter.jar \"https://paymenthub-ee-dev.s3.us-east-2.amazonaws.com/jars/exporter-1.0.0-SNAPSHOT.jar\"; ls -al /exporters/']\n  volumeMounts:\n  - name: exporters\n    mountPath: /exporters/\n"` |  |
| zeebe-cluster-helm.gateway.env[0].name | string | `"ZEEBE_GATEWAY_THREADS_MANAGEMENTTHREADS"` |  |
| zeebe-cluster-helm.gateway.env[0].value | string | `"4"` |  |
| zeebe-cluster-helm.gateway.env[1].name | string | `"ZEEBE_GATEWAY_MONITORING_ENABLED"` |  |
| zeebe-cluster-helm.gateway.env[1].value | string | `"true"` |  |
| zeebe-cluster-helm.gateway.logLevel | string | `"warn"` |  |
| zeebe-cluster-helm.gateway.replicas | int | `1` |  |
| zeebe-cluster-helm.global.elasticsearch.host | string | `"zeebe-elasticsearch"` |  |
| zeebe-cluster-helm.global.zeebe | string | `"zeebe-zeebe"` |  |
| zeebe-cluster-helm.image.repository | string | `"camunda/zeebe"` |  |
| zeebe-cluster-helm.image.tag | string | `"1.1.0"` |  |
| zeebe-cluster-helm.ioThreadCount | string | `"2"` |  |
| zeebe-cluster-helm.kibana.elasticsearchHosts | string | `"http://zeebe-elasticsearch:9200/"` |  |
| zeebe-cluster-helm.kibana.enabled | bool | `false` |  |
| zeebe-cluster-helm.kibana.fullnameOverride | string | `"zeebee-kibana"` |  |
| zeebe-cluster-helm.partitionCount | string | `"1"` |  |
| zeebe-cluster-helm.prometheus.enabled | bool | `false` |  |
| zeebe-cluster-helm.pvcAccessModes[0] | string | `"ReadWriteOnce"` |  |
| zeebe-cluster-helm.pvcSize | string | `"10Gi"` |  |
| zeebe-cluster-helm.replicationFactor | string | `"1"` |  |
| zeebe-cluster-helm.resources.requests.cpu | string | `"100m"` |  |
| zeebe-operate-helm.enabled | bool | `false` |  |
| zeebe-operate-helm.fullnameOverride | string | `"zeebe-operate"` |  |
| zeebe-operate-helm.global.elasticsearch.clusterName | string | `"zeebe-elasticsearch"` |  |
| zeebe-operate-helm.global.elasticsearch.host | string | `"zeebe-elasticsearch"` |  |
| zeebe-operate-helm.global.zeebe | string | `"zeebe-zeebe"` |  |
| zeebe-operate-helm.image.repository | string | `"camunda/operate"` |  |
| zeebe-operate-helm.image.tag | string | `"1.1.0"` |  |
| zeebe_ops.LOGGING_LEVEL_ROOT | string | `"INFO"` |  |
| zeebe_ops.SPRING_PROFILES_ACTIVE | string | `""` |  |
| zeebe_ops.deployment.annotations | object | `{}` |  |
| zeebe_ops.enabled | bool | `true` |  |
| zeebe_ops.hostname | string | `""` |  |
| zeebe_ops.image | string | `""` |  |
| zeebe_ops.imagePullPolicy | string | `"Always"` |  |
| zeebe_ops.ingress.enabled | bool | `false` |  |
| zeebe_ops.limits.cpu | string | `"500m"` |  |
| zeebe_ops.limits.memory | string | `"512M"` |  |
| zeebe_ops.replicas | int | `1` |  |
| zeebe_ops.requests.annotations | object | `{}` |  |
| zeebe_ops.requests.backend | object | `{}` |  |
| zeebe_ops.requests.cpu | string | `"200m"` |  |
| zeebe_ops.requests.memory | string | `"512M"` |  |
| zeebe_ops.requests.path | string | `"/zeebeops"` |  |
| zeebe_ops.tenants | string | `""` |  |
| zeebe_ops.zeebe_broker_contactpoint | string | `""` |  |
