class Hash
  def pick(*keys)
    valid_keys = self.keys & keys
    Hash[valid_keys.map { |key| [key, self[key]] }]
  end

  def except(*keys)
    valid_keys = self.keys - keys
    Hash[valid_keys.map { |key| [key, self[key]] }]
  end

  def compact_values
    self.select { |k, v| v }
  end

  def defaults(hash)
    hash.merge(self)
  end
end
