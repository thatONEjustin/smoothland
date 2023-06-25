// const tailwindcss = require('tailwindcss')

let mix  = require('laravel-mix')
let os   = require('os')

const home_dir = `${os.homedir()}/home/.config`

const configurations = [ 'waybar' ]

for(var linux_module of configurations) 
{
  mix.postCss( `build/${linux_module}/style.css`, home_dir + `/${linux_module}` )
}
