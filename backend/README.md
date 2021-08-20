# Standard remote backend

if you use gsutil to create your bucket,  i.e. gsutil mb gs ://unique bucket name

run terraform init, this will move to your new backend.

if you use terraform to create your bucket,run terraform init and if it gives out an error,

just run terraform init -reconfigure to fix it.

