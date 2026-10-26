from setuptools import setup, find_packages

setup(
    name='apiverve_worldwideearthquakes',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Worldwide Earthquakes tracks global seismic activity recorded over the past hour. It delivers magnitudes, epicenter coordinates, location names, tsunami warning flags, and 24-hour activity summaries sourced from the USGS.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/earthquake?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
