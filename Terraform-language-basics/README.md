 ### Terraform configuration Language syntax
 - Blocks
 - Arguments, Attributes & Meta-Arguments
 - Identifiers
 - Comments
### Sample example
resource "aws_instance" "myec2" { # BLOCK 
 - ami = "ami-04d29b6f966df1537" # Argument
 - instance_type = var.instance_type # Argument with value as expression (Variable value replaced from varibales.tf)
}

### Terraform Top-Level Blocks
- Terraform Settings Block
- Provider Block
- Resource Block
- Input Variables Block
- Output Values Block
- Local Values Block
- Data Sources Block
- Modules Block
