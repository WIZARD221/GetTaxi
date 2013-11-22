namespace :import do
  require 'json'
  
  desc "import data from files to database"
  
  task :json, [:path] => :environment do |t,args|
       
     file = File.open(args.path)
     file.each do |line|
       metricHash = JSON.parse(line)
       metric = Metric.new
       metric.name = metricHash["n"]
       puts metric.name
       metric.value = metricHash["v"]
       puts metric.value
       metric.metric_type = metricHash["t"]
       puts metric.metric_type
       metric.longitude = metricHash["lon"]
       puts metric.longitude
       metric.latitude = metricHash["lat"]
       puts metric.latitude
       metric.time_stamp = metricHash["ts"]
       puts metric.time_stamp
       
       driverId  = metricHash["driver_id"]
       driver = Driver.new
       driver.id = driverId
       
       if Driver.exists?(:id => driverId)
         driver = Driver.find(driverId)
       end
       driver.metrics << metric
       driver.save
     end
  end
  
  task :raw=> :environment do
    file = File.open("")
    file.each do |line|
      attrs = line.split(":")
      p = Product.find_or_initialize_by_identifier(attrs[0])
      p.name = attrs[1]
      etc...
      p.save!
    end
  end
end