# HERE OLP CLI 

This repository is a [homebrew tap](https://docs.brew.sh) for the OLP CLI.

## Introduction

The OLP CLI allows you to access platform services from the command
line. As opposed to the HERE platform portal graphic user interface, the OLP CLI offers
a text-based interface and enables developers to implement automated actions
on [Platform services](https://www.here.com/products/platform).

For the terms and conditions covering this documentation, see the
[HERE Documentation License](https://legal.here.com/en-gb/terms/documentation-license).

HERE is committed to respecting your privacy and to complying with
applicable data protection and privacy laws. For more information, see the
[HERE Privacy Policy](https://legal.here.com/en-gb/privacy).

For more information on data security and durability best
practices, see the
[Data API](https://developer.here.com/documentation/data-api/data_dev_guide/rest/data-security.html).

### Why Use the OLP CLI

The OLP CLI allows you to do the following:

-   [Create, retrieve, and manage catalogs and layers](https://developer.here.com/documentation/open-location-platform-cli/user_guide/topics/data-workflows.md).
    In a typical use case, you can create a catalog, add a layer to this catalog,
    and later publish data to that layer.

-   [Create, retrieve, and manage local catalogs and layers](https://developer.here.com/documentation/open-location-platform-cli/user_guide/topics/local-data-workflows.md).
    In a typical use case, you can create a local catalog, add a layer to this catalog,
    or create a local copy of a catalog hosted on the platform.

-   [Manage catalogs' data schemas](https://developer.here.com/documentation/open-location-platform-cli/user_guide/topics/schema-workflows.md).
    In a typical use case, you can [create your own schemas](https://developer.here.com/documentation/archetypes/dev_guide/topics/archetypes-schema.html)
    for data catalogs, which is particularly useful when you want to share your
    data on the Platform.

-   [Publish data to and retrieve data from catalogs](https://developer.here.com/documentation/open-location-platform-cli/user_guide/topics/data-workflows.md#upload-data-to-catalog).
    You can ingest test data from a file to a layer and
    later retrieve that data.

-   [Retrieve and manage permissions of catalogs and schemas](https://developer.here.com/documentation/open-location-platform-cli/user_guide/topics/permission-commands.md).
    You can get a list of catalogs that match some regular
    expression and update permissions on those catalogs.

-   [Create, manage, and run pipelines](https://developer.here.com/documentation/open-location-platform-cli/user_guide/topics/pipeline-workflows.md).
    You can create a catalog that is usable for the
    [Data Processing Library](https://developer.here.com/documentation/data-processing-library/dev_guide/index.html)
    and run a compiler JAR package in a pipeline. Then, you can clean up all the
    previously created objects after execution.

-   [Manage projects, project resources, and project access](https://developer.here.com/documentation/open-location-platform-cli/user_guide/topics/projects-workflows.md).
    You can group your HERE platform resources, including catalogs,
    schemas, and pipelines, in a project to enable access control, eg for different
    stages of production, and cost tracking.

-   [Manage applications](https://developer.here.com/documentation/open-location-platform-cli/user_guide/topics/app/app-commands.md).
    You can manage applications, and your application's access/API keys.

-   [Work with HERE Location Services running on the HERE platform](https://developer.here.com/documentation/open-location-platform-cli/user_guide/topics/service/service-commands.md).
    You can look up location services and view the details
    of a specific service, including its base URL and detailed description.

-   [Create and manage groups](https://developer.here.com/documentation/open-location-platform-cli/user_guide/topics/group-workflows.md).
    You can set up the environment for a new project by
    creating a group, adding an app, and obtaining credentials.

-   [Create and manage third party secrets](https://developer.here.com/documentation/open-location-platform-cli/user_guide/topics/third-party-secrets-commands.md).
    You can manage third party secrets, which enable authorized identities to securely
    upload and manage third-party credentials. For instance, AWS S3 bucket credentials.

-   [Manage your credentials profiles](https://developer.here.com/documentation/open-location-platform-cli/user_guide/topics/configuration.md#profiles).
    You can define multiple profiles to use different
    credentials for different projects.

## Prerequisites

You need to install [Homebrew](https://brew.sh/), a package manager for macOS and Linux.
To install Homebrew, follow the instructions on the official page.


## Installation

To install the latest version of OLP CLI, use the following command:

```
brew install heremaps/olp-cli/olp
```

If you want to update the OLP CLI, run the following command:

```
brew upgrade olp
```

To remove the package, run the following command:

```
brew uninstall olp
```


## Next Steps

- [Set up your credentials](https://developer.here.com/documentation/open-location-platform-cli/user_guide/topics/configuration.html)
- [Introduction to command syntax](https://developer.here.com/documentation/open-location-platform-cli/user_guide/topics/command-syntax.html)
- [Configure HTTP proxy](https://developer.here.com/documentation/open-location-platform-cli/user_guide/topics/http-proxy-configuration.html)


## License

Copyright (C) 2018-2022 HERE Europe B.V.

Unless otherwise noted in LICENSE files for specific files or directories, the LICENSE in the root applies to all content in this repository.

