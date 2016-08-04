module SVG
  module Graph
    VERSION = '1.0.5'
    autoload(:Bar, 'SVG/Graph/Bar')
    autoload(:ErrBar, 'SVG/Graph/ErrBar')
    autoload(:BarBase, 'SVG/Graph/BarBase')
    autoload(:BarHorizontal, 'SVG/Graph/BarHorizontal')
    autoload(:Line, 'SVG/Graph/Line')
    autoload(:Pie, 'SVG/Graph/Pie')
    autoload(:Plot, 'SVG/Graph/Plot')
    autoload(:Schedule, 'SVG/Graph/Schedule')
    autoload(:TimeSeries, 'SVG/Graph/TimeSeries')
    autoload(:DataPoint, 'SVG/Graph/DataPoint')
  end
end
