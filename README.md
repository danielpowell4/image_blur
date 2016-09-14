# image_blur
2D array that blurs a specified [manhattan distance](https://en.wiktionary.org/wiki/Manhattan_distance).

## To see tests pass
1. Clone down to your machine
2. Run a `bundle install` and 'cd' on in
3. From CL run `bundle exec rspec`

## Run from the command line
After cloning down to your machine and `cd`ing on in run
```
image = Image.new([insert 2D array here!])
image.blur(1) #<-- specify blur distance
image.output
```

## Files worth the view
- [lib/blur.rb](https://github.com/danielpowell4/image_blur/blob/master/lib/blur.rb) has the OO Image class
- [spec/blur_spec.rb](https://github.com/danielpowell4/image_blur/blob/master/spec/blur_spec.rb) has the tests
