echo -e "Make sure you have activated the conda environment you wish to install jupyter"
read -p "Set up jupyter without password? y or n?" jupyter
if [ "$jupyter" == "y" ]; then
    echo "Setting up server jupyter notebook without password"
    conda install jupyter
    python jupyter_without_password_setup.py
else
    echo "Skipped setting up jupyter without password"
fi

