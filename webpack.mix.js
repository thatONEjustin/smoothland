// const tailwindcss = require('tailwindcss')

let mix  = require('laravel-mix')
let os   = require('os')

const home_dir = `${os.homedir()}/home/.config`

mix.postCss( 'build/waybar/style.css', home_dir + '/waybar' )
