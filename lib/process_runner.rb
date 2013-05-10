require "process_runner/version"

module ProcessRunner
  # Starts an independent process asynchronously with the given +command+.
  # @param [Array] command The command to run.
  # @param [Hash] options Options with which the process should be started.
  # => (see IO#popen) for more information on available options.
  # @return [Integer] The process ID of the started process.
  # @raise (see Process#spawn)
  # @raise (see Process#detach)
  def self.go(command, options={})
    Process.detach(Process.spawn(command.join(' '), options)).pid
  end
end