export PATH=/app/vendor/google-cloud-sdk/bin:$PATH

gcloud auth activate-service-account --key-file /app/google-credentials.json
gcloud config set project $GCP_PROJECT
gcloud config set compute/zone $GCP_ZONE
gcloud container clusters get-credentials $CLUSTER_NAME