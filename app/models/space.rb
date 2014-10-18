class Space < ActiveRecord::Base
  def laser_cutter?
    laser_cutter
  end

  def three_d_printer?
    three_d_printer
  end

  def cnc_router?
    cnc_router
  end

  def sewing_maching?
    sewing_maching
  end

  def microcontroller_library?
    microcontroller_library
  end
end
