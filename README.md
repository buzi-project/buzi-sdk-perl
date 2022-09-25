# NAME

Buzi::V1::Role - a Moose role for the Swagger Petstore - OpenAPI 3.0

This is a sample Pet Store Server based on the OpenAPI 3.0 specification.  You can find out more about
Swagger at [https://swagger.io](https://swagger.io). In the third iteration of the pet store, we've switched to the design first approach!
You can now help us improve the API whether it's by making changes to the definition itself or to the code.
That way, with time, we can improve the API in general, and expose some of the new features in OAS3.

_If you're looking for the Swagger 2.0/OAS 2.0 version of Petstore, then click [here](https://editor.swagger.io/?url=https://petstore.swagger.io/v2/swagger.yaml). Alternatively, you can load via the `Edit > Load Petstore OAS 2.0` menu option!_

Some useful links:
- [The Pet Store repository](https://github.com/swagger-api/swagger-petstore)
- [The source API definition for the Pet Store](https://github.com/swagger-api/swagger-petstore/blob/master/src/main/resources/openapi.yaml)

# VERSION

Automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 0.202209251248.0
- Build package: org.openapitools.codegen.languages.PerlClientCodegen

## A note on Moose

This role is the only component of the library that uses Moose. See
Buzi::V1::ApiFactory for non-Moosey usage.

# SYNOPSIS

The Perl Generator in the OpenAPI Generator project builds a library of Perl modules to interact with
a web service defined by a OpenAPI Specification. See below for how to build the
library.

This module provides an interface to the generated library. All the classes,
objects, and methods (well, not quite \*all\*, see below) are flattened into this
role.

        package MyApp;
        use Moose;
        with 'Buzi::V1::Role';

        package main;

        my $api = MyApp->new({ tokens => $tokens });

        my $pet = $api->get_pet_by_id(pet_id => $pet_id);


## Structure of the library

The library consists of a set of API classes, one for each endpoint. These APIs
implement the method calls available on each endpoint.

Additionally, there is a set of "object" classes, which represent the objects
returned by and sent to the methods on the endpoints.

An API factory class is provided, which builds instances of each endpoint API.

This Moose role flattens all the methods from the endpoint APIs onto the consuming
class. It also provides methods to retrieve the endpoint API objects, and the API
factory object, should you need it.

For documentation of all these methods, see AUTOMATIC DOCUMENTATION below.

## Configuring authentication

In the normal case, the OpenAPI Spec will describe what parameters are
required and where to put them. You just need to supply the tokens.

    my $tokens = {
        # basic
        username => $username,
        password => $password,

        # oauth
        access_token => $oauth_token,

        # keys
        $some_key => { token => $token,
                       prefix => $prefix,
                       in => $in,             # 'head||query',
                       },

        $another => { token => $token,
                      prefix => $prefix,
                      in => $in,              # 'head||query',
                      },
        ...,

        };

        my $api = MyApp->new({ tokens => $tokens });

Note these are all optional, as are `prefix` and `in`, and depend on the API
you are accessing. Usually `prefix` and `in` will be determined by the code generator from
the spec and you will not need to set them at run time. If not, `in` will
default to 'head' and `prefix` to the empty string.

The tokens will be placed in a L<Buzi::V1::Configuration> instance
as follows, but you don't need to know about this.

- `$cfg->{username}`

    String. The username for basic auth.

- `$cfg->{password}`

    String. The password for basic auth.

- `$cfg->{api_key}`

    Hashref. Keyed on the name of each key (there can be multiple tokens).

            $cfg->{api_key} = {
                    secretKey => 'aaaabbbbccccdddd',
                    anotherKey => '1111222233334444',
                    };

- `$cfg->{api_key_prefix}`

    Hashref. Keyed on the name of each key (there can be multiple tokens). Note not
    all api keys require a prefix.

            $cfg->{api_key_prefix} = {
                    secretKey => 'string',
                    anotherKey => 'same or some other string',
                    };

- `$cfg->{access_token}`

    String. The OAuth access token.

# METHODS

## `base_url`

The generated code has the `base_url` already set as a default value. This method
returns the current value of `base_url`.

## `api_factory`

Returns an API factory object. You probably won't need to call this directly.

        $self->api_factory('Pet'); # returns a Buzi::V1::PetApi instance

        $self->pet_api;            # the same

# MISSING METHODS

Most of the methods on the API are delegated to individual endpoint API objects
(e.g. Pet API, Store API, User API etc). Where different endpoint APIs use the
same method name (e.g. `new()`), these methods can't be delegated. So you need
to call `$api->pet_api->new()`.

In principle, every API is susceptible to the presence of a few, random, undelegatable
method names. In practice, because of the way method names are constructed, it's
unlikely in general that any methods will be undelegatable, except for:

        new()
        class_documentation()
        method_documentation()

To call these methods, you need to get a handle on the relevant object, either
by calling `$api->foo_api` or by retrieving an object, e.g.
`$api->get_pet_by_id(pet_id => $pet_id)`. They are class methods, so
you could also call them on class names.

# BUILDING YOUR LIBRARY

See the homepage `https://openapi-generator.tech` for full details.
But briefly, clone the git repository, build the codegen codebase, set up your build
config file, then run the API build script. You will need git, Java 7 or 8 and Apache
maven 3.0.3 or better already installed.

The config file should specify the project name for the generated library:

        {"moduleName":"WWW::MyProjectName"}

Your library files will be built under `WWW::MyProjectName`.

          $ git clone https://github.com/openapitools/openapi-generator
          $ cd openapi-generator
          $ mvn package
          $ java -jar modules/openapi-generator-cli/target/openapi-generator-cli.jar generate \
    -i [URL or file path to JSON OpenAPI API spec] \
    -g perl \
    -c /path/to/config/file.json \
    -o /path/to/output/folder

Bang, all done. Run the `autodoc` script in the `bin` directory to see the API
you just built.

# AUTOMATIC DOCUMENTATION

You can print out a summary of the generated API by running the included
`autodoc` script in the `bin` directory of your generated library. A few
output formats are supported:

          Usage: autodoc [OPTION]

    -w           wide format (default)
    -n           narrow format
    -p           POD format
    -H           HTML format
    -m           Markdown format
    -h           print this help message
    -c           your application class


The `-c` option allows you to load and inspect your own application. A dummy
namespace is used if you don't supply your own class.

# DOCUMENTATION FROM THE OpenAPI Spec

Additional documentation for each class and method may be provided by the OpenAPI
spec. If so, this is available via the `class_documentation()` and
`method_documentation()` methods on each generated object class, and the
`method_documentation()` method on the endpoint API classes:

        my $cmdoc = $api->pet_api->method_documentation->{$method_name};

        my $odoc = $api->get_pet_by_id->(pet_id => $pet_id)->class_documentation;
        my $omdoc = $api->get_pet_by_id->(pet_id => $pet_id)->method_documentation->{method_name};


Each of these calls returns a hashref with various useful pieces of information.

# Installation Prerequisites

Use [cpanm](https://metacpan.org/pod/distribution/App-cpanminus/bin/cpanm) to install the module dependencies:

```
cpanm --local-lib=~/perl5 local::lib && eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
cpanm --quiet --no-interactive Class::Accessor Test::Exception Test::More Log::Any LWP::UserAgent URI::Query Module::Runtime DateTime Module::Find Moose::Role JSON
```

# LOAD THE MODULES

To load the API packages:
```perl
use Buzi::V1::SmsApi;

```

To load the models:
```perl
use Buzi::V1::Object::Cost;
use Buzi::V1::Object::CreateMessageInput;
use Buzi::V1::Object::Error;
use Buzi::V1::Object::Message;
use Buzi::V1::Object::Network;
use Buzi::V1::Object::Pricing;

````

# GETTING STARTED
Put the Perl SDK under the 'lib' folder in your project directory, then run the following
```perl
#!/usr/bin/perl
use lib 'lib';
use strict;
use warnings;
# load the API package
use Buzi::V1::SmsApi;

# load the models
use Buzi::V1::Object::Cost;
use Buzi::V1::Object::CreateMessageInput;
use Buzi::V1::Object::Error;
use Buzi::V1::Object::Message;
use Buzi::V1::Object::Network;
use Buzi::V1::Object::Pricing;

# for displaying the API response data
use Data::Dumper;


my $api_instance = Buzi::V1::SmsApi->new(
    # Configure API key authorization: ApiKeyAuth
    api_key => {'X-API-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-API-Key' => 'Bearer'},
    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    # Configure HTTP basic authorization: BearerAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $message_id = 789; # int | ID of pet to return

eval {
    my $result = $api_instance->cancel_message(message_id => $message_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsApi->cancel_message: $@\n";
}

```

# DOCUMENTATION FOR API ENDPOINTS

All URIs are relative to *https://petstore3.swagger.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SmsApi* | [**cancel_message**](docs/SmsApi.md#cancel_message) | **POST** /v1/sms/messages/{messageId}/cancel | Cancel a message
*SmsApi* | [**create_message**](docs/SmsApi.md#create_message) | **POST** /v1/sms/messages | Create Message
*SmsApi* | [**create_pricing**](docs/SmsApi.md#create_pricing) | **PUT** /v1/sms/networks/{networkId}/pricing | Create network price
*SmsApi* | [**delete_message**](docs/SmsApi.md#delete_message) | **DELETE** /v1/sms/messages/{messageId} | Deletes a message
*SmsApi* | [**get_message**](docs/SmsApi.md#get_message) | **GET** /v1/sms/messages/{messageId} | Get message
*SmsApi* | [**get_network**](docs/SmsApi.md#get_network) | **GET** /v1/sms/networks/{networkId} | Get network
*SmsApi* | [**get_pricing**](docs/SmsApi.md#get_pricing) | **GET** /v1/sms/networks/{networkId}/pricing | List network rates
*SmsApi* | [**list_messages**](docs/SmsApi.md#list_messages) | **GET** /v1/sms/messages | List messages
*SmsApi* | [**list_networks**](docs/SmsApi.md#list_networks) | **GET** /v1/sms/networks | List networks
*SmsApi* | [**send_message**](docs/SmsApi.md#send_message) | **POST** /v1/sms/messages/{messageId}/send | Sends a message


# DOCUMENTATION FOR MODELS
 - [Buzi::V1::Object::Cost](docs/Cost.md)
 - [Buzi::V1::Object::CreateMessageInput](docs/CreateMessageInput.md)
 - [Buzi::V1::Object::Error](docs/Error.md)
 - [Buzi::V1::Object::Message](docs/Message.md)
 - [Buzi::V1::Object::Network](docs/Network.md)
 - [Buzi::V1::Object::Pricing](docs/Pricing.md)


# DOCUMENTATION FOR AUTHORIZATION

## ApiKeyAuth

- **Type**: API key
- **API key parameter name**: X-API-Key
- **Location**: HTTP header

## BasicAuth

- **Type**: HTTP basic authentication

## BearerAuth

- **Type**: HTTP basic authentication

