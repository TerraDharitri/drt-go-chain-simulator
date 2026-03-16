package configs

import (
	"os"
	"path"
	"runtime/debug"
	"strings"

	logger "github.com/TerraDharitri/drt-go-chain-logger"
)

var log = logger.GetOrCreate("configs")

const (
	appNode  = "node"
	appProxy = "proxy"
)

type fetcher struct {
	gitFetcher      GitHandler
	drtChainNodeRepo string
	drtChainProxy    string
}

// NewConfigsFetcher will create a new instance of fetcher
func NewConfigsFetcher(drtChainNodeRepo, drtChainProxy string, git GitHandler) (*fetcher, error) {
	return &fetcher{
		drtChainNodeRepo: drtChainNodeRepo,
		drtChainProxy:    drtChainProxy,
		gitFetcher:      git,
	}, nil
}

// FetchProxyConfigs will try to fetch the proxy configs
func (f *fetcher) FetchProxyConfigs(info *debug.BuildInfo, pathWhereToPutConfigs string) error {
	exists, err := folderExists(pathWhereToPutConfigs)
	if err != nil {
		return err
	}
	if exists {
		return nil
	}

	drtProxyTag := extractTag(info, f.drtChainProxy)
	log.Info("fetching proxy configs...", "repo", f.drtChainProxy, "version", drtProxyTag)

	return f.fetchConfigFolder(f.drtChainProxy, drtProxyTag, pathWhereToPutConfigs, appProxy)
}

// FetchNodeConfigs will try to fetch the node configs
func (f *fetcher) FetchNodeConfigs(info *debug.BuildInfo, pathWhereToPutConfigs string) error {
	exists, err := folderExists(pathWhereToPutConfigs)
	if err != nil {
		return err
	}
	if exists {
		return nil
	}

	drtNodeTag := extractTag(info, f.drtChainNodeRepo)
	log.Info("fetching node configs...", "repo", f.drtChainNodeRepo, "version", drtNodeTag)

	return f.fetchConfigFolder(f.drtChainNodeRepo, drtNodeTag, pathWhereToPutConfigs, appNode)
}

func (f *fetcher) fetchConfigFolder(repo string, version string, pathWhereToSaveConfig string, app string) error {
	pathToRepo := path.Join(os.TempDir(), "repo")
	err := f.gitFetcher.Clone(repo, pathToRepo)
	if err != nil {
		return err
	}

	err = f.gitFetcher.Checkout(pathToRepo, version)
	if err != nil {
		return err
	}

	pathToRepoConfigs := path.Join(pathToRepo, "cmd", app, "config")
	err = copyFolderWithAllFiles(pathToRepoConfigs, pathWhereToSaveConfig)
	if err != nil {
		return err
	}

	return os.RemoveAll(pathToRepo)
}

func extractTag(info *debug.BuildInfo, repo string) string {
	for _, dep := range info.Deps {
		if strings.Contains(repo, dep.Path) {
			return extractVersionOrCommit(dep.Version)
		}
	}

	return ""
}

func extractVersionOrCommit(versionStr string) string {
	if strings.Contains(versionStr, "-") {
		parts := strings.Split(versionStr, "-")
		return parts[len(parts)-1]
	}
	return versionStr
}

func folderExists(folderPath string) (bool, error) {
	_, err := os.Stat(folderPath)
	if os.IsNotExist(err) {
		return false, nil
	}

	return true, nil
}
