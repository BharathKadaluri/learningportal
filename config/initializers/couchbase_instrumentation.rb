require 'new_relic/agent/method_tracer'
Couchbase.module_eval do
  class << self
    include NewRelic::Agent::MethodTracer
    add_method_tracer :connect, 'Couchbase/connect'
    add_method_tracer :bucket,  'Couchbase/bucket'
  end
end

Couchbase::Bucket.instance_eval do
  include NewRelic::Agent::MethodTracer
  add_method_tracer :add, 'Couchbase/Bucket/add'
  add_method_tracer :all_docs, 'Couchbase/Bucket/all_docs'
  add_method_tracer :append, 'Couchbase/Bucket/append'
  add_method_tracer :async?, 'Couchbase/Bucket/async?'
  add_method_tracer :authority, 'Couchbase/Bucket/authority'
  add_method_tracer :bucket, 'Couchbase/Bucket/bucket'
  add_method_tracer :cas, 'Couchbase/Bucket/cas'
  add_method_tracer :compare_and_swap, 'Couchbase/Bucket/compare_and_swap'
  add_method_tracer :connected?, 'Couchbase/Bucket/connected?'
  add_method_tracer :decr, 'Couchbase/Bucket/decr'
  add_method_tracer :decrement, 'Couchbase/Bucket/decrement'
  add_method_tracer :default_flags, 'Couchbase/Bucket/default_flags'
  add_method_tracer :default_flags=, 'Couchbase/Bucket/default_flags='
  add_method_tracer :default_format, 'Couchbase/Bucket/default_format'
  add_method_tracer :default_format=, 'Couchbase/Bucket/default_format='
  add_method_tracer :delete, 'Couchbase/Bucket/delete'
  add_method_tracer :delete_design_doc, 'Couchbase/Bucket/delete_design_doc'
  add_method_tracer :design_docs, 'Couchbase/Bucket/design_docs'
  add_method_tracer :disconnect, 'Couchbase/Bucket/disconnect'
  add_method_tracer :environment, 'Couchbase/Bucket/environment'
  add_method_tracer :flush, 'Couchbase/Bucket/flush'
  add_method_tracer :get, 'Couchbase/Bucket/get'
  add_method_tracer :hostname, 'Couchbase/Bucket/hostname'
  add_method_tracer :incr, 'Couchbase/Bucket/incr'
  add_method_tracer :increment, 'Couchbase/Bucket/increment'
  add_method_tracer :make_couch_request, 'Couchbase/Bucket/make_couch_request'
  add_method_tracer :on_error, 'Couchbase/Bucket/on_error'
  add_method_tracer :on_error=, 'Couchbase/Bucket/on_error='
  add_method_tracer :password, 'Couchbase/Bucket/password'
  add_method_tracer :pool, 'Couchbase/Bucket/pool'
  add_method_tracer :port, 'Couchbase/Bucket/port'
  add_method_tracer :prepend, 'Couchbase/Bucket/prepend'
  add_method_tracer :quiet, 'Couchbase/Bucket/quiet'
  add_method_tracer :quiet=, 'Couchbase/Bucket/quiet='
  add_method_tracer :reconnect, 'Couchbase/Bucket/reconnect'
  add_method_tracer :replace, 'Couchbase/Bucket/replace'
  add_method_tracer :run, 'Couchbase/Bucket/run'
  add_method_tracer :save_design_doc, 'Couchbase/Bucket/save_design_doc'
  add_method_tracer :seqno, 'Couchbase/Bucket/seqno'
  add_method_tracer :set, 'Couchbase/Bucket/set'
  add_method_tracer :stats, 'Couchbase/Bucket/stats'
  add_method_tracer :stop, 'Couchbase/Bucket/stop'
  add_method_tracer :timeout, 'Couchbase/Bucket/timeout'
  add_method_tracer :timeout=, 'Couchbase/Bucket/timeout='
  add_method_tracer :touch, 'Couchbase/Bucket/touch'
  add_method_tracer :url, 'Couchbase/Bucket/url'
  add_method_tracer :username, 'Couchbase/Bucket/username'
  add_method_tracer :version, 'Couchbase/Bucket/version'
  add_method_tracer :wait_for_seqno, 'Couchbase/Bucket/wait_for_seqno'
end