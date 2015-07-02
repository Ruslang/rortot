class Project

  def self.upload(file_name)
    uploader = RadarUploader.new
    uploader.store!(open('http://meteoinfo.by/radar/RUSP/radar-map.gif'))
    # uploader.retrieve_from_store!('my_file.png')
    # uploader.store!(uploader.download!('http://meteoinfo.by/radar/RUSP/radar-map.gif'))
  end
end
