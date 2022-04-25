
module "key_pair" {
    source ="terraform-aws-modules/key-pair/aws"
    key_name = "tf-key-pair"
    public_key = tls_private_key.this.public_key_openssh