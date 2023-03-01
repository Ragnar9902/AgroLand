# Agroland
# Overview
"Work the ground you want, while growing your dreams." Agroland seeks to solve the difficulty of cultivation for people who do not have fertile land for the product, facilitating the reservation of temporary rent to carry out the cultivation. This project aims to increase access to land for farmers, reduce production costs, and improve their competitiveness in the market.

# Problem Statement
In Colombia, farmers face numerous challenges due to a lack of fertile land, difficulty accessing markets, and high production costs. Agroland aims to solve these problems by providing a platform where farmers can rent land for cultivation, thus reducing their production costs and increasing their competitiveness in the market.

# Architecture
# Infrastructure
Agroland will use the feature branching strategy, which is ideal for short projects that require adjustments along the way. The merging strategy that will be used will be the minimal continuous integration implemented with Docker and Jenkins, which will ensure the operability of the various characteristics of the prototype.

# Development
Once the requirements and architecture of the app are ready, the development will proceed by implementing and testing each feature of the app. Docker and Jenkins will be used to start up the server and carry out tests. The unit tests of each functionality of the app code will be carried out with the Jest tool, which is one of the Node.js unit-test frameworks easiest to start to use and one of the best documented.

# Data Sources
The data for development and tests were taken from the most recent cadastral registry of the IGAC and the registry of people of the Dane. This data is representative of the region and will enable us to test the app's behavior with large volumes of real data.

# Conclusion
By providing farmers with access to rented land, Agroland aims to reduce production costs and increase competitiveness. With the use of modern development strategies and real data, we are confident that Agroland will be successful in achieving its aims.


# Installation
Before you begin, make sure you have the following software installed on your machine:

- Node.js
- MongoDB
- Git
To install and run the project, follow these steps:

Clone the repository:
   git clone https://github.com/username/AgroLand.git

Change into the project directory:
   cd project

Install the project's dependencies:
   npm install

Start the development server:
   npm run dev
This will start the server at http://localhost:3000.

Open the project in your browser by navigating to http://localhost:3000.

Note: If you encounter any issues during installation or running the project, refer to the project's documentation or seek help from the community.

# Files

- `.github/workflows`: This directory contains the workflows for GitHub Actions, which automate the testing and deployment of the project.

- `models`: This directory contains the models used in the project. The Jesus models were last updated 3 weeks ago with 17 commits.

- `node_modules`: This directory contains the dependencies required by the project, specifically the models. The models were last updated 3 weeks ago.

- `web_dynamic`: This directory contains the dynamic web files for the project. Changes were made to this directory 3 weeks ago.

- `web_static/images`: This directory contains the static images for the project. The first commit was made 3 weeks ago.

- `Dockerfile`: This file contains the Docker configuration for the project, specifically for running the server and carrying out tests.

- `Makefile`: This file contains the commands used to build and run the project.

- `README.md`: This file contains the project overview, architecture, and data sources.

- `package-lock.json`: This file contains the lockfile for the project's dependencies, ensuring consistency across different installations.

- `package.json`: This file contains the metadata for the project, including its dependencies and scripts. The models were last updated 3 weeks ago.
