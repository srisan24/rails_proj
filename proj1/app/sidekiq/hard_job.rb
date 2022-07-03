class HardJob
  include Sidekiq::Job

  def perform(*args)
    puts "long process"
    args.extract_options! 
  end
end
