def __main__(argv)
  if argv[1] == "version"
    puts "v#{J::VERSION}"
  else
    puts JSON.generate(JSON.parse(STDIN.read), {
                         pretty_print: true,
                         indent_with: 2
                       })
  end
end
