configuration = node['formatron_common']['configuration']
hosted_zone_name = configuration['dsl']['global']['hosted_zone_name']

logstash_config = configuration['config']['logstash']
node.override['formatron_topbeat']['logstash']['host'] = "#{logstash_config['sub_domain']}.#{hosted_zone_name}"
node.override['formatron_topbeat']['logstash']['port'] = logstash_config['port']
include_recipe 'formatron_topbeat::default'
