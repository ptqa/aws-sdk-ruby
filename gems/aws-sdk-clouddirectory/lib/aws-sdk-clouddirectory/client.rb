# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:clouddirectory)

module Aws::CloudDirectory
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :clouddirectory

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Adds a new Facet to an object.
    #
    # @option params [required, String] :directory_arn
    #   ARN associated with the Directory where the object resides. For more
    #   information, see arns.
    #
    # @option params [required, Types::SchemaFacet] :schema_facet
    #   Identifiers for the facet that you are adding to the object.
    #
    # @option params [Array<Types::AttributeKeyAndValue>] :object_attribute_list
    #   Attributes on the facet you are adding to the object.
    #
    # @option params [required, Types::ObjectReference] :object_reference
    #   A reference to the object you are adding the specified facet to.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_facet_to_object({
    #     directory_arn: "Arn", # required
    #     schema_facet: { # required
    #       schema_arn: "Arn",
    #       facet_name: "FacetName",
    #     },
    #     object_attribute_list: [
    #       {
    #         key: { # required
    #           schema_arn: "Arn", # required
    #           facet_name: "FacetName", # required
    #           name: "AttributeName", # required
    #         },
    #         value: { # required
    #           string_value: "StringAttributeValue",
    #           binary_value: "data",
    #           boolean_value: false,
    #           number_value: "NumberAttributeValue",
    #           datetime_value: Time.now,
    #         },
    #       },
    #     ],
    #     object_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/AddFacetToObject AWS API Documentation
    #
    # @overload add_facet_to_object(params = {})
    # @param [Hash] params ({})
    def add_facet_to_object(params = {}, options = {})
      req = build_request(:add_facet_to_object, params)
      req.send_request(options)
    end

    # Copies input published schema into Directory with same name and
    # version as that of published schema .
    #
    # @option params [required, String] :published_schema_arn
    #   Published schema ARN that needs to be copied. For more information,
    #   see arns.
    #
    # @option params [required, String] :directory_arn
    #   ARN associated with the Directory into which the schema is copied. For
    #   more information, see arns.
    #
    # @return [Types::ApplySchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApplySchemaResponse#applied_schema_arn #applied_schema_arn} => String
    #   * {Types::ApplySchemaResponse#directory_arn #directory_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.apply_schema({
    #     published_schema_arn: "Arn", # required
    #     directory_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.applied_schema_arn #=> String
    #   resp.directory_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ApplySchema AWS API Documentation
    #
    # @overload apply_schema(params = {})
    # @param [Hash] params ({})
    def apply_schema(params = {}, options = {})
      req = build_request(:apply_schema, params)
      req.send_request(options)
    end

    # Attaches an existing object to another object. An object can be
    # accessed in two ways:
    #
    # 1.  Using the path
    #
    # 2.  Using `ObjectIdentifier`
    #
    # @option params [required, String] :directory_arn
    #   ARN associated with the Directory where both objects reside. For more
    #   information, see arns.
    #
    # @option params [required, Types::ObjectReference] :parent_reference
    #   Parent object reference.
    #
    # @option params [required, Types::ObjectReference] :child_reference
    #   Child object reference to be attached to the object.
    #
    # @option params [required, String] :link_name
    #   Link name with which the child object is attached to the parent.
    #
    # @return [Types::AttachObjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AttachObjectResponse#attached_object_identifier #attached_object_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_object({
    #     directory_arn: "Arn", # required
    #     parent_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     child_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     link_name: "LinkName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attached_object_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/AttachObject AWS API Documentation
    #
    # @overload attach_object(params = {})
    # @param [Hash] params ({})
    def attach_object(params = {}, options = {})
      req = build_request(:attach_object, params)
      req.send_request(options)
    end

    # Attaches a policy object to a regular object. An object can have a
    # limited number of attached policies.
    #
    # @option params [String] :directory_arn
    #   ARN associated with the Directory where both objects reside. For more
    #   information, see arns.
    #
    # @option params [required, Types::ObjectReference] :policy_reference
    #   Reference associated with the policy object.
    #
    # @option params [required, Types::ObjectReference] :object_reference
    #   Reference that identifies the object to which the policy will be
    #   attached.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_policy({
    #     directory_arn: "Arn",
    #     policy_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     object_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/AttachPolicy AWS API Documentation
    #
    # @overload attach_policy(params = {})
    # @param [Hash] params ({})
    def attach_policy(params = {}, options = {})
      req = build_request(:attach_policy, params)
      req.send_request(options)
    end

    # Attaches the specified object to the specified index.
    #
    # @option params [required, String] :directory_arn
    #   The ARN of the directory where the object and index exist.
    #
    # @option params [required, Types::ObjectReference] :index_reference
    #   A reference to the index that you are attaching the object to.
    #
    # @option params [required, Types::ObjectReference] :target_reference
    #   A reference to the object that you are attaching to the index.
    #
    # @return [Types::AttachToIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AttachToIndexResponse#attached_object_identifier #attached_object_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_to_index({
    #     directory_arn: "Arn", # required
    #     index_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     target_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.attached_object_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/AttachToIndex AWS API Documentation
    #
    # @overload attach_to_index(params = {})
    # @param [Hash] params ({})
    def attach_to_index(params = {}, options = {})
      req = build_request(:attach_to_index, params)
      req.send_request(options)
    end

    # Performs all the read operations in a batch.
    #
    # @option params [required, String] :directory_arn
    #   ARN associated with the Directory. For more information, see arns.
    #
    # @option params [required, Array<Types::BatchReadOperation>] :operations
    #   List of operations that are part of the batch.
    #
    # @option params [String] :consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #
    # @return [Types::BatchReadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchReadResponse#responses #responses} => Array&lt;Types::BatchReadOperationResponse&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_read({
    #     directory_arn: "Arn", # required
    #     operations: [ # required
    #       {
    #         list_object_attributes: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           next_token: "NextToken",
    #           max_results: 1,
    #           facet_filter: {
    #             schema_arn: "Arn",
    #             facet_name: "FacetName",
    #           },
    #         },
    #         list_object_children: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           next_token: "NextToken",
    #           max_results: 1,
    #         },
    #       },
    #     ],
    #     consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #   })
    #
    # @example Response structure
    #
    #   resp.responses #=> Array
    #   resp.responses[0].successful_response.list_object_attributes.attributes #=> Array
    #   resp.responses[0].successful_response.list_object_attributes.attributes[0].key.schema_arn #=> String
    #   resp.responses[0].successful_response.list_object_attributes.attributes[0].key.facet_name #=> String
    #   resp.responses[0].successful_response.list_object_attributes.attributes[0].key.name #=> String
    #   resp.responses[0].successful_response.list_object_attributes.attributes[0].value.string_value #=> String
    #   resp.responses[0].successful_response.list_object_attributes.attributes[0].value.binary_value #=> String
    #   resp.responses[0].successful_response.list_object_attributes.attributes[0].value.boolean_value #=> Boolean
    #   resp.responses[0].successful_response.list_object_attributes.attributes[0].value.number_value #=> String
    #   resp.responses[0].successful_response.list_object_attributes.attributes[0].value.datetime_value #=> Time
    #   resp.responses[0].successful_response.list_object_attributes.next_token #=> String
    #   resp.responses[0].successful_response.list_object_children.children #=> Hash
    #   resp.responses[0].successful_response.list_object_children.children["LinkName"] #=> String
    #   resp.responses[0].successful_response.list_object_children.next_token #=> String
    #   resp.responses[0].exception_response.type #=> String, one of "ValidationException", "InvalidArnException", "ResourceNotFoundException", "InvalidNextTokenException", "AccessDeniedException", "NotNodeException"
    #   resp.responses[0].exception_response.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchRead AWS API Documentation
    #
    # @overload batch_read(params = {})
    # @param [Hash] params ({})
    def batch_read(params = {}, options = {})
      req = build_request(:batch_read, params)
      req.send_request(options)
    end

    # Performs all the write operations in a batch. Either all the
    # operations succeed or none. Batch writes supports only object-related
    # operations.
    #
    # @option params [required, String] :directory_arn
    #   ARN associated with the Directory. For more information, see arns.
    #
    # @option params [required, Array<Types::BatchWriteOperation>] :operations
    #   List of operations that are part of the batch.
    #
    # @return [Types::BatchWriteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchWriteResponse#responses #responses} => Array&lt;Types::BatchWriteOperationResponse&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_write({
    #     directory_arn: "Arn", # required
    #     operations: [ # required
    #       {
    #         create_object: {
    #           schema_facet: [ # required
    #             {
    #               schema_arn: "Arn",
    #               facet_name: "FacetName",
    #             },
    #           ],
    #           object_attribute_list: [ # required
    #             {
    #               key: { # required
    #                 schema_arn: "Arn", # required
    #                 facet_name: "FacetName", # required
    #                 name: "AttributeName", # required
    #               },
    #               value: { # required
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           ],
    #           parent_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           link_name: "LinkName", # required
    #           batch_reference_name: "BatchReferenceName", # required
    #         },
    #         attach_object: {
    #           parent_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           child_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           link_name: "LinkName", # required
    #         },
    #         detach_object: {
    #           parent_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           link_name: "LinkName", # required
    #           batch_reference_name: "BatchReferenceName", # required
    #         },
    #         update_object_attributes: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #           attribute_updates: [ # required
    #             {
    #               object_attribute_key: {
    #                 schema_arn: "Arn", # required
    #                 facet_name: "FacetName", # required
    #                 name: "AttributeName", # required
    #               },
    #               object_attribute_action: {
    #                 object_attribute_action_type: "CREATE_OR_UPDATE", # accepts CREATE_OR_UPDATE, DELETE
    #                 object_attribute_update_value: {
    #                   string_value: "StringAttributeValue",
    #                   binary_value: "data",
    #                   boolean_value: false,
    #                   number_value: "NumberAttributeValue",
    #                   datetime_value: Time.now,
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #         delete_object: {
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #         },
    #         add_facet_to_object: {
    #           schema_facet: { # required
    #             schema_arn: "Arn",
    #             facet_name: "FacetName",
    #           },
    #           object_attribute_list: [ # required
    #             {
    #               key: { # required
    #                 schema_arn: "Arn", # required
    #                 facet_name: "FacetName", # required
    #                 name: "AttributeName", # required
    #               },
    #               value: { # required
    #                 string_value: "StringAttributeValue",
    #                 binary_value: "data",
    #                 boolean_value: false,
    #                 number_value: "NumberAttributeValue",
    #                 datetime_value: Time.now,
    #               },
    #             },
    #           ],
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #         },
    #         remove_facet_from_object: {
    #           schema_facet: { # required
    #             schema_arn: "Arn",
    #             facet_name: "FacetName",
    #           },
    #           object_reference: { # required
    #             selector: "SelectorObjectReference",
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.responses #=> Array
    #   resp.responses[0].create_object.object_identifier #=> String
    #   resp.responses[0].attach_object.attached_object_identifier #=> String
    #   resp.responses[0].detach_object.detached_object_identifier #=> String
    #   resp.responses[0].update_object_attributes.object_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/BatchWrite AWS API Documentation
    #
    # @overload batch_write(params = {})
    # @param [Hash] params ({})
    def batch_write(params = {}, options = {})
      req = build_request(:batch_write, params)
      req.send_request(options)
    end

    # Creates a Directory by copying the published schema into the
    # directory. A directory cannot be created without a schema.
    #
    # @option params [required, String] :name
    #   Name of the Directory. Should be unique per account, per region.
    #
    # @option params [required, String] :schema_arn
    #   ARN of the published schema that will be copied into the data
    #   Directory. For more information, see arns.
    #
    # @return [Types::CreateDirectoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDirectoryResponse#directory_arn #directory_arn} => String
    #   * {Types::CreateDirectoryResponse#name #name} => String
    #   * {Types::CreateDirectoryResponse#object_identifier #object_identifier} => String
    #   * {Types::CreateDirectoryResponse#applied_schema_arn #applied_schema_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_directory({
    #     name: "DirectoryName", # required
    #     schema_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_arn #=> String
    #   resp.name #=> String
    #   resp.object_identifier #=> String
    #   resp.applied_schema_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/CreateDirectory AWS API Documentation
    #
    # @overload create_directory(params = {})
    # @param [Hash] params ({})
    def create_directory(params = {}, options = {})
      req = build_request(:create_directory, params)
      req.send_request(options)
    end

    # Creates a new Facet in a schema. Facet creation is allowed only in
    # development or applied schemas.
    #
    # @option params [required, String] :schema_arn
    #   Schema ARN in which the new Facet will be created. For more
    #   information, see arns.
    #
    # @option params [required, String] :name
    #   Name of the Facet, which is unique for a given schema.
    #
    # @option params [Array<Types::FacetAttribute>] :attributes
    #   Attributes associated with the Facet.e
    #
    # @option params [required, String] :object_type
    #   Specifies whether a given object created from this facet is of type
    #   Node, Leaf Node, Policy or Index.
    #
    #   * Node: Can have multiple children but one parent.
    #
    #   ^
    #   ^
    #
    #   * Leaf Node: Cannot have children but can have multiple parents.
    #
    #   ^
    #   ^
    #
    #   * Policy: Allows you to store a policy document and policy type. For
    #     more information, see [Policies][1].
    #
    #   ^
    #   ^
    #
    #   * Index: Can be created with the Index API.
    #
    #   ^
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_facet({
    #     schema_arn: "Arn", # required
    #     name: "FacetName", # required
    #     attributes: [
    #       {
    #         name: "AttributeName", # required
    #         attribute_definition: {
    #           type: "STRING", # required, accepts STRING, BINARY, BOOLEAN, NUMBER, DATETIME
    #           default_value: {
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now,
    #           },
    #           is_immutable: false,
    #           rules: {
    #             "RuleKey" => {
    #               type: "BINARY_LENGTH", # accepts BINARY_LENGTH, NUMBER_COMPARISON, STRING_FROM_SET, STRING_LENGTH
    #               parameters: {
    #                 "RuleParameterKey" => "RuleParameterValue",
    #               },
    #             },
    #           },
    #         },
    #         attribute_reference: {
    #           target_facet_name: "FacetName", # required
    #           target_attribute_name: "AttributeName", # required
    #         },
    #         required_behavior: "REQUIRED_ALWAYS", # accepts REQUIRED_ALWAYS, NOT_REQUIRED
    #       },
    #     ],
    #     object_type: "NODE", # required, accepts NODE, LEAF_NODE, POLICY, INDEX
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/CreateFacet AWS API Documentation
    #
    # @overload create_facet(params = {})
    # @param [Hash] params ({})
    def create_facet(params = {}, options = {})
      req = build_request(:create_facet, params)
      req.send_request(options)
    end

    # Creates an index object. See [Indexing][1] for more information.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_indexing.html
    #
    # @option params [required, String] :directory_arn
    #   The ARN of the directory where the index should be created.
    #
    # @option params [required, Array<Types::AttributeKey>] :ordered_indexed_attribute_list
    #   Specifies the Attributes that should be indexed on. Currently only a
    #   single attribute is supported.
    #
    # @option params [required, Boolean] :is_unique
    #   Indicates whether objects with the same indexed attribute value can be
    #   added to the index.
    #
    # @option params [Types::ObjectReference] :parent_reference
    #   A reference to the parent object that contains the index object.
    #
    # @option params [String] :link_name
    #   The name of the link between the parent object and the index object.
    #
    # @return [Types::CreateIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIndexResponse#object_identifier #object_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_index({
    #     directory_arn: "Arn", # required
    #     ordered_indexed_attribute_list: [ # required
    #       {
    #         schema_arn: "Arn", # required
    #         facet_name: "FacetName", # required
    #         name: "AttributeName", # required
    #       },
    #     ],
    #     is_unique: false, # required
    #     parent_reference: {
    #       selector: "SelectorObjectReference",
    #     },
    #     link_name: "LinkName",
    #   })
    #
    # @example Response structure
    #
    #   resp.object_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/CreateIndex AWS API Documentation
    #
    # @overload create_index(params = {})
    # @param [Hash] params ({})
    def create_index(params = {}, options = {})
      req = build_request(:create_index, params)
      req.send_request(options)
    end

    # Creates an object in a Directory. Additionally attaches the object to
    # a parent, if a parent reference and LinkName is specified. An object
    # is simply a collection of Facet attributes. You can also use this API
    # call to create a policy object, if the facet from which you create the
    # object is a policy facet.
    #
    # @option params [required, String] :directory_arn
    #   ARN associated with the Directory in which the object will be created.
    #   For more information, see arns.
    #
    # @option params [required, Array<Types::SchemaFacet>] :schema_facets
    #   List of facet ARNs to be associated with the object. For more
    #   information, see arns.
    #
    # @option params [Array<Types::AttributeKeyAndValue>] :object_attribute_list
    #   Attribute map whose attribute ARN contains the key and attribute value
    #   as the map value.
    #
    # @option params [Types::ObjectReference] :parent_reference
    #   If specified, the parent reference to which this object will be
    #   attached.
    #
    # @option params [String] :link_name
    #   The name of link that is used to attach this object to a parent.
    #
    # @return [Types::CreateObjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateObjectResponse#object_identifier #object_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_object({
    #     directory_arn: "Arn", # required
    #     schema_facets: [ # required
    #       {
    #         schema_arn: "Arn",
    #         facet_name: "FacetName",
    #       },
    #     ],
    #     object_attribute_list: [
    #       {
    #         key: { # required
    #           schema_arn: "Arn", # required
    #           facet_name: "FacetName", # required
    #           name: "AttributeName", # required
    #         },
    #         value: { # required
    #           string_value: "StringAttributeValue",
    #           binary_value: "data",
    #           boolean_value: false,
    #           number_value: "NumberAttributeValue",
    #           datetime_value: Time.now,
    #         },
    #       },
    #     ],
    #     parent_reference: {
    #       selector: "SelectorObjectReference",
    #     },
    #     link_name: "LinkName",
    #   })
    #
    # @example Response structure
    #
    #   resp.object_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/CreateObject AWS API Documentation
    #
    # @overload create_object(params = {})
    # @param [Hash] params ({})
    def create_object(params = {}, options = {})
      req = build_request(:create_object, params)
      req.send_request(options)
    end

    # Creates a new schema in a development state. A schema can exist in
    # three phases:
    #
    # * *Development:* This is a mutable phase of the schema. All new
    #   schemas are in the development phase. Once the schema is finalized,
    #   it can be published.
    #
    # * *Published:* Published schemas are immutable and have a version
    #   associated with them.
    #
    # * *Applied:* Applied schemas are mutable in a way that allows you to
    #   add new schema facets. You can also add new, nonrequired attributes
    #   to existing schema facets. You can apply only published schemas to
    #   directories.
    #
    # @option params [required, String] :name
    #   Name associated with the schema. This is unique to each account and in
    #   each region.
    #
    # @return [Types::CreateSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSchemaResponse#schema_arn #schema_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_schema({
    #     name: "SchemaName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/CreateSchema AWS API Documentation
    #
    # @overload create_schema(params = {})
    # @param [Hash] params ({})
    def create_schema(params = {}, options = {})
      req = build_request(:create_schema, params)
      req.send_request(options)
    end

    # Deletes a directory. Only disabled directories can be deleted. A
    # deleted directory cannot be undone. Exercise extreme caution when
    # deleting directories.
    #
    # @option params [required, String] :directory_arn
    #   The ARN of the directory to delete.
    #
    # @return [Types::DeleteDirectoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDirectoryResponse#directory_arn #directory_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_directory({
    #     directory_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DeleteDirectory AWS API Documentation
    #
    # @overload delete_directory(params = {})
    # @param [Hash] params ({})
    def delete_directory(params = {}, options = {})
      req = build_request(:delete_directory, params)
      req.send_request(options)
    end

    # Deletes a given Facet. All attributes and Rules associated with the
    # facet will be deleted. Only development schema facets are allowed
    # deletion.
    #
    # @option params [required, String] :schema_arn
    #   ARN associated with the Facet. For more information, see arns.
    #
    # @option params [required, String] :name
    #   The name of the facet to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_facet({
    #     schema_arn: "Arn", # required
    #     name: "FacetName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DeleteFacet AWS API Documentation
    #
    # @overload delete_facet(params = {})
    # @param [Hash] params ({})
    def delete_facet(params = {}, options = {})
      req = build_request(:delete_facet, params)
      req.send_request(options)
    end

    # Deletes an object and its associated attributes. Only objects with no
    # children and no parents can be deleted.
    #
    # @option params [required, String] :directory_arn
    #   ARN associated with the Directory where the object resides. For more
    #   information, see arns.
    #
    # @option params [required, Types::ObjectReference] :object_reference
    #   Reference that identifies the object.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_object({
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DeleteObject AWS API Documentation
    #
    # @overload delete_object(params = {})
    # @param [Hash] params ({})
    def delete_object(params = {}, options = {})
      req = build_request(:delete_object, params)
      req.send_request(options)
    end

    # Deletes a given schema. Schemas in a development and published state
    # can only be deleted.
    #
    # @option params [required, String] :schema_arn
    #   ARN of the development schema. For more information, see arns.
    #
    # @return [Types::DeleteSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSchemaResponse#schema_arn #schema_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_schema({
    #     schema_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DeleteSchema AWS API Documentation
    #
    # @overload delete_schema(params = {})
    # @param [Hash] params ({})
    def delete_schema(params = {}, options = {})
      req = build_request(:delete_schema, params)
      req.send_request(options)
    end

    # Detaches the specified object from the specified index.
    #
    # @option params [required, String] :directory_arn
    #   The ARN of the directory the index and object exist in.
    #
    # @option params [required, Types::ObjectReference] :index_reference
    #   A reference to the index object.
    #
    # @option params [required, Types::ObjectReference] :target_reference
    #   A reference to the object being detached from the index.
    #
    # @return [Types::DetachFromIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetachFromIndexResponse#detached_object_identifier #detached_object_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_from_index({
    #     directory_arn: "Arn", # required
    #     index_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     target_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.detached_object_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DetachFromIndex AWS API Documentation
    #
    # @overload detach_from_index(params = {})
    # @param [Hash] params ({})
    def detach_from_index(params = {}, options = {})
      req = build_request(:detach_from_index, params)
      req.send_request(options)
    end

    # Detaches a given object from the parent object. The object that is to
    # be detached from the parent is specified by the link name.
    #
    # @option params [required, String] :directory_arn
    #   ARN associated with the Directory where objects reside. For more
    #   information, see arns.
    #
    # @option params [required, Types::ObjectReference] :parent_reference
    #   Parent reference from which the object with the specified link name is
    #   detached.
    #
    # @option params [required, String] :link_name
    #   Link name associated with the object that needs to be detached.
    #
    # @return [Types::DetachObjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetachObjectResponse#detached_object_identifier #detached_object_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_object({
    #     directory_arn: "Arn", # required
    #     parent_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     link_name: "LinkName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.detached_object_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DetachObject AWS API Documentation
    #
    # @overload detach_object(params = {})
    # @param [Hash] params ({})
    def detach_object(params = {}, options = {})
      req = build_request(:detach_object, params)
      req.send_request(options)
    end

    # Detaches a policy from an object.
    #
    # @option params [required, String] :directory_arn
    #   ARN associated with the Directory where both objects reside. For more
    #   information, see arns.
    #
    # @option params [required, Types::ObjectReference] :policy_reference
    #   Reference that identifies the policy object.
    #
    # @option params [required, Types::ObjectReference] :object_reference
    #   Reference that identifies the object whose policy object will be
    #   detached.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_policy({
    #     directory_arn: "Arn", # required
    #     policy_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     object_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DetachPolicy AWS API Documentation
    #
    # @overload detach_policy(params = {})
    # @param [Hash] params ({})
    def detach_policy(params = {}, options = {})
      req = build_request(:detach_policy, params)
      req.send_request(options)
    end

    # Disables the specified directory. Disabled directories cannot be read
    # or written to. Only enabled directories can be disabled. Disabled
    # directories may be reenabled.
    #
    # @option params [required, String] :directory_arn
    #   The ARN of the directory to disable.
    #
    # @return [Types::DisableDirectoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableDirectoryResponse#directory_arn #directory_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_directory({
    #     directory_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/DisableDirectory AWS API Documentation
    #
    # @overload disable_directory(params = {})
    # @param [Hash] params ({})
    def disable_directory(params = {}, options = {})
      req = build_request(:disable_directory, params)
      req.send_request(options)
    end

    # Enables the specified directory. Only disabled directories can be
    # enabled. Once enabled, the directory can then be read and written to.
    #
    # @option params [required, String] :directory_arn
    #   The ARN of the directory to enable.
    #
    # @return [Types::EnableDirectoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableDirectoryResponse#directory_arn #directory_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_directory({
    #     directory_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.directory_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/EnableDirectory AWS API Documentation
    #
    # @overload enable_directory(params = {})
    # @param [Hash] params ({})
    def enable_directory(params = {}, options = {})
      req = build_request(:enable_directory, params)
      req.send_request(options)
    end

    # Retrieves metadata about a directory.
    #
    # @option params [required, String] :directory_arn
    #   The ARN of the directory.
    #
    # @return [Types::GetDirectoryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDirectoryResponse#directory #directory} => Types::Directory
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_directory({
    #     directory_arn: "DirectoryArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.directory.name #=> String
    #   resp.directory.directory_arn #=> String
    #   resp.directory.state #=> String, one of "ENABLED", "DISABLED", "DELETED"
    #   resp.directory.creation_date_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/GetDirectory AWS API Documentation
    #
    # @overload get_directory(params = {})
    # @param [Hash] params ({})
    def get_directory(params = {}, options = {})
      req = build_request(:get_directory, params)
      req.send_request(options)
    end

    # Gets details of the Facet, such as Facet Name, Attributes, Rules, or
    # ObjectType. You can call this on all kinds of schema facets --
    # published, development, or applied.
    #
    # @option params [required, String] :schema_arn
    #   ARN associated with the Facet. For more information, see arns.
    #
    # @option params [required, String] :name
    #   The name of the facet to retrieve.
    #
    # @return [Types::GetFacetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFacetResponse#facet #facet} => Types::Facet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_facet({
    #     schema_arn: "Arn", # required
    #     name: "FacetName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.facet.name #=> String
    #   resp.facet.object_type #=> String, one of "NODE", "LEAF_NODE", "POLICY", "INDEX"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/GetFacet AWS API Documentation
    #
    # @overload get_facet(params = {})
    # @param [Hash] params ({})
    def get_facet(params = {}, options = {})
      req = build_request(:get_facet, params)
      req.send_request(options)
    end

    # Retrieves metadata about an object.
    #
    # @option params [required, String] :directory_arn
    #   The ARN of the directory being retrieved.
    #
    # @option params [required, Types::ObjectReference] :object_reference
    #   A reference to the object.
    #
    # @option params [String] :consistency_level
    #   The consistency level at which to retrieve the object information.
    #
    # @return [Types::GetObjectInformationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetObjectInformationResponse#schema_facets #schema_facets} => Array&lt;Types::SchemaFacet&gt;
    #   * {Types::GetObjectInformationResponse#object_identifier #object_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_object_information({
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_facets #=> Array
    #   resp.schema_facets[0].schema_arn #=> String
    #   resp.schema_facets[0].facet_name #=> String
    #   resp.object_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/GetObjectInformation AWS API Documentation
    #
    # @overload get_object_information(params = {})
    # @param [Hash] params ({})
    def get_object_information(params = {}, options = {})
      req = build_request(:get_object_information, params)
      req.send_request(options)
    end

    # Retrieves a JSON representation of the schema. See [JSON Schema
    # Format][1] for more information.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_schemas.html#jsonformat
    #
    # @option params [required, String] :schema_arn
    #   The ARN of the schema to retrieve.
    #
    # @return [Types::GetSchemaAsJsonResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSchemaAsJsonResponse#name #name} => String
    #   * {Types::GetSchemaAsJsonResponse#document #document} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_schema_as_json({
    #     schema_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.document #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/GetSchemaAsJson AWS API Documentation
    #
    # @overload get_schema_as_json(params = {})
    # @param [Hash] params ({})
    def get_schema_as_json(params = {}, options = {})
      req = build_request(:get_schema_as_json, params)
      req.send_request(options)
    end

    # Lists schemas applied to a directory.
    #
    # @option params [required, String] :directory_arn
    #   The ARN of the directory you are listing.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve.
    #
    # @return [Types::ListAppliedSchemaArnsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppliedSchemaArnsResponse#schema_arns #schema_arns} => Array&lt;String&gt;
    #   * {Types::ListAppliedSchemaArnsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applied_schema_arns({
    #     directory_arn: "Arn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_arns #=> Array
    #   resp.schema_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListAppliedSchemaArns AWS API Documentation
    #
    # @overload list_applied_schema_arns(params = {})
    # @param [Hash] params ({})
    def list_applied_schema_arns(params = {}, options = {})
      req = build_request(:list_applied_schema_arns, params)
      req.send_request(options)
    end

    # Lists indices attached to an object.
    #
    # @option params [required, String] :directory_arn
    #   The ARN of the directory.
    #
    # @option params [required, Types::ObjectReference] :target_reference
    #   A reference to the object to that has indices attached.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve.
    #
    # @option params [String] :consistency_level
    #   The consistency level to use for this operation.
    #
    # @return [Types::ListAttachedIndicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttachedIndicesResponse#index_attachments #index_attachments} => Array&lt;Types::IndexAttachment&gt;
    #   * {Types::ListAttachedIndicesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attached_indices({
    #     directory_arn: "Arn", # required
    #     target_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #   })
    #
    # @example Response structure
    #
    #   resp.index_attachments #=> Array
    #   resp.index_attachments[0].indexed_attributes #=> Array
    #   resp.index_attachments[0].indexed_attributes[0].key.schema_arn #=> String
    #   resp.index_attachments[0].indexed_attributes[0].key.facet_name #=> String
    #   resp.index_attachments[0].indexed_attributes[0].key.name #=> String
    #   resp.index_attachments[0].indexed_attributes[0].value.string_value #=> String
    #   resp.index_attachments[0].indexed_attributes[0].value.binary_value #=> String
    #   resp.index_attachments[0].indexed_attributes[0].value.boolean_value #=> Boolean
    #   resp.index_attachments[0].indexed_attributes[0].value.number_value #=> String
    #   resp.index_attachments[0].indexed_attributes[0].value.datetime_value #=> Time
    #   resp.index_attachments[0].object_identifier #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListAttachedIndices AWS API Documentation
    #
    # @overload list_attached_indices(params = {})
    # @param [Hash] params ({})
    def list_attached_indices(params = {}, options = {})
      req = build_request(:list_attached_indices, params)
      req.send_request(options)
    end

    # Retrieves the ARNs of schemas in the development state.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve.
    #
    # @return [Types::ListDevelopmentSchemaArnsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevelopmentSchemaArnsResponse#schema_arns #schema_arns} => Array&lt;String&gt;
    #   * {Types::ListDevelopmentSchemaArnsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_development_schema_arns({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_arns #=> Array
    #   resp.schema_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListDevelopmentSchemaArns AWS API Documentation
    #
    # @overload list_development_schema_arns(params = {})
    # @param [Hash] params ({})
    def list_development_schema_arns(params = {}, options = {})
      req = build_request(:list_development_schema_arns, params)
      req.send_request(options)
    end

    # Lists directories created within an account.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve.
    #
    # @option params [String] :state
    #   The state of the directories in the list. Can be either Enabled,
    #   Disabled, or Deleted.
    #
    # @return [Types::ListDirectoriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDirectoriesResponse#directories #directories} => Array&lt;Types::Directory&gt;
    #   * {Types::ListDirectoriesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_directories({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     state: "ENABLED", # accepts ENABLED, DISABLED, DELETED
    #   })
    #
    # @example Response structure
    #
    #   resp.directories #=> Array
    #   resp.directories[0].name #=> String
    #   resp.directories[0].directory_arn #=> String
    #   resp.directories[0].state #=> String, one of "ENABLED", "DISABLED", "DELETED"
    #   resp.directories[0].creation_date_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListDirectories AWS API Documentation
    #
    # @overload list_directories(params = {})
    # @param [Hash] params ({})
    def list_directories(params = {}, options = {})
      req = build_request(:list_directories, params)
      req.send_request(options)
    end

    # Retrieves attributes attached to the facet.
    #
    # @option params [required, String] :schema_arn
    #   The ARN of the schema where the facet resides.
    #
    # @option params [required, String] :name
    #   The name of the facet whose attributes will be retrieved.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve.
    #
    # @return [Types::ListFacetAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFacetAttributesResponse#attributes #attributes} => Array&lt;Types::FacetAttribute&gt;
    #   * {Types::ListFacetAttributesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_facet_attributes({
    #     schema_arn: "Arn", # required
    #     name: "FacetName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].name #=> String
    #   resp.attributes[0].attribute_definition.type #=> String, one of "STRING", "BINARY", "BOOLEAN", "NUMBER", "DATETIME"
    #   resp.attributes[0].attribute_definition.default_value.string_value #=> String
    #   resp.attributes[0].attribute_definition.default_value.binary_value #=> String
    #   resp.attributes[0].attribute_definition.default_value.boolean_value #=> Boolean
    #   resp.attributes[0].attribute_definition.default_value.number_value #=> String
    #   resp.attributes[0].attribute_definition.default_value.datetime_value #=> Time
    #   resp.attributes[0].attribute_definition.is_immutable #=> Boolean
    #   resp.attributes[0].attribute_definition.rules #=> Hash
    #   resp.attributes[0].attribute_definition.rules["RuleKey"].type #=> String, one of "BINARY_LENGTH", "NUMBER_COMPARISON", "STRING_FROM_SET", "STRING_LENGTH"
    #   resp.attributes[0].attribute_definition.rules["RuleKey"].parameters #=> Hash
    #   resp.attributes[0].attribute_definition.rules["RuleKey"].parameters["RuleParameterKey"] #=> String
    #   resp.attributes[0].attribute_reference.target_facet_name #=> String
    #   resp.attributes[0].attribute_reference.target_attribute_name #=> String
    #   resp.attributes[0].required_behavior #=> String, one of "REQUIRED_ALWAYS", "NOT_REQUIRED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListFacetAttributes AWS API Documentation
    #
    # @overload list_facet_attributes(params = {})
    # @param [Hash] params ({})
    def list_facet_attributes(params = {}, options = {})
      req = build_request(:list_facet_attributes, params)
      req.send_request(options)
    end

    # Retrieves the names of facets that exist in a schema.
    #
    # @option params [required, String] :schema_arn
    #   The ARN to retrieve facet names from.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve
    #
    # @return [Types::ListFacetNamesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFacetNamesResponse#facet_names #facet_names} => Array&lt;String&gt;
    #   * {Types::ListFacetNamesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_facet_names({
    #     schema_arn: "Arn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.facet_names #=> Array
    #   resp.facet_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListFacetNames AWS API Documentation
    #
    # @overload list_facet_names(params = {})
    # @param [Hash] params ({})
    def list_facet_names(params = {}, options = {})
      req = build_request(:list_facet_names, params)
      req.send_request(options)
    end

    # Lists objects attached to the specified index.
    #
    # @option params [required, String] :directory_arn
    #   The ARN of the directory that the index exists in.
    #
    # @option params [Array<Types::ObjectAttributeRange>] :ranges_on_indexed_values
    #   Specifies the ranges of indexed values that you want to query.
    #
    # @option params [required, Types::ObjectReference] :index_reference
    #   The reference to the index to list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve from the index.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [String] :consistency_level
    #   The consistency level to execute the request at.
    #
    # @return [Types::ListIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIndexResponse#index_attachments #index_attachments} => Array&lt;Types::IndexAttachment&gt;
    #   * {Types::ListIndexResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_index({
    #     directory_arn: "Arn", # required
    #     ranges_on_indexed_values: [
    #       {
    #         attribute_key: {
    #           schema_arn: "Arn", # required
    #           facet_name: "FacetName", # required
    #           name: "AttributeName", # required
    #         },
    #         range: {
    #           start_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #           start_value: {
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now,
    #           },
    #           end_mode: "FIRST", # required, accepts FIRST, LAST, LAST_BEFORE_MISSING_VALUES, INCLUSIVE, EXCLUSIVE
    #           end_value: {
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now,
    #           },
    #         },
    #       },
    #     ],
    #     index_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #     consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #   })
    #
    # @example Response structure
    #
    #   resp.index_attachments #=> Array
    #   resp.index_attachments[0].indexed_attributes #=> Array
    #   resp.index_attachments[0].indexed_attributes[0].key.schema_arn #=> String
    #   resp.index_attachments[0].indexed_attributes[0].key.facet_name #=> String
    #   resp.index_attachments[0].indexed_attributes[0].key.name #=> String
    #   resp.index_attachments[0].indexed_attributes[0].value.string_value #=> String
    #   resp.index_attachments[0].indexed_attributes[0].value.binary_value #=> String
    #   resp.index_attachments[0].indexed_attributes[0].value.boolean_value #=> Boolean
    #   resp.index_attachments[0].indexed_attributes[0].value.number_value #=> String
    #   resp.index_attachments[0].indexed_attributes[0].value.datetime_value #=> Time
    #   resp.index_attachments[0].object_identifier #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListIndex AWS API Documentation
    #
    # @overload list_index(params = {})
    # @param [Hash] params ({})
    def list_index(params = {}, options = {})
      req = build_request(:list_index, params)
      req.send_request(options)
    end

    # Lists all attributes associated with an object.
    #
    # @option params [required, String] :directory_arn
    #   ARN associated with the Directory where the object resides. For more
    #   information, see arns.
    #
    # @option params [required, Types::ObjectReference] :object_reference
    #   Reference that identifies the object whose attributes will be listed.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   Maximum number of items to be retrieved in a single call. This is an
    #   approximate number.
    #
    # @option params [String] :consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #
    # @option params [Types::SchemaFacet] :facet_filter
    #   Used to filter the list of object attributes associated with a certain
    #   facet.
    #
    # @return [Types::ListObjectAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListObjectAttributesResponse#attributes #attributes} => Array&lt;Types::AttributeKeyAndValue&gt;
    #   * {Types::ListObjectAttributesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_object_attributes({
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #     facet_filter: {
    #       schema_arn: "Arn",
    #       facet_name: "FacetName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].key.schema_arn #=> String
    #   resp.attributes[0].key.facet_name #=> String
    #   resp.attributes[0].key.name #=> String
    #   resp.attributes[0].value.string_value #=> String
    #   resp.attributes[0].value.binary_value #=> String
    #   resp.attributes[0].value.boolean_value #=> Boolean
    #   resp.attributes[0].value.number_value #=> String
    #   resp.attributes[0].value.datetime_value #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListObjectAttributes AWS API Documentation
    #
    # @overload list_object_attributes(params = {})
    # @param [Hash] params ({})
    def list_object_attributes(params = {}, options = {})
      req = build_request(:list_object_attributes, params)
      req.send_request(options)
    end

    # Returns a paginated list of child objects associated with a given
    # object.
    #
    # @option params [required, String] :directory_arn
    #   ARN associated with the Directory where the object resides. For more
    #   information, see arns.
    #
    # @option params [required, Types::ObjectReference] :object_reference
    #   Reference that identifies the object for which child objects are being
    #   listed.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   Maximum number of items to be retrieved in a single call. This is an
    #   approximate number.
    #
    # @option params [String] :consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #
    # @return [Types::ListObjectChildrenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListObjectChildrenResponse#children #children} => Hash&lt;String,String&gt;
    #   * {Types::ListObjectChildrenResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_object_children({
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #   })
    #
    # @example Response structure
    #
    #   resp.children #=> Hash
    #   resp.children["LinkName"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListObjectChildren AWS API Documentation
    #
    # @overload list_object_children(params = {})
    # @param [Hash] params ({})
    def list_object_children(params = {}, options = {})
      req = build_request(:list_object_children, params)
      req.send_request(options)
    end

    # Retrieves all available parent paths for any object type such as node,
    # leaf node, policy node, and index node objects. For more information
    # about objects, see [Directory Structure][1].
    #
    # Use this API to evaluate all parents for an object. The call returns
    # all objects from the root of the directory up to the requested object.
    # The API returns the number of paths based on user-defined
    # `MaxResults`, in case there are multiple paths to the parent. The
    # order of the paths and nodes returned is consistent among multiple API
    # calls unless the objects are deleted or moved. Paths not leading to
    # directory root are ignored from the target object.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#dirstructure
    #
    # @option params [required, String] :directory_arn
    #   The ARN of the directory to which the parent path applies.
    #
    # @option params [required, Types::ObjectReference] :object_reference
    #   Reference that identifies the object whose parent paths are listed.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   Maximum number of items to be retrieved in a single call. This is an
    #   approximate number.
    #
    # @return [Types::ListObjectParentPathsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListObjectParentPathsResponse#path_to_object_identifiers_list #path_to_object_identifiers_list} => Array&lt;Types::PathToObjectIdentifiers&gt;
    #   * {Types::ListObjectParentPathsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_object_parent_paths({
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.path_to_object_identifiers_list #=> Array
    #   resp.path_to_object_identifiers_list[0].path #=> String
    #   resp.path_to_object_identifiers_list[0].object_identifiers #=> Array
    #   resp.path_to_object_identifiers_list[0].object_identifiers[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListObjectParentPaths AWS API Documentation
    #
    # @overload list_object_parent_paths(params = {})
    # @param [Hash] params ({})
    def list_object_parent_paths(params = {}, options = {})
      req = build_request(:list_object_parent_paths, params)
      req.send_request(options)
    end

    # Lists parent objects associated with a given object in pagination
    # fashion.
    #
    # @option params [required, String] :directory_arn
    #   ARN associated with the Directory where the object resides. For more
    #   information, see arns.
    #
    # @option params [required, Types::ObjectReference] :object_reference
    #   Reference that identifies the object for which parent objects are
    #   being listed.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   Maximum number of items to be retrieved in a single call. This is an
    #   approximate number.
    #
    # @option params [String] :consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #
    # @return [Types::ListObjectParentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListObjectParentsResponse#parents #parents} => Hash&lt;String,String&gt;
    #   * {Types::ListObjectParentsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_object_parents({
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #   })
    #
    # @example Response structure
    #
    #   resp.parents #=> Hash
    #   resp.parents["ObjectIdentifier"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListObjectParents AWS API Documentation
    #
    # @overload list_object_parents(params = {})
    # @param [Hash] params ({})
    def list_object_parents(params = {}, options = {})
      req = build_request(:list_object_parents, params)
      req.send_request(options)
    end

    # Returns policies attached to an object in pagination fashion.
    #
    # @option params [required, String] :directory_arn
    #   ARN associated with the Directory where objects reside. For more
    #   information, see arns.
    #
    # @option params [required, Types::ObjectReference] :object_reference
    #   Reference that identifies the object for which policies will be
    #   listed.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   Maximum number of items to be retrieved in a single call. This is an
    #   approximate number.
    #
    # @option params [String] :consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #
    # @return [Types::ListObjectPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListObjectPoliciesResponse#attached_policy_ids #attached_policy_ids} => Array&lt;String&gt;
    #   * {Types::ListObjectPoliciesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_object_policies({
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #   })
    #
    # @example Response structure
    #
    #   resp.attached_policy_ids #=> Array
    #   resp.attached_policy_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListObjectPolicies AWS API Documentation
    #
    # @overload list_object_policies(params = {})
    # @param [Hash] params ({})
    def list_object_policies(params = {}, options = {})
      req = build_request(:list_object_policies, params)
      req.send_request(options)
    end

    # Returns all of the `ObjectIdentifiers` to which a given policy is
    # attached.
    #
    # @option params [required, String] :directory_arn
    #   ARN associated with the Directory where objects reside. For more
    #   information, see arns.
    #
    # @option params [required, Types::ObjectReference] :policy_reference
    #   Reference that identifies the policy object.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   Maximum number of items to be retrieved in a single call. This is an
    #   approximate number.
    #
    # @option params [String] :consistency_level
    #   Represents the manner and timing in which the successful write or
    #   update of an object is reflected in a subsequent read operation of
    #   that same object.
    #
    # @return [Types::ListPolicyAttachmentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyAttachmentsResponse#object_identifiers #object_identifiers} => Array&lt;String&gt;
    #   * {Types::ListPolicyAttachmentsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_attachments({
    #     directory_arn: "Arn", # required
    #     policy_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #     consistency_level: "SERIALIZABLE", # accepts SERIALIZABLE, EVENTUAL
    #   })
    #
    # @example Response structure
    #
    #   resp.object_identifiers #=> Array
    #   resp.object_identifiers[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListPolicyAttachments AWS API Documentation
    #
    # @overload list_policy_attachments(params = {})
    # @param [Hash] params ({})
    def list_policy_attachments(params = {}, options = {})
      req = build_request(:list_policy_attachments, params)
      req.send_request(options)
    end

    # Retrieves published schema ARNs.
    #
    # @option params [String] :next_token
    #   The pagination token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to retrieve.
    #
    # @return [Types::ListPublishedSchemaArnsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPublishedSchemaArnsResponse#schema_arns #schema_arns} => Array&lt;String&gt;
    #   * {Types::ListPublishedSchemaArnsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_published_schema_arns({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_arns #=> Array
    #   resp.schema_arns[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListPublishedSchemaArns AWS API Documentation
    #
    # @overload list_published_schema_arns(params = {})
    # @param [Hash] params ({})
    def list_published_schema_arns(params = {}, options = {})
      req = build_request(:list_published_schema_arns, params)
      req.send_request(options)
    end

    # Returns tags for a resource. Tagging is currently supported only for
    # directories with a limit of 50 tags per directory. All 50 tags are
    # returned for a given directory with this API call.
    #
    # @option params [required, String] :resource_arn
    #   ARN of the resource. Tagging is only supported for directories.
    #
    # @option params [String] :next_token
    #   The pagination token. This is for future use. Currently pagination is
    #   not supported for tagging.
    #
    # @option params [Integer] :max_results
    #   The MaxResults parameter sets the maximum number of results returned
    #   in a single page. This is for future use and is not supported
    #   currently.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists all policies from the root of the Directory to the object
    # specified. If there are no policies present, an empty list is
    # returned. If policies are present, and if some objects don't have the
    # policies attached, it returns the `ObjectIdentifier` for such objects.
    # If policies are present, it returns `ObjectIdentifier`, `policyId`,
    # and `policyType`. Paths that don't lead to the root from the target
    # object are ignored.
    #
    # @option params [required, String] :directory_arn
    #   ARN associated with the Directory. For more information, see arns.
    #
    # @option params [required, Types::ObjectReference] :object_reference
    #   Reference that identifies the object whose policies will be looked up.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   Maximum number of items to be retrieved in a single call. This is an
    #   approximate number.
    #
    # @return [Types::LookupPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LookupPolicyResponse#policy_to_path_list #policy_to_path_list} => Array&lt;Types::PolicyToPath&gt;
    #   * {Types::LookupPolicyResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.lookup_policy({
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_to_path_list #=> Array
    #   resp.policy_to_path_list[0].path #=> String
    #   resp.policy_to_path_list[0].policies #=> Array
    #   resp.policy_to_path_list[0].policies[0].policy_id #=> String
    #   resp.policy_to_path_list[0].policies[0].object_identifier #=> String
    #   resp.policy_to_path_list[0].policies[0].policy_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/LookupPolicy AWS API Documentation
    #
    # @overload lookup_policy(params = {})
    # @param [Hash] params ({})
    def lookup_policy(params = {}, options = {})
      req = build_request(:lookup_policy, params)
      req.send_request(options)
    end

    # Publishes a development schema with a version. If description and
    # attributes are specified, PublishSchema overrides the development
    # schema description and attributes. If not, the development schema
    # description and attributes are used.
    #
    # @option params [required, String] :development_schema_arn
    #   ARN associated with the development schema. For more information, see
    #   arns.
    #
    # @option params [required, String] :version
    #   Version under which the schema will be published.
    #
    # @option params [String] :name
    #   New name under which the schema will be published. If this is not
    #   provided, the development schema is considered.
    #
    # @return [Types::PublishSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PublishSchemaResponse#published_schema_arn #published_schema_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_schema({
    #     development_schema_arn: "Arn", # required
    #     version: "Version", # required
    #     name: "SchemaName",
    #   })
    #
    # @example Response structure
    #
    #   resp.published_schema_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/PublishSchema AWS API Documentation
    #
    # @overload publish_schema(params = {})
    # @param [Hash] params ({})
    def publish_schema(params = {}, options = {})
      req = build_request(:publish_schema, params)
      req.send_request(options)
    end

    # Allows a schema to be updated using JSON upload. Only available for
    # development schemas. See [JSON Schema Format][1] for more information.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_schemas.html#jsonformat
    #
    # @option params [required, String] :schema_arn
    #   The ARN of the schema to update.
    #
    # @option params [required, String] :document
    #   The replacement JSON schema.
    #
    # @return [Types::PutSchemaFromJsonResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSchemaFromJsonResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_schema_from_json({
    #     schema_arn: "Arn", # required
    #     document: "SchemaJsonDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/PutSchemaFromJson AWS API Documentation
    #
    # @overload put_schema_from_json(params = {})
    # @param [Hash] params ({})
    def put_schema_from_json(params = {}, options = {})
      req = build_request(:put_schema_from_json, params)
      req.send_request(options)
    end

    # Removes the specified facet from the specified object.
    #
    # @option params [required, String] :directory_arn
    #   The ARN of the directory in which the object resides.
    #
    # @option params [required, Types::SchemaFacet] :schema_facet
    #   The facet to remove.
    #
    # @option params [required, Types::ObjectReference] :object_reference
    #   A reference to the object to remove the facet from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_facet_from_object({
    #     directory_arn: "Arn", # required
    #     schema_facet: { # required
    #       schema_arn: "Arn",
    #       facet_name: "FacetName",
    #     },
    #     object_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/RemoveFacetFromObject AWS API Documentation
    #
    # @overload remove_facet_from_object(params = {})
    # @param [Hash] params ({})
    def remove_facet_from_object(params = {}, options = {})
      req = build_request(:remove_facet_from_object, params)
      req.send_request(options)
    end

    # API for adding tags to a resource.
    #
    # @option params [required, String] :resource_arn
    #   ARN of the resource. Tagging is only supported for directories.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   List of tag key value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # API for removing tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   ARN of the resource. Tagging is only supported for directories.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Keys of the tag that needs to be removed from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Does the following:
    #
    # 1.  Adds new `Attributes`, `Rules`, or `ObjectTypes`.
    #
    # 2.  Updates existing `Attributes`, `Rules`, or `ObjectTypes`.
    #
    # 3.  Deletes existing `Attributes`, `Rules`, or `ObjectTypes`.
    #
    # @option params [required, String] :schema_arn
    #   ARN associated with the Facet. For more information, see arns.
    #
    # @option params [required, String] :name
    #
    # @option params [Array<Types::FacetAttributeUpdate>] :attribute_updates
    #   List of attributes that need to be updated in a given schema Facet.
    #   Each attribute is followed by AttributeAction, which specifies the
    #   type of update operation to perform.
    #
    # @option params [String] :object_type
    #   Object type associated with the facet. See
    #   CreateFacetRequest$ObjectType for more details.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_facet({
    #     schema_arn: "Arn", # required
    #     name: "FacetName", # required
    #     attribute_updates: [
    #       {
    #         attribute: {
    #           name: "AttributeName", # required
    #           attribute_definition: {
    #             type: "STRING", # required, accepts STRING, BINARY, BOOLEAN, NUMBER, DATETIME
    #             default_value: {
    #               string_value: "StringAttributeValue",
    #               binary_value: "data",
    #               boolean_value: false,
    #               number_value: "NumberAttributeValue",
    #               datetime_value: Time.now,
    #             },
    #             is_immutable: false,
    #             rules: {
    #               "RuleKey" => {
    #                 type: "BINARY_LENGTH", # accepts BINARY_LENGTH, NUMBER_COMPARISON, STRING_FROM_SET, STRING_LENGTH
    #                 parameters: {
    #                   "RuleParameterKey" => "RuleParameterValue",
    #                 },
    #               },
    #             },
    #           },
    #           attribute_reference: {
    #             target_facet_name: "FacetName", # required
    #             target_attribute_name: "AttributeName", # required
    #           },
    #           required_behavior: "REQUIRED_ALWAYS", # accepts REQUIRED_ALWAYS, NOT_REQUIRED
    #         },
    #         action: "CREATE_OR_UPDATE", # accepts CREATE_OR_UPDATE, DELETE
    #       },
    #     ],
    #     object_type: "NODE", # accepts NODE, LEAF_NODE, POLICY, INDEX
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/UpdateFacet AWS API Documentation
    #
    # @overload update_facet(params = {})
    # @param [Hash] params ({})
    def update_facet(params = {}, options = {})
      req = build_request(:update_facet, params)
      req.send_request(options)
    end

    # Updates a given object's attributes.
    #
    # @option params [required, String] :directory_arn
    #   ARN associated with the Directory where the object resides. For more
    #   information, see arns.
    #
    # @option params [required, Types::ObjectReference] :object_reference
    #   Reference that identifies the object.
    #
    # @option params [required, Array<Types::ObjectAttributeUpdate>] :attribute_updates
    #   Attributes update structure.
    #
    # @return [Types::UpdateObjectAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateObjectAttributesResponse#object_identifier #object_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_object_attributes({
    #     directory_arn: "Arn", # required
    #     object_reference: { # required
    #       selector: "SelectorObjectReference",
    #     },
    #     attribute_updates: [ # required
    #       {
    #         object_attribute_key: {
    #           schema_arn: "Arn", # required
    #           facet_name: "FacetName", # required
    #           name: "AttributeName", # required
    #         },
    #         object_attribute_action: {
    #           object_attribute_action_type: "CREATE_OR_UPDATE", # accepts CREATE_OR_UPDATE, DELETE
    #           object_attribute_update_value: {
    #             string_value: "StringAttributeValue",
    #             binary_value: "data",
    #             boolean_value: false,
    #             number_value: "NumberAttributeValue",
    #             datetime_value: Time.now,
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.object_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/UpdateObjectAttributes AWS API Documentation
    #
    # @overload update_object_attributes(params = {})
    # @param [Hash] params ({})
    def update_object_attributes(params = {}, options = {})
      req = build_request(:update_object_attributes, params)
      req.send_request(options)
    end

    # Updates the schema name with a new name. Only development schema names
    # can be updated.
    #
    # @option params [required, String] :schema_arn
    #   ARN of the development schema. For more information, see arns.
    #
    # @option params [required, String] :name
    #   Name of the schema.
    #
    # @return [Types::UpdateSchemaResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSchemaResponse#schema_arn #schema_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_schema({
    #     schema_arn: "Arn", # required
    #     name: "SchemaName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.schema_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/clouddirectory-2016-05-10/UpdateSchema AWS API Documentation
    #
    # @overload update_schema(params = {})
    # @param [Hash] params ({})
    def update_schema(params = {}, options = {})
      req = build_request(:update_schema, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-clouddirectory'
      context[:gem_version] = '1.0.0.rc5'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end