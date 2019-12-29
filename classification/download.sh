#!/bin/bash
DOWNLOAD_LINK="https://storage.googleapis.com/kaggle-data-sets/40205/63131/bundle/archive.zip?GoogleAccessId=web-data@kaggle-161607.iam.gserviceaccount.com&Expires=1577774585&Signature=Qe6kmPJJmKGDcSRkueP%2F1fFAOpch18bhcn9v6I2evHkJcvk2RInp%2BYEL6YG4N3s8ze3o7WeSbPXlYydEIILPI6VWs6X5RxOR0lAZir%2FGFajtEjV6BlhE%2FkNBNQ4qwewHXt4Ve9HVpIRDfjutv0Xe59N1VJJneSNHCXroEhs0c%2BstLqWFlBayU6zaLniVEdYiSFqqSdKooPI3qcSzGQ4UQBwDiWMY2gC5r4tp%2BHnf3qQ6k%2Ft2qqfLJf%2FZcWAg8%2Fhl33Ndtq5k80c53EkjROcK%2FbOsUjyr5pEDAKukDnN2op9LNpciVs3IRy9PqSxcaTggR5cay%2Fzyhc4Q2akeIxCslQ%3D%3D&response-content-disposition=attachment%3B+filename%3Dpokemon-generation-one.zip"

DATASET_SOURCE="https://www.kaggle.com/thedagger/pokemon-generation-one"

DATASET_ZIP="dataset.zip"

{
	{
		unzip $DATASET_ZIP
	} || {
		wget $DOWNLOAD_LINK && mv archive.zip?GoogleAccessId* $DATASET_ZIP && unzip $DATASET_ZIP
}
} || {
	echo "Please download dataset from \`$DATASET_SOURCE\` and rename into \`$DATASET_ZIP\`"
}

rm -rf dataset/dataset
mkdir 'dataprep'
mkdir 'dataprep/train'
mkdir 'dataprep/test'
