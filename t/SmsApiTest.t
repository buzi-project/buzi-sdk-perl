=begin comment

Swagger Petstore - OpenAPI 3.0

This is a sample Pet Store Server based on the OpenAPI 3.0 specification.  You can find out more about Swagger at [https://swagger.io](https://swagger.io). In the third iteration of the pet store, we've switched to the design first approach! You can now help us improve the API whether it's by making changes to the definition itself or to the code. That way, with time, we can improve the API in general, and expose some of the new features in OAS3.  _If you're looking for the Swagger 2.0/OAS 2.0 version of Petstore, then click [here](https://editor.swagger.io/?url=https://petstore.swagger.io/v2/swagger.yaml). Alternatively, you can load via the `Edit > Load Petstore OAS 2.0` menu option!_  Some useful links: - [The Pet Store repository](https://github.com/swagger-api/swagger-petstore) - [The source API definition for the Pet Store](https://github.com/swagger-api/swagger-petstore/blob/master/src/main/resources/openapi.yaml)

The version of the OpenAPI document: 1.0.0
Contact: edson@michaque.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('Buzi::V1::SmsApi');

my $api = Buzi::V1::SmsApi->new();
isa_ok($api, 'Buzi::V1::SmsApi');

#
# cancel_message test
#
# uncomment below and update the test
#my $cancel_message_message_id = undef; # replace NULL with a proper value
#my $cancel_message_result = $api->cancel_message(message_id => $cancel_message_message_id);

#
# create_message test
#
# uncomment below and update the test
#my $create_message_create_message_input = undef; # replace NULL with a proper value
#my $create_message_result = $api->create_message(create_message_input => $create_message_create_message_input);

#
# create_pricing test
#
# uncomment below and update the test
#my $create_pricing_network_id = undef; # replace NULL with a proper value
#my $create_pricing_result = $api->create_pricing(network_id => $create_pricing_network_id);

#
# delete_message test
#
# uncomment below and update the test
#my $delete_message_message_id = undef; # replace NULL with a proper value
#my $delete_message_api_key = undef; # replace NULL with a proper value
#my $delete_message_result = $api->delete_message(message_id => $delete_message_message_id, api_key => $delete_message_api_key);

#
# get_message test
#
# uncomment below and update the test
#my $get_message_message_id = undef; # replace NULL with a proper value
#my $get_message_result = $api->get_message(message_id => $get_message_message_id);

#
# get_network test
#
# uncomment below and update the test
#my $get_network_network_id = undef; # replace NULL with a proper value
#my $get_network_country_code = undef; # replace NULL with a proper value
#my $get_network_result = $api->get_network(network_id => $get_network_network_id, country_code => $get_network_country_code);

#
# get_pricing test
#
# uncomment below and update the test
#my $get_pricing_network_id = undef; # replace NULL with a proper value
#my $get_pricing_result = $api->get_pricing(network_id => $get_pricing_network_id);

#
# list_messages test
#
# uncomment below and update the test
#my $list_messages_inbox = undef; # replace NULL with a proper value
#my $list_messages_status = undef; # replace NULL with a proper value
#my $list_messages_result = $api->list_messages(inbox => $list_messages_inbox, status => $list_messages_status);

#
# list_networks test
#
# uncomment below and update the test
#my $list_networks_country_code = undef; # replace NULL with a proper value
#my $list_networks_result = $api->list_networks(country_code => $list_networks_country_code);

#
# send_message test
#
# uncomment below and update the test
#my $send_message_message_id = undef; # replace NULL with a proper value
#my $send_message_result = $api->send_message(message_id => $send_message_message_id);

