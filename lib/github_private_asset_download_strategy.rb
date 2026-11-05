require "download_strategy"
require "utils/github"

# Authenticate at download time, after Homebrew restores access to credentials.
class GitHubPrivateAssetDownloadStrategy < CurlDownloadStrategy
  private

  def resolve_url_basename_time_file_size(url, timeout: nil)
    [url, "Runelight.zip", nil, nil, "application/zip", false]
  end

  def _fetch(url:, resolved_url:, timeout:)
    token = GitHub::API.credentials
    headers = ["Accept: application/octet-stream"]
    headers << "Authorization: Bearer #{token}" if token
    curl_download(resolved_url, to: temporary_path, timeout:,
                  header: headers, secrets: [token].compact)
  end
end
