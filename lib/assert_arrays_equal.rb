
module AssertArraysEqual
    
  def assert_arrays_equal(expected, actual, object_display_method = :to_s, message = '')
    full_message = build_message(message, <<EOT, expected.collect(&object_display_method).join(", "), actual.collect(&object_display_method).join(", "))
<?> expected but was
<?>.
EOT
    assert_block(full_message) { expected == actual }
  end
  
end
