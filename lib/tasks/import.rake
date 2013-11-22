require '.\metric'

namespace :import do
  
  require 'json'
  
  desc "import data from files to database"
  
  task :json, [:path] do |t,args|
      file = File.open(args.path)
      file.each do |line|
        metricHash = JSON.parse(line)
        newMetric = Metric.new
        newMetric.name = metricHash["n"]
        newMetric.value = metricHash["v"]
        newMetric.type = metricHash["t"]
        newMetric.longitude = metricHash["lon"]
        newMetric.latitude = metricHash["lat"]
        newMetric.time_stamp = metricHash["ts"]
        puts newMetric
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