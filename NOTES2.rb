[
  "~/Unity/3DTD/NewPathfindingExperiment/Assets/Editor/UnityREPL", # .git is a file
  "~/Unity/3DTD/WhenOrcsAttack2/Assets/Editor/UnityREPL", # .git is a file
  "~/Unity/3DTD/NewPathfindingExperiment", # .git is a dir
  "~/Unity/3DTD/WhenOrcsAttack2",  # .git is a dir
  "~/Unity/3DTD/Shared.git", # .git is a dir, bare repo
].map do |path|
  full_path = File.expand_path(path)
  repo = Rugged::Repository.new(full_path)

  [repo.bare?, repo.empty?, repo.head_orphan?, repo.head_detached?, repo.path, repo.workdir, repo.namespace]
  # ref = repo.head
  # [ref.name, ref.target]
  # repo.remotes.map { |remote| [remote.name, remote.url, remote.push_url, remote.fetch_refspecs, remote.push_refspecs]}
  # repo.status { |x| x }
  # refs, ref_names, tags, remotes, branches,
  # repo.merge_base, repo.ahead_behind, repo.each_note, repo.default_notes_ref
end
