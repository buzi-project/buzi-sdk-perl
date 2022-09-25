# Buzi::V1::SmsApi

## Load the API package
```perl
use Buzi::V1::Object::SmsApi;
```

All URIs are relative to *https://petstore3.swagger.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_message**](SmsApi.md#cancel_message) | **POST** /v1/sms/messages/{messageId}/cancel | Cancel a message
[**create_message**](SmsApi.md#create_message) | **POST** /v1/sms/messages | Create Message
[**create_pricing**](SmsApi.md#create_pricing) | **PUT** /v1/sms/networks/{networkId}/pricing | Create network price
[**delete_message**](SmsApi.md#delete_message) | **DELETE** /v1/sms/messages/{messageId} | Deletes a message
[**get_message**](SmsApi.md#get_message) | **GET** /v1/sms/messages/{messageId} | Get message
[**get_network**](SmsApi.md#get_network) | **GET** /v1/sms/networks/{networkId} | Get network
[**get_pricing**](SmsApi.md#get_pricing) | **GET** /v1/sms/networks/{networkId}/pricing | List network rates
[**list_messages**](SmsApi.md#list_messages) | **GET** /v1/sms/messages | List messages
[**list_networks**](SmsApi.md#list_networks) | **GET** /v1/sms/networks | List networks
[**send_message**](SmsApi.md#send_message) | **POST** /v1/sms/messages/{messageId}/send | Sends a message


# **cancel_message**
> Message cancel_message(message_id => $message_id)

Cancel a message

Returns a single pet

### Example
```perl
use Data::Dumper;
use Buzi::V1::SmsApi;
my $api_instance = Buzi::V1::SmsApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'X-API-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-API-Key' => 'Bearer'},
    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure HTTP basic authorization: BearerAuth
    # Configure bearer access token for authorization: BearerAuth
    access_token => 'YOUR_BEARER_TOKEN',
    
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **int**| ID of pet to return | 

### Return type

[**Message**](Message.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_message**
> Message create_message(create_message_input => $create_message_input)

Create Message

Update an existing pet by Id

### Example
```perl
use Data::Dumper;
use Buzi::V1::SmsApi;
my $api_instance = Buzi::V1::SmsApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'X-API-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-API-Key' => 'Bearer'},
    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure HTTP basic authorization: BearerAuth
    # Configure bearer access token for authorization: BearerAuth
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $create_message_input = Buzi::V1::Object::CreateMessageInput->new(); # CreateMessageInput | Update an existent pet in the store

eval {
    my $result = $api_instance->create_message(create_message_input => $create_message_input);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsApi->create_message: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_message_input** | [**CreateMessageInput**](CreateMessageInput.md)| Update an existent pet in the store | 

### Return type

[**Message**](Message.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_pricing**
> Message create_pricing(network_id => $network_id)

Create network price

Returns a single pet

### Example
```perl
use Data::Dumper;
use Buzi::V1::SmsApi;
my $api_instance = Buzi::V1::SmsApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'X-API-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-API-Key' => 'Bearer'},
    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure HTTP basic authorization: BearerAuth
    # Configure bearer access token for authorization: BearerAuth
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $network_id = 56; # int | 

eval {
    my $result = $api_instance->create_pricing(network_id => $network_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsApi->create_pricing: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network_id** | **int**|  | 

### Return type

[**Message**](Message.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_message**
> Error delete_message(message_id => $message_id, api_key => $api_key)

Deletes a message

delete a message

### Example
```perl
use Data::Dumper;
use Buzi::V1::SmsApi;
my $api_instance = Buzi::V1::SmsApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'X-API-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-API-Key' => 'Bearer'},
    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure HTTP basic authorization: BearerAuth
    # Configure bearer access token for authorization: BearerAuth
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $message_id = 789; # int | Pet id to delete
my $api_key = "api_key_example"; # string | 

eval {
    my $result = $api_instance->delete_message(message_id => $message_id, api_key => $api_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsApi->delete_message: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **int**| Pet id to delete | 
 **api_key** | **string**|  | [optional] 

### Return type

[**Error**](Error.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_message**
> Message get_message(message_id => $message_id)

Get message

Returns a single pet

### Example
```perl
use Data::Dumper;
use Buzi::V1::SmsApi;
my $api_instance = Buzi::V1::SmsApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'X-API-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-API-Key' => 'Bearer'},
    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure HTTP basic authorization: BearerAuth
    # Configure bearer access token for authorization: BearerAuth
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $message_id = 789; # int | ID of pet to return

eval {
    my $result = $api_instance->get_message(message_id => $message_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsApi->get_message: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **int**| ID of pet to return | 

### Return type

[**Message**](Message.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_network**
> Network get_network(network_id => $network_id, country_code => $country_code)

Get network

Returns a single pet

### Example
```perl
use Data::Dumper;
use Buzi::V1::SmsApi;
my $api_instance = Buzi::V1::SmsApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'X-API-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-API-Key' => 'Bearer'},
    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure HTTP basic authorization: BearerAuth
    # Configure bearer access token for authorization: BearerAuth
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $network_id = 56; # int | 
my $country_code = 789; # int | ID of pet to return

eval {
    my $result = $api_instance->get_network(network_id => $network_id, country_code => $country_code);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsApi->get_network: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network_id** | **int**|  | 
 **country_code** | **int**| ID of pet to return | [optional] 

### Return type

[**Network**](Network.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pricing**
> ARRAY[Pricing] get_pricing(network_id => $network_id)

List network rates

Returns a single pet

### Example
```perl
use Data::Dumper;
use Buzi::V1::SmsApi;
my $api_instance = Buzi::V1::SmsApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'X-API-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-API-Key' => 'Bearer'},
    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure HTTP basic authorization: BearerAuth
    # Configure bearer access token for authorization: BearerAuth
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $network_id = 56; # int | 

eval {
    my $result = $api_instance->get_pricing(network_id => $network_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsApi->get_pricing: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **network_id** | **int**|  | 

### Return type

[**ARRAY[Pricing]**](Pricing.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_messages**
> ARRAY[Message] list_messages(inbox => $inbox, status => $status)

List messages

Update an existing pet by Id

### Example
```perl
use Data::Dumper;
use Buzi::V1::SmsApi;
my $api_instance = Buzi::V1::SmsApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'X-API-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-API-Key' => 'Bearer'},
    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure HTTP basic authorization: BearerAuth
    # Configure bearer access token for authorization: BearerAuth
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $inbox = "inbox_example"; # string | 
my $status = "status_example"; # string | 

eval {
    my $result = $api_instance->list_messages(inbox => $inbox, status => $status);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsApi->list_messages: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inbox** | **string**|  | [optional] 
 **status** | **string**|  | [optional] 

### Return type

[**ARRAY[Message]**](Message.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_networks**
> ARRAY[Network] list_networks(country_code => $country_code)

List networks

Returns a single pet

### Example
```perl
use Data::Dumper;
use Buzi::V1::SmsApi;
my $api_instance = Buzi::V1::SmsApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'X-API-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-API-Key' => 'Bearer'},
    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure HTTP basic authorization: BearerAuth
    # Configure bearer access token for authorization: BearerAuth
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $country_code = "country_code_example"; # string | ID of pet to return

eval {
    my $result = $api_instance->list_networks(country_code => $country_code);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsApi->list_networks: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_code** | **string**| ID of pet to return | [optional] 

### Return type

[**ARRAY[Network]**](Network.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **send_message**
> Message send_message(message_id => $message_id)

Sends a message

Returns a single pet

### Example
```perl
use Data::Dumper;
use Buzi::V1::SmsApi;
my $api_instance = Buzi::V1::SmsApi->new(

    # Configure API key authorization: ApiKeyAuth
    api_key => {'X-API-Key' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'X-API-Key' => 'Bearer'},
    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure HTTP basic authorization: BearerAuth
    # Configure bearer access token for authorization: BearerAuth
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $message_id = 789; # int | ID of pet to return

eval {
    my $result = $api_instance->send_message(message_id => $message_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SmsApi->send_message: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **int**| ID of pet to return | 

### Return type

[**Message**](Message.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

