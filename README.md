# NmapAutoAnalyzer

NmapAutoAnalyzer is a script to extract specific pieces of potentially useful information from nmap XML output file.  It's mainly handy when you have a large number of nmap XML files and want to extract things like port listings for further testing.

The actual parsing is done by the nmap-parser gem (http://rubynmap.sourceforge.net/)

## Installation

Install should be pretty simple

    $ gem install nmap_auto_analyzer

## Usage

There's two main modes of operation.  file mode scans a specific nmap xml file, and directory mode scans all nmap xml files in a directory (there can be other files in the directory, nmapautoanalyzer will throw an error but should carry on ok).  The only required option is either -f or -d to specify the target files (all the other options have default set).

    -d, --directory [DIRECTORY]      Directory to scan for xml files
    -f, --file [FILE]                File to scan including path
    -r, --report [REPORT]            Report name
        --reportDirectory [REPORTDIRECTORY]
                                     Report Directory
        --html-report                Generate an HTML report as well as the txt one
    -i, --ignoreChatty               Ignore Chatty Hosts (over 900 open tcp ports)
    -h, -?, --help, --?              Get Help
    -v, --version                    get Version

## Contributing

1. Fork it ( https://github.com/raesene/nmap_auto_analyzer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
