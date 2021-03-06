cwlVersion: v1.2.0-dev2
class: Workflow
requirements:
  StepInputExpressionRequirement: {}
  InlineJavascriptRequirement: {}
inputs:
  my_file: File

steps:
  one:
    run:
      class: ExpressionTool
      requirements: { InlineJavascriptRequirement: {} }
      inputs:
        my_number:
          type: File
          loadContents: true
      outputs: { my_int: int }
      expression: |
        ${ return { "my_int": parseInt(inputs.my_number.contents) }; }
    in:
      my_number: my_file
    out: [ my_int ]

outputs:
  my_int:
    type: int
    outputSource: one/my_int