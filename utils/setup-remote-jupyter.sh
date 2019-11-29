echo -e "Make sure you have activated the conda environment you wish to install jupyter"
read -p "Set up jupyter without password? y or n?" jupyter
if [ "$jupyter" == "y" ]; then
    echo "Setting up server jupyter notebook without password"
    conda install jupyter
    python jupyter_without_password_setup.py
else
    echo "Skipped setting up jupyter without password"
fi

echo -e "Make sure you have activated the conda environment you wish to install jupyter"
read -p "Install jupyter notebook extenstions? y or n?" ext
if [ "$ext" == "y" ]; then
    echo "Installing jupyter notebook extensions"
    conda install -c conda-forge jupyter_contrib_nbextensions
else
    echo "Skipped installing jupyter notebook extensions"

echo -e "Success"
