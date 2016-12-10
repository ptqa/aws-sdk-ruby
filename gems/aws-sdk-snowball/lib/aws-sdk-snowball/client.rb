# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:snowball)

module Aws
  module Snowball
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs

      @identifier = :snowball

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
      add_plugin(Aws::Plugins::SignatureV4)
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
      # @option options [String] :access_key_id
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :simple_json (false)
      #   Disables request parameter conversion, validation, and formatting.
      #   Also disable response data type conversions. This option is useful
      #   when you want to ensure the highest level of performance by
      #   avoiding overhead of walking request parameters and response data
      #   structures.
      #
      #   When `:simple_json` is enabled, the request parameters hash must
      #   be formatted exactly as the DynamoDB API expects.
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      def initialize(*args)
        super
      end

      # @!group API Operations

      # Cancels a cluster job. You can only cancel a cluster job while it's
      # in the `AwaitingQuorum` status. You'll have at least an hour after
      # creating a cluster job to cancel it.
      # @option params [required, String] :cluster_id
      #   The 39-character ID for the cluster that you want to cancel, for
      #   example `CID123e4567-e89b-12d3-a456-426655440000`.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.cancel_cluster({
      #     cluster_id: "ClusterId", # required
      #   })
      # @overload cancel_cluster(params = {})
      # @param [Hash] params ({})
      def cancel_cluster(params = {}, options = {})
        req = build_request(:cancel_cluster, params)
        req.send_request(options)
      end

      # Cancels the specified job. You can only cancel a job before its
      # `JobState` value changes to `PreparingAppliance`. Requesting the
      # `ListJobs` or `DescribeJob` action will return a job's `JobState` as
      # part of the response element data returned.
      # @option params [required, String] :job_id
      #   The 39-character job ID for the job that you want to cancel, for
      #   example `JID123e4567-e89b-12d3-a456-426655440000`.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.cancel_job({
      #     job_id: "JobId", # required
      #   })
      # @overload cancel_job(params = {})
      # @param [Hash] params ({})
      def cancel_job(params = {}, options = {})
        req = build_request(:cancel_job, params)
        req.send_request(options)
      end

      # Creates an address for a Snowball to be shipped to.
      #
      # Addresses are validated at the time of creation. The address you
      # provide must be located within the serviceable area of your region. If
      # the address is invalid or unsupported, then an exception is thrown.
      # @option params [required, Types::Address] :address
      #   The address that you want the Snowball shipped to.
      # @return [Types::CreateAddressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateAddressResult#address_id #AddressId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_address({
      #     address: { # required
      #       address_id: "AddressId",
      #       name: "String",
      #       company: "String",
      #       street_1: "String",
      #       street_2: "String",
      #       street_3: "String",
      #       city: "String",
      #       state_or_province: "String",
      #       prefecture_or_district: "String",
      #       landmark: "String",
      #       country: "String",
      #       postal_code: "String",
      #       phone_number: "String",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.address_id #=> String
      # @overload create_address(params = {})
      # @param [Hash] params ({})
      def create_address(params = {}, options = {})
        req = build_request(:create_address, params)
        req.send_request(options)
      end

      # Creates an empty cluster. Each cluster supports five nodes. You use
      # the CreateJob action separately to create the jobs for each of these
      # nodes. The cluster does not ship until these five node jobs have been
      # created.
      # @option params [required, String] :job_type
      #   The type of job for this cluster. Currently, the only job type
      #   supported for clusters is `LOCAL_USE`.
      # @option params [required, Types::JobResource] :resources
      #   The resources associated with the cluster job. These resources include
      #   Amazon S3 buckets and optional AWS Lambda functions written in the
      #   Python language.
      # @option params [String] :description
      #   An optional description of this specific cluster, for example
      #   `Environmental Data Cluster-01`.
      # @option params [required, String] :address_id
      #   The ID for the address that you want the cluster shipped to.&gt;
      # @option params [String] :kms_key_arn
      #   The `KmsKeyARN` value that you want to associate with this cluster.
      #   `KmsKeyARN` values are created by using the [CreateKey][1] API action
      #   in AWS Key Management Service (AWS KMS).
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html
      # @option params [required, String] :role_arn
      #   The `RoleARN` that you want to associate with this cluster. `RoleArn`
      #   values are created by using the [CreateRole][1] API action in AWS
      #   Identity and Access Management (IAM).
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
      # @option params [String] :snowball_type
      #   The type of AWS Snowball appliance to use for this cluster. Currently,
      #   the only supported appliance type for cluster jobs is `EDGE`.
      # @option params [required, String] :shipping_option
      #   The shipping speed for each node in this cluster. This speed doesn't
      #   dictate how soon you'll get each Snowball Edge appliance, rather it
      #   represents how quickly each appliance moves to its destination while
      #   in transit. Regional shipping speeds are as follows:
      #
      #   * In Australia, you have access to express shipping. Typically,
      #     appliances shipped express are delivered in about a day.
      #
      #   * In the European Union (EU), you have access to express shipping.
      #     Typically, Snowball Edges shipped express are delivered in about a
      #     day. In addition, most countries in the EU have access to standard
      #     shipping, which typically takes less than a week, one way.
      #
      #   * In India, Snowball Edges are delivered in one to seven days.
      #
      #   * In the US, you have access to one-day shipping and two-day shipping.
      # @option params [Types::Notification] :notification
      #   The Amazon Simple Notification Service (Amazon SNS) notification
      #   settings for this cluster.
      # @return [Types::CreateClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateClusterResult#cluster_id #ClusterId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_cluster({
      #     job_type: "IMPORT", # required, accepts IMPORT, EXPORT, LOCAL_USE
      #     resources: { # required
      #       s3_resources: [
      #         {
      #           bucket_arn: "ResourceARN",
      #           key_range: {
      #             begin_marker: "String",
      #             end_marker: "String",
      #           },
      #         },
      #       ],
      #       lambda_resources: [
      #         {
      #           lambda_arn: "ResourceARN",
      #           event_triggers: [
      #             {
      #               event_resource_arn: "ResourceARN",
      #             },
      #           ],
      #         },
      #       ],
      #     },
      #     description: "String",
      #     address_id: "AddressId", # required
      #     kms_key_arn: "KmsKeyARN",
      #     role_arn: "RoleARN", # required
      #     snowball_type: "STANDARD", # accepts STANDARD, EDGE
      #     shipping_option: "SECOND_DAY", # required, accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
      #     notification: {
      #       sns_topic_arn: "SnsTopicARN",
      #       job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
      #       notify_all: false,
      #     },
      #   })
      #
      # @example Response structure
      #   resp.cluster_id #=> String
      # @overload create_cluster(params = {})
      # @param [Hash] params ({})
      def create_cluster(params = {}, options = {})
        req = build_request(:create_cluster, params)
        req.send_request(options)
      end

      # Creates a job to import or export data between Amazon S3 and your
      # on-premises data center. Your AWS account must have the right trust
      # policies and permissions in place to create a job for Snowball. If
      # you're creating a job for a node in a cluster, you only need to
      # provide the `clusterId` value; the other job attributes are inherited
      # from the cluster. .
      # @option params [String] :job_type
      #   Defines the type of job that you're creating.
      # @option params [Types::JobResource] :resources
      #   Defines the Amazon S3 buckets associated with this job.
      #
      #   With `IMPORT` jobs, you specify the bucket or buckets that your
      #   transferred data will be imported into.
      #
      #   With `EXPORT` jobs, you specify the bucket or buckets that your
      #   transferred data will be exported from. Optionally, you can also
      #   specify a `KeyRange` value. If you choose to export a range, you
      #   define the length of the range by providing either an inclusive
      #   `BeginMarker` value, an inclusive `EndMarker` value, or both. Ranges
      #   are UTF-8 binary sorted.
      # @option params [String] :description
      #   Defines an optional description of this specific job, for example
      #   `Important Photos 2016-08-11`.
      # @option params [String] :address_id
      #   The ID for the address that you want the Snowball shipped to.
      # @option params [String] :kms_key_arn
      #   The `KmsKeyARN` that you want to associate with this job. `KmsKeyARN`s
      #   are created using the [CreateKey][1] AWS Key Management Service (KMS)
      #   API action.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html
      # @option params [String] :role_arn
      #   The `RoleARN` that you want to associate with this job. `RoleArn`s are
      #   created using the [CreateRole][1] AWS Identity and Access Management
      #   (IAM) API action.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
      # @option params [String] :snowball_capacity_preference
      #   If your job is being created in one of the US regions, you have the
      #   option of specifying what size Snowball you'd like for this job. In
      #   all other regions, Snowballs come with 80 TB in storage capacity.
      # @option params [String] :shipping_option
      #   The shipping speed for this job. This speed doesn't dictate how soon
      #   you'll get the Snowball, rather it represents how quickly the
      #   Snowball moves to its destination while in transit. Regional shipping
      #   speeds are as follows:
      #
      #   * In Australia, you have access to express shipping. Typically,
      #     Snowballs shipped express are delivered in about a day.
      #
      #   * In the European Union (EU), you have access to express shipping.
      #     Typically, Snowballs shipped express are delivered in about a day.
      #     In addition, most countries in the EU have access to standard
      #     shipping, which typically takes less than a week, one way.
      #
      #   * In India, Snowballs are delivered in one to seven days.
      #
      #   * In the US, you have access to one-day shipping and two-day shipping.
      # @option params [Types::Notification] :notification
      #   Defines the Amazon Simple Notification Service (Amazon SNS)
      #   notification settings for this job.
      # @option params [String] :cluster_id
      #   The ID of a cluster. If you're creating a job for a node in a
      #   cluster, you need to provide only this `clusterId` value. The other
      #   job attributes are inherited from the cluster.
      # @option params [String] :snowball_type
      #   The type of AWS Snowball appliance to use for this job. Currently, the
      #   only supported appliance type for cluster jobs is `EDGE`.
      # @return [Types::CreateJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::CreateJobResult#job_id #JobId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_job({
      #     job_type: "IMPORT", # accepts IMPORT, EXPORT, LOCAL_USE
      #     resources: {
      #       s3_resources: [
      #         {
      #           bucket_arn: "ResourceARN",
      #           key_range: {
      #             begin_marker: "String",
      #             end_marker: "String",
      #           },
      #         },
      #       ],
      #       lambda_resources: [
      #         {
      #           lambda_arn: "ResourceARN",
      #           event_triggers: [
      #             {
      #               event_resource_arn: "ResourceARN",
      #             },
      #           ],
      #         },
      #       ],
      #     },
      #     description: "String",
      #     address_id: "AddressId",
      #     kms_key_arn: "KmsKeyARN",
      #     role_arn: "RoleARN",
      #     snowball_capacity_preference: "T50", # accepts T50, T80, T100, NoPreference
      #     shipping_option: "SECOND_DAY", # accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
      #     notification: {
      #       sns_topic_arn: "SnsTopicARN",
      #       job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
      #       notify_all: false,
      #     },
      #     cluster_id: "ClusterId",
      #     snowball_type: "STANDARD", # accepts STANDARD, EDGE
      #   })
      #
      # @example Response structure
      #   resp.job_id #=> String
      # @overload create_job(params = {})
      # @param [Hash] params ({})
      def create_job(params = {}, options = {})
        req = build_request(:create_job, params)
        req.send_request(options)
      end

      # Takes an `AddressId` and returns specific details about that address
      # in the form of an `Address` object.
      # @option params [required, String] :address_id
      #   The automatically generated ID for a specific address.
      # @return [Types::DescribeAddressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeAddressResult#address #Address} => Types::Address
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_address({
      #     address_id: "AddressId", # required
      #   })
      #
      # @example Response structure
      #   resp.address.address_id #=> String
      #   resp.address.name #=> String
      #   resp.address.company #=> String
      #   resp.address.street_1 #=> String
      #   resp.address.street_2 #=> String
      #   resp.address.street_3 #=> String
      #   resp.address.city #=> String
      #   resp.address.state_or_province #=> String
      #   resp.address.prefecture_or_district #=> String
      #   resp.address.landmark #=> String
      #   resp.address.country #=> String
      #   resp.address.postal_code #=> String
      #   resp.address.phone_number #=> String
      # @overload describe_address(params = {})
      # @param [Hash] params ({})
      def describe_address(params = {}, options = {})
        req = build_request(:describe_address, params)
        req.send_request(options)
      end

      # Returns a specified number of `ADDRESS` objects. Calling this API in
      # one of the US regions will return addresses from the list of all
      # addresses associated with this account in all US regions.
      # @option params [Integer] :max_results
      #   The number of `ADDRESS` objects to return.
      # @option params [String] :next_token
      #   HTTP requests are stateless. To identify what object comes "next" in
      #   the list of `ADDRESS` objects, you have the option of specifying a
      #   value for `NextToken` as the starting point for your list of returned
      #   addresses.
      # @return [Types::DescribeAddressesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeAddressesResult#addresses #Addresses} => Array&lt;Types::Address&gt;
      #   * {Types::DescribeAddressesResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_addresses({
      #     max_results: 1,
      #     next_token: "String",
      #   })
      #
      # @example Response structure
      #   resp.addresses #=> Array
      #   resp.addresses[0].address_id #=> String
      #   resp.addresses[0].name #=> String
      #   resp.addresses[0].company #=> String
      #   resp.addresses[0].street_1 #=> String
      #   resp.addresses[0].street_2 #=> String
      #   resp.addresses[0].street_3 #=> String
      #   resp.addresses[0].city #=> String
      #   resp.addresses[0].state_or_province #=> String
      #   resp.addresses[0].prefecture_or_district #=> String
      #   resp.addresses[0].landmark #=> String
      #   resp.addresses[0].country #=> String
      #   resp.addresses[0].postal_code #=> String
      #   resp.addresses[0].phone_number #=> String
      #   resp.next_token #=> String
      # @overload describe_addresses(params = {})
      # @param [Hash] params ({})
      def describe_addresses(params = {}, options = {})
        req = build_request(:describe_addresses, params)
        req.send_request(options)
      end

      # Returns information about a specific cluster including shipping
      # information, cluster status, and other important metadata.
      # @option params [required, String] :cluster_id
      #   The automatically generated ID for a cluster.
      # @return [Types::DescribeClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeClusterResult#cluster_metadata #ClusterMetadata} => Types::ClusterMetadata
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_cluster({
      #     cluster_id: "ClusterId", # required
      #   })
      #
      # @example Response structure
      #   resp.cluster_metadata.cluster_id #=> String
      #   resp.cluster_metadata.description #=> String
      #   resp.cluster_metadata.kms_key_arn #=> String
      #   resp.cluster_metadata.role_arn #=> String
      #   resp.cluster_metadata.cluster_state #=> String, one of "AwaitingQuorum", "Pending", "InUse", "Complete", "Cancelled"
      #   resp.cluster_metadata.job_type #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
      #   resp.cluster_metadata.snowball_type #=> String, one of "STANDARD", "EDGE"
      #   resp.cluster_metadata.creation_date #=> Time
      #   resp.cluster_metadata.resources.s3_resources #=> Array
      #   resp.cluster_metadata.resources.s3_resources[0].bucket_arn #=> String
      #   resp.cluster_metadata.resources.s3_resources[0].key_range.begin_marker #=> String
      #   resp.cluster_metadata.resources.s3_resources[0].key_range.end_marker #=> String
      #   resp.cluster_metadata.resources.lambda_resources #=> Array
      #   resp.cluster_metadata.resources.lambda_resources[0].lambda_arn #=> String
      #   resp.cluster_metadata.resources.lambda_resources[0].event_triggers #=> Array
      #   resp.cluster_metadata.resources.lambda_resources[0].event_triggers[0].event_resource_arn #=> String
      #   resp.cluster_metadata.address_id #=> String
      #   resp.cluster_metadata.shipping_option #=> String, one of "SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"
      #   resp.cluster_metadata.notification.sns_topic_arn #=> String
      #   resp.cluster_metadata.notification.job_states_to_notify #=> Array
      #   resp.cluster_metadata.notification.job_states_to_notify[0] #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
      #   resp.cluster_metadata.notification.notify_all #=> Boolean
      # @overload describe_cluster(params = {})
      # @param [Hash] params ({})
      def describe_cluster(params = {}, options = {})
        req = build_request(:describe_cluster, params)
        req.send_request(options)
      end

      # Returns information about a specific job including shipping
      # information, job status, and other important metadata. .
      # @option params [required, String] :job_id
      #   The automatically generated ID for a job, for example
      #   `JID123e4567-e89b-12d3-a456-426655440000`.
      # @return [Types::DescribeJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeJobResult#job_metadata #JobMetadata} => Types::JobMetadata
      #   * {Types::DescribeJobResult#sub_job_metadata #SubJobMetadata} => Array&lt;Types::JobMetadata&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_job({
      #     job_id: "JobId", # required
      #   })
      #
      # @example Response structure
      #   resp.job_metadata.job_id #=> String
      #   resp.job_metadata.job_state #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
      #   resp.job_metadata.job_type #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
      #   resp.job_metadata.snowball_type #=> String, one of "STANDARD", "EDGE"
      #   resp.job_metadata.creation_date #=> Time
      #   resp.job_metadata.resources.s3_resources #=> Array
      #   resp.job_metadata.resources.s3_resources[0].bucket_arn #=> String
      #   resp.job_metadata.resources.s3_resources[0].key_range.begin_marker #=> String
      #   resp.job_metadata.resources.s3_resources[0].key_range.end_marker #=> String
      #   resp.job_metadata.resources.lambda_resources #=> Array
      #   resp.job_metadata.resources.lambda_resources[0].lambda_arn #=> String
      #   resp.job_metadata.resources.lambda_resources[0].event_triggers #=> Array
      #   resp.job_metadata.resources.lambda_resources[0].event_triggers[0].event_resource_arn #=> String
      #   resp.job_metadata.description #=> String
      #   resp.job_metadata.kms_key_arn #=> String
      #   resp.job_metadata.role_arn #=> String
      #   resp.job_metadata.address_id #=> String
      #   resp.job_metadata.shipping_details.shipping_option #=> String, one of "SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"
      #   resp.job_metadata.shipping_details.inbound_shipment.status #=> String
      #   resp.job_metadata.shipping_details.inbound_shipment.tracking_number #=> String
      #   resp.job_metadata.shipping_details.outbound_shipment.status #=> String
      #   resp.job_metadata.shipping_details.outbound_shipment.tracking_number #=> String
      #   resp.job_metadata.snowball_capacity_preference #=> String, one of "T50", "T80", "T100", "NoPreference"
      #   resp.job_metadata.notification.sns_topic_arn #=> String
      #   resp.job_metadata.notification.job_states_to_notify #=> Array
      #   resp.job_metadata.notification.job_states_to_notify[0] #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
      #   resp.job_metadata.notification.notify_all #=> Boolean
      #   resp.job_metadata.data_transfer_progress.bytes_transferred #=> Integer
      #   resp.job_metadata.data_transfer_progress.objects_transferred #=> Integer
      #   resp.job_metadata.data_transfer_progress.total_bytes #=> Integer
      #   resp.job_metadata.data_transfer_progress.total_objects #=> Integer
      #   resp.job_metadata.job_log_info.job_completion_report_uri #=> String
      #   resp.job_metadata.job_log_info.job_success_log_uri #=> String
      #   resp.job_metadata.job_log_info.job_failure_log_uri #=> String
      #   resp.job_metadata.cluster_id #=> String
      #   resp.sub_job_metadata #=> Array
      #   resp.sub_job_metadata[0].job_id #=> String
      #   resp.sub_job_metadata[0].job_state #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
      #   resp.sub_job_metadata[0].job_type #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
      #   resp.sub_job_metadata[0].snowball_type #=> String, one of "STANDARD", "EDGE"
      #   resp.sub_job_metadata[0].creation_date #=> Time
      #   resp.sub_job_metadata[0].resources.s3_resources #=> Array
      #   resp.sub_job_metadata[0].resources.s3_resources[0].bucket_arn #=> String
      #   resp.sub_job_metadata[0].resources.s3_resources[0].key_range.begin_marker #=> String
      #   resp.sub_job_metadata[0].resources.s3_resources[0].key_range.end_marker #=> String
      #   resp.sub_job_metadata[0].resources.lambda_resources #=> Array
      #   resp.sub_job_metadata[0].resources.lambda_resources[0].lambda_arn #=> String
      #   resp.sub_job_metadata[0].resources.lambda_resources[0].event_triggers #=> Array
      #   resp.sub_job_metadata[0].resources.lambda_resources[0].event_triggers[0].event_resource_arn #=> String
      #   resp.sub_job_metadata[0].description #=> String
      #   resp.sub_job_metadata[0].kms_key_arn #=> String
      #   resp.sub_job_metadata[0].role_arn #=> String
      #   resp.sub_job_metadata[0].address_id #=> String
      #   resp.sub_job_metadata[0].shipping_details.shipping_option #=> String, one of "SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"
      #   resp.sub_job_metadata[0].shipping_details.inbound_shipment.status #=> String
      #   resp.sub_job_metadata[0].shipping_details.inbound_shipment.tracking_number #=> String
      #   resp.sub_job_metadata[0].shipping_details.outbound_shipment.status #=> String
      #   resp.sub_job_metadata[0].shipping_details.outbound_shipment.tracking_number #=> String
      #   resp.sub_job_metadata[0].snowball_capacity_preference #=> String, one of "T50", "T80", "T100", "NoPreference"
      #   resp.sub_job_metadata[0].notification.sns_topic_arn #=> String
      #   resp.sub_job_metadata[0].notification.job_states_to_notify #=> Array
      #   resp.sub_job_metadata[0].notification.job_states_to_notify[0] #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
      #   resp.sub_job_metadata[0].notification.notify_all #=> Boolean
      #   resp.sub_job_metadata[0].data_transfer_progress.bytes_transferred #=> Integer
      #   resp.sub_job_metadata[0].data_transfer_progress.objects_transferred #=> Integer
      #   resp.sub_job_metadata[0].data_transfer_progress.total_bytes #=> Integer
      #   resp.sub_job_metadata[0].data_transfer_progress.total_objects #=> Integer
      #   resp.sub_job_metadata[0].job_log_info.job_completion_report_uri #=> String
      #   resp.sub_job_metadata[0].job_log_info.job_success_log_uri #=> String
      #   resp.sub_job_metadata[0].job_log_info.job_failure_log_uri #=> String
      #   resp.sub_job_metadata[0].cluster_id #=> String
      # @overload describe_job(params = {})
      # @param [Hash] params ({})
      def describe_job(params = {}, options = {})
        req = build_request(:describe_job, params)
        req.send_request(options)
      end

      # Returns a link to an Amazon S3 presigned URL for the manifest file
      # associated with the specified `JobId` value. You can access the
      # manifest file for up to 60 minutes after this request has been made.
      # To access the manifest file after 60 minutes have passed, you'll have
      # to make another call to the `GetJobManifest` action.
      #
      # The manifest is an encrypted file that you can download after your job
      # enters the `WithCustomer` status. The manifest is decrypted by using
      # the `UnlockCode` code value, when you pass both values to the Snowball
      # through the Snowball client when the client is started for the first
      # time.
      #
      # As a best practice, we recommend that you don't save a copy of an
      # `UnlockCode` value in the same location as the manifest file for that
      # job. Saving these separately helps prevent unauthorized parties from
      # gaining access to the Snowball associated with that job.
      #
      # The credentials of a given job, including its manifest file and unlock
      # code, expire 90 days after the job is created.
      # @option params [required, String] :job_id
      #   The ID for a job that you want to get the manifest file for, for
      #   example `JID123e4567-e89b-12d3-a456-426655440000`.
      # @return [Types::GetJobManifestResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetJobManifestResult#manifest_uri #ManifestURI} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_job_manifest({
      #     job_id: "JobId", # required
      #   })
      #
      # @example Response structure
      #   resp.manifest_uri #=> String
      # @overload get_job_manifest(params = {})
      # @param [Hash] params ({})
      def get_job_manifest(params = {}, options = {})
        req = build_request(:get_job_manifest, params)
        req.send_request(options)
      end

      # Returns the `UnlockCode` code value for the specified job. A
      # particular `UnlockCode` value can be accessed for up to 90 days after
      # the associated job has been created.
      #
      # The `UnlockCode` value is a 29-character code with 25 alphanumeric
      # characters and 4 hyphens. This code is used to decrypt the manifest
      # file when it is passed along with the manifest to the Snowball through
      # the Snowball client when the client is started for the first time.
      #
      # As a best practice, we recommend that you don't save a copy of the
      # `UnlockCode` in the same location as the manifest file for that job.
      # Saving these separately helps prevent unauthorized parties from
      # gaining access to the Snowball associated with that job.
      # @option params [required, String] :job_id
      #   The ID for the job that you want to get the `UnlockCode` value for,
      #   for example `JID123e4567-e89b-12d3-a456-426655440000`.
      # @return [Types::GetJobUnlockCodeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetJobUnlockCodeResult#unlock_code #UnlockCode} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_job_unlock_code({
      #     job_id: "JobId", # required
      #   })
      #
      # @example Response structure
      #   resp.unlock_code #=> String
      # @overload get_job_unlock_code(params = {})
      # @param [Hash] params ({})
      def get_job_unlock_code(params = {}, options = {})
        req = build_request(:get_job_unlock_code, params)
        req.send_request(options)
      end

      # Returns information about the Snowball service limit for your account,
      # and also the number of Snowballs your account has in use.
      #
      # The default service limit for the number of Snowballs that you can
      # have at one time is 1. If you want to increase your service limit,
      # contact AWS Support.
      # @return [Types::GetSnowballUsageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetSnowballUsageResult#snowball_limit #SnowballLimit} => Integer
      #   * {Types::GetSnowballUsageResult#snowballs_in_use #SnowballsInUse} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_snowball_usage()
      #
      # @example Response structure
      #   resp.snowball_limit #=> Integer
      #   resp.snowballs_in_use #=> Integer
      # @overload get_snowball_usage(params = {})
      # @param [Hash] params ({})
      def get_snowball_usage(params = {}, options = {})
        req = build_request(:get_snowball_usage, params)
        req.send_request(options)
      end

      # Returns an array of `JobListEntry` objects of the specified length.
      # Each `JobListEntry` object is for a job in the specified cluster and
      # contains a job's state, a job's ID, and other information.
      # @option params [required, String] :cluster_id
      #   The 39-character ID for the cluster that you want to list, for example
      #   `CID123e4567-e89b-12d3-a456-426655440000`.
      # @option params [Integer] :max_results
      #   The number of `JobListEntry` objects to return.
      # @option params [String] :next_token
      #   HTTP requests are stateless. To identify what object comes "next" in
      #   the list of `JobListEntry` objects, you have the option of specifying
      #   `NextToken` as the starting point for your returned list.
      # @return [Types::ListClusterJobsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListClusterJobsResult#job_list_entries #JobListEntries} => Array&lt;Types::JobListEntry&gt;
      #   * {Types::ListClusterJobsResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_cluster_jobs({
      #     cluster_id: "ClusterId", # required
      #     max_results: 1,
      #     next_token: "String",
      #   })
      #
      # @example Response structure
      #   resp.job_list_entries #=> Array
      #   resp.job_list_entries[0].job_id #=> String
      #   resp.job_list_entries[0].job_state #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
      #   resp.job_list_entries[0].is_master #=> Boolean
      #   resp.job_list_entries[0].job_type #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
      #   resp.job_list_entries[0].snowball_type #=> String, one of "STANDARD", "EDGE"
      #   resp.job_list_entries[0].creation_date #=> Time
      #   resp.job_list_entries[0].description #=> String
      #   resp.next_token #=> String
      # @overload list_cluster_jobs(params = {})
      # @param [Hash] params ({})
      def list_cluster_jobs(params = {}, options = {})
        req = build_request(:list_cluster_jobs, params)
        req.send_request(options)
      end

      # Returns an array of `ClusterListEntry` objects of the specified
      # length. Each `ClusterListEntry` object contains a cluster's state, a
      # cluster's ID, and other important status information.
      # @option params [Integer] :max_results
      #   The number of `ClusterListEntry` objects to return.
      # @option params [String] :next_token
      #   HTTP requests are stateless. To identify what object comes "next" in
      #   the list of `ClusterListEntry` objects, you have the option of
      #   specifying `NextToken` as the starting point for your returned list.
      # @return [Types::ListClustersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListClustersResult#cluster_list_entries #ClusterListEntries} => Array&lt;Types::ClusterListEntry&gt;
      #   * {Types::ListClustersResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_clusters({
      #     max_results: 1,
      #     next_token: "String",
      #   })
      #
      # @example Response structure
      #   resp.cluster_list_entries #=> Array
      #   resp.cluster_list_entries[0].cluster_id #=> String
      #   resp.cluster_list_entries[0].cluster_state #=> String, one of "AwaitingQuorum", "Pending", "InUse", "Complete", "Cancelled"
      #   resp.cluster_list_entries[0].creation_date #=> Time
      #   resp.cluster_list_entries[0].description #=> String
      #   resp.next_token #=> String
      # @overload list_clusters(params = {})
      # @param [Hash] params ({})
      def list_clusters(params = {}, options = {})
        req = build_request(:list_clusters, params)
        req.send_request(options)
      end

      # Returns an array of `JobListEntry` objects of the specified length.
      # Each `JobListEntry` object contains a job's state, a job's ID, and a
      # value that indicates whether the job is a job part, in the case of
      # export jobs. Calling this API action in one of the US regions will
      # return jobs from the list of all jobs associated with this account in
      # all US regions.
      # @option params [Integer] :max_results
      #   The number of `JobListEntry` objects to return.
      # @option params [String] :next_token
      #   HTTP requests are stateless. To identify what object comes "next" in
      #   the list of `JobListEntry` objects, you have the option of specifying
      #   `NextToken` as the starting point for your returned list.
      # @return [Types::ListJobsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListJobsResult#job_list_entries #JobListEntries} => Array&lt;Types::JobListEntry&gt;
      #   * {Types::ListJobsResult#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_jobs({
      #     max_results: 1,
      #     next_token: "String",
      #   })
      #
      # @example Response structure
      #   resp.job_list_entries #=> Array
      #   resp.job_list_entries[0].job_id #=> String
      #   resp.job_list_entries[0].job_state #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
      #   resp.job_list_entries[0].is_master #=> Boolean
      #   resp.job_list_entries[0].job_type #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
      #   resp.job_list_entries[0].snowball_type #=> String, one of "STANDARD", "EDGE"
      #   resp.job_list_entries[0].creation_date #=> Time
      #   resp.job_list_entries[0].description #=> String
      #   resp.next_token #=> String
      # @overload list_jobs(params = {})
      # @param [Hash] params ({})
      def list_jobs(params = {}, options = {})
        req = build_request(:list_jobs, params)
        req.send_request(options)
      end

      # While a cluster's `ClusterState` value is in the `AwaitingQuorum`
      # state, you can update some of the information associated with a
      # cluster. Once the cluster changes to a different job state, usually 60
      # minutes after the cluster being created, this action is no longer
      # available.
      # @option params [required, String] :cluster_id
      #   The cluster ID of the cluster that you want to update, for example
      #   `CID123e4567-e89b-12d3-a456-426655440000`.
      # @option params [String] :role_arn
      #   The new role Amazon Resource Name (ARN) that you want to associate
      #   with this cluster. To create a role ARN, use the [CreateRole][1] API
      #   action in AWS Identity and Access Management (IAM).
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
      # @option params [String] :description
      #   The updated description of this cluster.
      # @option params [Types::JobResource] :resources
      #   The updated arrays of JobResource objects that can include updated
      #   S3Resource objects or LambdaResource objects.
      # @option params [String] :address_id
      #   The ID of the updated Address object.
      # @option params [String] :shipping_option
      #   The updated shipping option value of this cluster's ShippingDetails
      #   object.
      # @option params [Types::Notification] :notification
      #   The new or updated Notification object.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_cluster({
      #     cluster_id: "ClusterId", # required
      #     role_arn: "RoleARN",
      #     description: "String",
      #     resources: {
      #       s3_resources: [
      #         {
      #           bucket_arn: "ResourceARN",
      #           key_range: {
      #             begin_marker: "String",
      #             end_marker: "String",
      #           },
      #         },
      #       ],
      #       lambda_resources: [
      #         {
      #           lambda_arn: "ResourceARN",
      #           event_triggers: [
      #             {
      #               event_resource_arn: "ResourceARN",
      #             },
      #           ],
      #         },
      #       ],
      #     },
      #     address_id: "AddressId",
      #     shipping_option: "SECOND_DAY", # accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
      #     notification: {
      #       sns_topic_arn: "SnsTopicARN",
      #       job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
      #       notify_all: false,
      #     },
      #   })
      # @overload update_cluster(params = {})
      # @param [Hash] params ({})
      def update_cluster(params = {}, options = {})
        req = build_request(:update_cluster, params)
        req.send_request(options)
      end

      # While a job's `JobState` value is `New`, you can update some of the
      # information associated with a job. Once the job changes to a different
      # job state, usually within 60 minutes of the job being created, this
      # action is no longer available.
      # @option params [required, String] :job_id
      #   The job ID of the job that you want to update, for example
      #   `JID123e4567-e89b-12d3-a456-426655440000`.
      # @option params [String] :role_arn
      #   The new role Amazon Resource Name (ARN) that you want to associate
      #   with this job. To create a role ARN, use the [CreateRole][1] AWS
      #   Identity and Access Management (IAM) API action.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
      # @option params [Types::Notification] :notification
      #   The new or updated Notification object.
      # @option params [Types::JobResource] :resources
      #   The updated S3Resource object (for a single Amazon S3 bucket or key
      #   range), or the updated JobResource object (for multiple buckets or key
      #   ranges).
      # @option params [String] :address_id
      #   The ID of the updated Address object.
      # @option params [String] :shipping_option
      #   The updated shipping option value of this job's ShippingDetails
      #   object.
      # @option params [String] :description
      #   The updated description of this job's JobMetadata object.
      # @option params [String] :snowball_capacity_preference
      #   The updated `SnowballCapacityPreference` of this job's JobMetadata
      #   object. The 50 TB Snowballs are only available in the US regions.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_job({
      #     job_id: "JobId", # required
      #     role_arn: "RoleARN",
      #     notification: {
      #       sns_topic_arn: "SnsTopicARN",
      #       job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
      #       notify_all: false,
      #     },
      #     resources: {
      #       s3_resources: [
      #         {
      #           bucket_arn: "ResourceARN",
      #           key_range: {
      #             begin_marker: "String",
      #             end_marker: "String",
      #           },
      #         },
      #       ],
      #       lambda_resources: [
      #         {
      #           lambda_arn: "ResourceARN",
      #           event_triggers: [
      #             {
      #               event_resource_arn: "ResourceARN",
      #             },
      #           ],
      #         },
      #       ],
      #     },
      #     address_id: "AddressId",
      #     shipping_option: "SECOND_DAY", # accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
      #     description: "String",
      #     snowball_capacity_preference: "T50", # accepts T50, T80, T100, NoPreference
      #   })
      # @overload update_job(params = {})
      # @param [Hash] params ({})
      def update_job(params = {}, options = {})
        req = build_request(:update_job, params)
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
        context[:gem_name] = 'aws-sdk-snowball'
        context[:gem_version] = '1.0.0.rc1'
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
end