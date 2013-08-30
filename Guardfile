group :tests do
    guard 'shell' do
      watch(/.*\.rb/) {|m| `bundle exec rspec` }
    end
end
