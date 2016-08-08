require_relative '../lib/SVG/Graph/TimeSeries'


title = "Plot"
#data1 = []
#(rand(10)+5).times{
#  data1 << rand(20)
#  data1 << rand(20)
#}
data1 = ["17/6/74", 11, "1/11/74", 7, "13/4/04", 11, "9/11/01", 9, "9/1/85", 2, "9/1/88", 1, "15/1/95", 13]
#data2 = []
#(rand(10)+5).times{
#  data2 << rand(20)
#  data2 << rand(20)
#}
data2 = ["8/1/73", 18, "21/10/76", 15, "01/11/80", 4, "4/3/83", 14, "23/6/86", 6, "13/9/89", 12, "12/3/92", 6, "24/2/96", 17, "16/5/99", 12, "8/5/02", 7]
data3 = ["1/1/78", 5, "1/1/83", 13, "1/1/93", 10, "1/1/03", 5]


graph = SVG::Graph::TimeSeries.new( {
  :width => 640,
  :height => 480,
  :graph_title => title,
  :show_graph_title => true,
  :no_css => true,
  :key => true,
  :scale_x_integers => true,
  :scale_y_integers => true,
  :show_data_values => true,
  :show_x_guidelines => true,
  :show_x_title => true,
  :x_title => "Time",
  :show_y_title => true,
  :y_title => "Units",
  :y_title_text_direction => :bt,
  :stagger_x_labels => true,
  :x_label_format => "%Y",
  :min_x_value => DateTime.strptime("1/1/73", '%m/%d/%y').to_time, # this must a Time object
  :timescale_divisions => "5 years",
  :add_popups => true,
  :popup_format => "%m/%d/%y",
  #:area_fill => true,
  :min_y_value => 0,
})
graph.add_data( 
  :data => data1,
  :title => "Ice Cream",
  :template => '%d/%m/%y'
  )
graph.add_data( 
  :data => data2,
  :title => "Ice Cream Cones",
  :template => '%d/%m/%y'
)
graph.add_data( 
  :data => data3,
  :title => "Sprinkles",
  :template => '%d/%m/%y'
)
#puts graph.burn
File.open("timeseries.svg", "w") {|fout| 
  fout.print( graph.burn )
}
