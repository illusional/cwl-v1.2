class: CommandLineTool
cwlVersion: v1.2.0-dev2
inputs: []
outputs: []
requirements:
  ToolTimeLimit:
    timelimit: 3
  WorkReuse:
    enableReuse: false
baseCommand: [sleep, "15"]
