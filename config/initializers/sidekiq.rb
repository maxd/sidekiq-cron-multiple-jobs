Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://localhost:6379/0', namespace: 'sidekiq-cron-multiple-jobs' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://localhost:6379/0', namespace: 'sidekiq-cron-multiple-jobs' }
end

Sidekiq::Cron::Job.create(name: 'Long worker - every minute', cron: '*/1 * * * *', class: 'LongWorker')