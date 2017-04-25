class LongWorker
  include Sidekiq::Worker

  def perform(*args)
    12.times do |i|
    	logger.info "Tick ##{i}"
    	sleep 15
    end	
  end
end
