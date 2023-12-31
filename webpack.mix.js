// const tailwindcss = require('tailwindcss')

let mix  = require('laravel-mix')
let os   = require('os')
let path = require('path')

const home_dir = `home/.config`
const configurations = [ 'waybar' ]

for (var linux_module of configurations) 
{
  mix.postCss( `build/${linux_module}/style.css`, home_dir + `/${linux_module}` )

  const images = `build/${linux_module}/images`
  if (path.resolve(images))
  {
    console.log(home_dir + `/${linux_module}/images`)
    // mix.copyDirectory(images, home_dir + `/${linux_module}/images`)
  }
}
