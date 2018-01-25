module RandomTestHelpersHelper
  def render_stars(count)
    count.times.map{ "*" }.join("")
  end
end
