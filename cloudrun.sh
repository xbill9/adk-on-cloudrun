echo "Deploying ADK code to Cloud Run "


adk deploy cloud_run \
    --project=$PROJECT_ID \
    --region=europe-west1 \
  --service_name=zoo-tour-guide \
  --with_ui \
 zoo_guide_agent 

gcloud run services update zoo-tour-guide \
  --region=europe-west1 \
  --update-labels=dev-tutorial=codelab-gde-medium-adk
