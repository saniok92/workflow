variable "do_token" {
  type = string
  sensitive = true
  do_token = ${{ secrets.TF_VAR_DO_TOKEN }}
}