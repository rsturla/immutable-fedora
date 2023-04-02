ostreecontainer --url="ghcr.io/${IMAGE_OWNER}/${IMAGE_NAME}:${IMAGE_TAG}" --no-signature-verification

%post --logfile=/root/ks-post.log --erroronfail
%end
