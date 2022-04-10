# album-example
## What
I took the [gin tutorial](https://go.dev/doc/tutorial/web-service-gin), learned how to write Go with it,
and then I dockerized it, made a deployment file, and made a helm chart.

## Why??
🤷

## Building
`docker build -t catfacts/album-example .`

## Tossing it into minikube
`minikube image load catfacts/album-example`

## Deploying via kubectl
`kubectl apply -f deployment.yaml`

I'm using minikube, so I then run `kubectl port-forward svc/album-service :80` and fire up CURLs to the resulting IP.

## Deploying via helm
`helm install album-example helm/ --values helm/values.yaml`

I'm using minikube, so I then run `kubectl port-forward svc/album-example-app :80` and fire up CURLs to the resulting IP.