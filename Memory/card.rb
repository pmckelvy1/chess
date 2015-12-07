



<!DOCTYPE html>
<html lang="en" class=" is-copy-enabled emoji-size-boost">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta name="viewport" content="width=1020">
    <meta content="origin-when-cross-origin" name="referrer" />
    
    <title>solutions/card.rb at master · appacademy/solutions</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="appacademy/solutions" name="twitter:title" /><meta content="solutions - assessment2" name="twitter:description" /><meta content="https://avatars0.githubusercontent.com/u/2138704?v=3&amp;s=400" name="twitter:image:src" />
      <meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars0.githubusercontent.com/u/2138704?v=3&amp;s=400" property="og:image" /><meta content="appacademy/solutions" property="og:title" /><meta content="https://github.com/appacademy/solutions" property="og:url" /><meta content="solutions - assessment2" property="og:description" />
      <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="web-socket" href="wss://live.github.com/_sockets/NDU0MzQxNDo4NzFjNzViYmIzNWQyMzBmZDBjNzNlYjQyYWQ0N2NjMjo3NTAxMDk0ODc2M2Y5MDEyZGY3OTY1NWZhZTMyODBiMjVkNTQyOThhNTYwZmRlODlkZjlhZGRjMGQwZTExN2Rm--b2e8490756e7c0fdd1fdb4145a89ce5d64863a77">
    <meta name="pjax-timeout" content="1000">
    <link rel="sudo-modal" href="/sessions/sudo_modal">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>

    <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
    <meta name="google-analytics" content="UA-3769691-2">

<meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="8EFF71FB:2B78:8836D80:5665C111" name="octolytics-dimension-request_id" /><meta content="4543414" name="octolytics-actor-id" /><meta content="pmckelvy1" name="octolytics-actor-login" /><meta content="12a6340df8f4e1191d7b8b509cf87fd014bd4c2727a8f3bb17fe5bcb66d384db" name="octolytics-actor-hash" />
<meta content="/&lt;user-name&gt;/&lt;repo-name&gt;/blob/show" data-pjax-transient="true" name="analytics-location" />
<meta content="Rails, view, blob#show" data-pjax-transient="true" name="analytics-event" />


  <meta class="js-ga-set" name="dimension1" content="Logged In">



        <meta name="hostname" content="github.com">
    <meta name="user-login" content="pmckelvy1">

        <meta name="expected-hostname" content="github.com">

      <link rel="mask-icon" href="https://assets-cdn.github.com/pinned-octocat.svg" color="#4078c0">
      <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">

    <meta content="a12b4d3f704ecb938dcdc700362e6f7f90cc2581" name="form-nonce" />

    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github-980086798633a7804d9e6353689ba4c79120d0f4a6264214d08411a5f3c6116a.css" integrity="sha256-mACGeYYzp4BNnmNTaJukx5Eg0PSmJkIU0IQRpfPGEWo=" media="all" rel="stylesheet" />
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github2-513b3125a367b7521d4c9c18f9f9fb26186febfcccecc45164cbffd3c544db1b.css" integrity="sha256-UTsxJaNnt1IdTJwY+fn7Jhhv6/zM7MRRZMv/08VE2xs=" media="all" rel="stylesheet" />
    
    
    


    <meta http-equiv="x-pjax-version" content="fb6d8f209402822d6fc2b9a3f89e2d36">

      
  <meta name="description" content="solutions - assessment2">
  <meta name="go-import" content="github.com/appacademy/solutions git https://github.com/appacademy/solutions.git">

  <meta content="2138704" name="octolytics-dimension-user_id" /><meta content="appacademy" name="octolytics-dimension-user_login" /><meta content="9037228" name="octolytics-dimension-repository_id" /><meta content="appacademy/solutions" name="octolytics-dimension-repository_nwo" /><meta content="false" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="9037228" name="octolytics-dimension-repository_network_root_id" /><meta content="appacademy/solutions" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/appacademy/solutions/commits/master.atom?token=AEVTti6OmCr11iSQprJICFC0-WElfp1Mks60cvOWwA%3D%3D" rel="alternate" title="Recent Commits to solutions:master" type="application/atom+xml">

  </head>


  <body class="logged_in   env-production macintosh vis-private page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>

    
    
    



      <div class="header header-logged-in true" role="banner">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/orgs/appacademy/dashboard" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
  <span class="mega-octicon octicon-mark-github"></span>
</a>


      <div class="site-search repo-scope js-site-search" role="search">
          <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/appacademy/solutions/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/appacademy/solutions/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <label class="js-chromeless-input-container form-control">
    <div class="scope-badge">This repository</div>
    <input type="text"
      class="js-site-search-focus js-site-search-field is-clearable chromeless-input"
      data-hotkey="s"
      name="q"
      placeholder="Search"
      aria-label="Search this repository"
      data-global-scope-placeholder="Search GitHub"
      data-repo-scope-placeholder="Search"
      tabindex="1"
      autocapitalize="off">
  </label>
</form>
      </div>

      <ul class="header-nav left" role="navigation">
        <li class="header-nav-item">
          <a href="/pulls" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:pulls context:user" data-hotkey="g p" data-selected-links="/pulls /pulls/assigned /pulls/mentioned /pulls">
            Pull requests
</a>        </li>
        <li class="header-nav-item">
          <a href="/issues" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:issues context:user" data-hotkey="g i" data-selected-links="/issues /issues/assigned /issues/mentioned /issues">
            Issues
</a>        </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://gist.github.com/" data-ga-click="Header, go to gist, text:gist">Gist</a>
          </li>
      </ul>

    
<ul class="header-nav user-nav right" id="user-links">
  <li class="header-nav-item">
      <span class="js-socket-channel js-updatable-content"
        data-channel="notification-changed:pmckelvy1"
        data-url="/notifications/header">
      <a href="/notifications" aria-label="You have no unread notifications" class="header-nav-link notification-indicator tooltipped tooltipped-s" data-ga-click="Header, go to notifications, icon:read" data-hotkey="g n">
          <span class="mail-status all-read"></span>
          <span class="octicon octicon-bell"></span>
</a>  </span>

  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link tooltipped tooltipped-s js-menu-target" href="/new"
       aria-label="Create new…"
       data-ga-click="Header, create new, icon:add">
      <span class="octicon octicon-plus left"></span>
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <ul class="dropdown-menu dropdown-menu-sw">
        
<a class="dropdown-item" href="/new" data-ga-click="Header, create new repository">
  New repository
</a>


  <a class="dropdown-item" href="/organizations/new" data-ga-click="Header, create new organization">
    New organization
  </a>



  <div class="dropdown-divider"></div>
  <div class="dropdown-header">
    <span title="appacademy/solutions">This repository</span>
  </div>
    <a class="dropdown-item" href="/appacademy/solutions/issues/new" data-ga-click="Header, create new issue">
      New issue
    </a>

      </ul>
    </div>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link name tooltipped tooltipped-sw js-menu-target" href="/pmckelvy1"
       aria-label="View profile and more"
       data-ga-click="Header, show menu, icon:avatar">
      <img alt="@pmckelvy1" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/4543414?v=3&amp;s=40" width="20" />
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <div class="dropdown-menu  dropdown-menu-sw">
        <div class=" dropdown-header header-nav-current-user css-truncate">
            Signed in as <strong class="css-truncate-target">pmckelvy1</strong>

        </div>


        <div class="dropdown-divider"></div>

          <a class="dropdown-item" href="/pmckelvy1" data-ga-click="Header, go to profile, text:your profile">
            Your profile
          </a>
        <a class="dropdown-item" href="/stars" data-ga-click="Header, go to starred repos, text:your stars">
          Your stars
        </a>
        <a class="dropdown-item" href="/explore" data-ga-click="Header, go to explore, text:explore">
          Explore
        </a>
          <a class="dropdown-item" href="/integrations" data-ga-click="Header, go to integrations, text:integrations">
            Integrations
          </a>
        <a class="dropdown-item" href="https://help.github.com" data-ga-click="Header, go to help, text:help">
          Help
        </a>

          <div class="dropdown-divider"></div>

          <a class="dropdown-item" href="/settings/profile" data-ga-click="Header, go to settings, icon:settings">
            Settings
          </a>

          <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/logout" class="logout-form" data-form-nonce="a12b4d3f704ecb938dcdc700362e6f7f90cc2581" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="vSzhVHvSRuQH0NUszCSO0AllQL0VlfJfTTfi4LIUY5joVLEzAycwyBMObCRDI7crY5WB9iIhSLGqvj3AQjNaLg==" /></div>
            <button class="dropdown-item dropdown-signout" data-ga-click="Header, sign out, icon:logout">
              Sign out
            </button>
</form>
      </div>
    </div>
  </li>
</ul>


    
  </div>
</div>

      

      


    <div id="start-of-content" class="accessibility-aid"></div>

    <div id="js-flash-container">
</div>


    <div role="main" class="main-content">
        <div itemscope itemtype="http://schema.org/WebPage">
    <div id="js-repo-pjax-container" class="context-loader-container js-repo-nav-next" data-pjax-container>
      
<div class="pagehead repohead instapaper_ignore readability-menu experiment-repo-nav">
  <div class="container repohead-details-container">

    

<ul class="pagehead-actions">

  <li>
        <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-form-nonce="a12b4d3f704ecb938dcdc700362e6f7f90cc2581" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="oCesFX6cGuP6MV7G4AQ0OAsLaQwJGIGyl5cCHahJ33Dhr+OpzkhcdFwQ1byqQNKskqL9+EOakGbiXmHczEgbAQ==" /></div>      <input id="repository_id" name="repository_id" type="hidden" value="9037228" />

        <div class="select-menu js-menu-container js-select-menu">
          <a href="/appacademy/solutions/subscription"
            class="btn btn-sm btn-with-count select-menu-button js-menu-target" role="button" tabindex="0" aria-haspopup="true"
            data-ga-click="Repository, click Watch settings, action:blob#show">
            <span class="js-select-button">
              <span class="octicon octicon-eye"></span>
              Watch
            </span>
          </a>
          <a class="social-count js-social-count" href="/appacademy/solutions/watchers">
            169
          </a>

        <div class="select-menu-modal-holder">
          <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
            <div class="select-menu-header">
              <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
              <span class="select-menu-title">Notifications</span>
            </div>

              <div class="select-menu-list js-navigation-container" role="menu">

                <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <div class="select-menu-item-text">
                    <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                    <span class="select-menu-item-heading">Not watching</span>
                    <span class="description">Be notified when participating or @mentioned.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <span class="octicon octicon-eye"></span>
                      Watch
                    </span>
                  </div>
                </div>

                <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                  <span class="select-menu-item-icon octicon octicon octicon-check"></span>
                  <div class="select-menu-item-text">
                    <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                    <span class="select-menu-item-heading">Watching</span>
                    <span class="description">Be notified of all conversations.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <span class="octicon octicon-eye"></span>
                      Unwatch
                    </span>
                  </div>
                </div>

                <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                  <span class="select-menu-item-icon octicon octicon-check"></span>
                  <div class="select-menu-item-text">
                    <input id="do_ignore" name="do" type="radio" value="ignore" />
                    <span class="select-menu-item-heading">Ignoring</span>
                    <span class="description">Never be notified.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <span class="octicon octicon-mute"></span>
                      Stop ignoring
                    </span>
                  </div>
                </div>

              </div>

            </div>
          </div>
        </div>
</form>
  </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container ">

    <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/appacademy/solutions/unstar" class="js-toggler-form starred js-unstar-button" data-form-nonce="a12b4d3f704ecb938dcdc700362e6f7f90cc2581" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="NRe3sU0vXvCLnHa92bz4pY77lWplTKMs078cK3VVNiOpxie+noU29j+G4kajuVAQbitm01+g38Pf9/849l4myw==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Unstar this repository" title="Unstar appacademy/solutions"
        data-ga-click="Repository, click unstar button, action:blob#show; text:Unstar">
        <span class="octicon octicon-star"></span>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/appacademy/solutions/stargazers">
          30
        </a>
</form>
    <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/appacademy/solutions/star" class="js-toggler-form unstarred js-star-button" data-form-nonce="a12b4d3f704ecb938dcdc700362e6f7f90cc2581" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="iFcik3hJ0/0DMAUpt0bUtNn/NLdI0atl+NXyN4bqxMvYiBfeCPVBIenUyzQGXreFEvE2hoWBy8fbGkNsofv5HQ==" /></div>
      <button
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Star this repository" title="Star appacademy/solutions"
        data-ga-click="Repository, click star button, action:blob#show; text:Star">
        <span class="octicon octicon-star"></span>
        Star
      </button>
        <a class="social-count js-social-count" href="/appacademy/solutions/stargazers">
          30
        </a>
</form>  </div>

  </li>

  <li>
          <a href="#fork-destination-box" class="btn btn-sm btn-with-count"
              title="Fork your own copy of appacademy/solutions to your account"
              aria-label="Fork your own copy of appacademy/solutions to your account"
              rel="facebox"
              data-ga-click="Repository, show fork modal, action:blob#show; text:Fork">
            <span class="octicon octicon-repo-forked"></span>
            Fork
          </a>

          <div id="fork-destination-box" style="display: none;">
            <h2 class="facebox-header" data-facebox-id="facebox-header">Where should we fork this repository?</h2>
            <include-fragment src=""
                class="js-fork-select-fragment fork-select-fragment"
                data-url="/appacademy/solutions/fork?fragment=1">
              <img alt="Loading" height="64" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-128.gif" width="64" />
            </include-fragment>
          </div>

    <a href="/appacademy/solutions/network" class="social-count">
      54
    </a>
  </li>
</ul>

    <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title private ">
  <span class="octicon octicon-lock"></span>
  <span class="author"><a href="/appacademy" class="url fn" itemprop="url" rel="author"><span itemprop="title">appacademy</span></a></span><!--
--><span class="path-divider">/</span><!--
--><strong><a href="/appacademy/solutions" data-pjax="#js-repo-pjax-container">solutions</a></strong>
    <span class="repo-private-label">private</span>

  <span class="page-context-loader">
    <img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
  </span>

</h1>

  </div>
  <div class="container">
    
<nav class="reponav js-repo-nav js-sidenav-container-pjax js-octicon-loaders"
     role="navigation"
     data-pjax="#js-repo-pjax-container">

  <a href="/appacademy/solutions" aria-label="Code" aria-selected="true" class="js-selected-navigation-item selected reponav-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /appacademy/solutions">
    <span class="octicon octicon-code"></span>
    Code
</a>
    <a href="/appacademy/solutions/issues" class="js-selected-navigation-item reponav-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /appacademy/solutions/issues">
      <span class="octicon octicon-issue-opened"></span>
      Issues
      <span class="counter">5</span>
</a>
  <a href="/appacademy/solutions/pulls" class="js-selected-navigation-item reponav-item" data-hotkey="g p" data-selected-links="repo_pulls /appacademy/solutions/pulls">
    <span class="octicon octicon-git-pull-request"></span>
    Pull requests
    <span class="counter">2</span>
</a>
    <a href="/appacademy/solutions/wiki" class="js-selected-navigation-item reponav-item" data-hotkey="g w" data-selected-links="repo_wiki /appacademy/solutions/wiki">
      <span class="octicon octicon-book"></span>
      Wiki
</a>
  <a href="/appacademy/solutions/pulse" class="js-selected-navigation-item reponav-item" data-selected-links="pulse /appacademy/solutions/pulse">
    <span class="octicon octicon-pulse"></span>
    Pulse
</a>
  <a href="/appacademy/solutions/graphs" class="js-selected-navigation-item reponav-item" data-selected-links="repo_graphs repo_contributors /appacademy/solutions/graphs">
    <span class="octicon octicon-graph"></span>
    Graphs
</a>

</nav>

  </div>
</div>

<div class="container new-discussion-timeline experiment-repo-nav">
  <div class="repository-content">

    

<a href="/appacademy/solutions/blob/0718e3963bf8a6c0a691310c053f89b843bd72a0/w1/w1d2/memory/card.rb" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:9087bfb63ee98df77873d0935a011383 -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu js-menu-container js-select-menu left">
  <button class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    title="master"
    type="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <i>Branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </button>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
        <span class="select-menu-title">Switch branches/tags</span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab" role="tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab" role="tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches" role="menu">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/aa-questions/w1/w1d2/memory/card.rb"
               data-name="aa-questions"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="aa-questions">
                aa-questions
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/add-bonuses/w1/w1d2/memory/card.rb"
               data-name="add-bonuses"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="add-bonuses">
                add-bonuses
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/add-submodules/w1/w1d2/memory/card.rb"
               data-name="add-submodules"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="add-submodules">
                add-submodules
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/add_iterative_solution_to_stringify_base/w1/w1d2/memory/card.rb"
               data-name="add_iterative_solution_to_stringify_base"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="add_iterative_solution_to_stringify_base">
                add_iterative_solution_to_stringify_base
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/add_memory/w1/w1d2/memory/card.rb"
               data-name="add_memory"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="add_memory">
                add_memory
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/add_react_projects_directory/w1/w1d2/memory/card.rb"
               data-name="add_react_projects_directory"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="add_react_projects_directory">
                add_react_projects_directory
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/add_sudoku/w1/w1d2/memory/card.rb"
               data-name="add_sudoku"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="add_sudoku">
                add_sudoku
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/allow-dup-in-deepdup/w1/w1d2/memory/card.rb"
               data-name="allow-dup-in-deepdup"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="allow-dup-in-deepdup">
                allow-dup-in-deepdup
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/anagram-problems/w1/w1d2/memory/card.rb"
               data-name="anagram-problems"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="anagram-problems">
                anagram-problems
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/c4-ai/w1/w1d2/memory/card.rb"
               data-name="c4-ai"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="c4-ai">
                c4-ai
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/connect4/w1/w1d2/memory/card.rb"
               data-name="connect4"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="connect4">
                connect4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/eliminate-tap/w1/w1d2/memory/card.rb"
               data-name="eliminate-tap"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="eliminate-tap">
                eliminate-tap
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/fix-empty-grid/w1/w1d2/memory/card.rb"
               data-name="fix-empty-grid"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="fix-empty-grid">
                fix-empty-grid
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/fix-keypad-tester/w1/w1d2/memory/card.rb"
               data-name="fix-keypad-tester"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="fix-keypad-tester">
                fix-keypad-tester
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/fix-spacing-in-arrays-w5d4/w1/w1d2/memory/card.rb"
               data-name="fix-spacing-in-arrays-w5d4"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="fix-spacing-in-arrays-w5d4">
                fix-spacing-in-arrays-w5d4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/force-jumps/w1/w1d2/memory/card.rb"
               data-name="force-jumps"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="force-jumps">
                force-jumps
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/improve-rps/w1/w1d2/memory/card.rb"
               data-name="improve-rps"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="improve-rps">
                improve-rps
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/jade-update-webpack-react-todos/w1/w1d2/memory/card.rb"
               data-name="jade-update-webpack-react-todos"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="jade-update-webpack-react-todos">
                jade-update-webpack-react-todos
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/jade-updates-todo-react/w1/w1d2/memory/card.rb"
               data-name="jade-updates-todo-react"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="jade-updates-todo-react">
                jade-updates-todo-react
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/appacademy/solutions/blob/master/w1/w1d2/memory/card.rb"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="master">
                master
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/mastermind-specs/w1/w1d2/memory/card.rb"
               data-name="mastermind-specs"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="mastermind-specs">
                mastermind-specs
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/pokedex/w1/w1d2/memory/card.rb"
               data-name="pokedex"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="pokedex">
                pokedex
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/port_widget_solutions/w1/w1d2/memory/card.rb"
               data-name="port_widget_solutions"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="port_widget_solutions">
                port_widget_solutions
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/quicksort/w1/w1d2/memory/card.rb"
               data-name="quicksort"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="quicksort">
                quicksort
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/refactor-w1d3/w1/w1d2/memory/card.rb"
               data-name="refactor-w1d3"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="refactor-w1d3">
                refactor-w1d3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/refactoring_lru_cache/w1/w1d2/memory/card.rb"
               data-name="refactoring_lru_cache"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="refactoring_lru_cache">
                refactoring_lru_cache
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/restaurants/w1/w1d2/memory/card.rb"
               data-name="restaurants"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="restaurants">
                restaurants
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/reversi/w1/w1d2/memory/card.rb"
               data-name="reversi"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="reversi">
                reversi
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/revert-48-quicksort/w1/w1d2/memory/card.rb"
               data-name="revert-48-quicksort"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="revert-48-quicksort">
                revert-48-quicksort
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/update-hangman/w1/w1d2/memory/card.rb"
               data-name="update-hangman"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="update-hangman">
                update-hangman
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/update-toggle-flag-method/w1/w1d2/memory/card.rb"
               data-name="update-toggle-flag-method"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="update-toggle-flag-method">
                update-toggle-flag-method
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/update_sqlzoo_solutions/w1/w1d2/memory/card.rb"
               data-name="update_sqlzoo_solutions"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="update_sqlzoo_solutions">
                update_sqlzoo_solutions
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/appacademy/solutions/blob/webpackify_w7d1/w1/w1d2/memory/card.rb"
               data-name="webpackify_w7d1"
               data-skip-pjax="true"
               rel="nofollow">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <span class="select-menu-item-text css-truncate-target" title="webpackify_w7d1">
                webpackify_w7d1
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="btn-group right">
    <a href="/appacademy/solutions/find/master"
          class="js-show-file-finder btn btn-sm"
          data-pjax
          data-hotkey="t">
      Find file
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button">Copy path</button>
  </div>
  <div class="breadcrumb js-zeroclipboard-target">
    <span class="repo-root js-repo-root"><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/appacademy/solutions" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">solutions</span></a></span></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/appacademy/solutions/tree/master/w1" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">w1</span></a></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/appacademy/solutions/tree/master/w1/w1d2" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">w1d2</span></a></span><span class="separator">/</span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/appacademy/solutions/tree/master/w1/w1d2/memory" class="" data-branch="master" data-pjax="true" itemscope="url"><span itemprop="title">memory</span></a></span><span class="separator">/</span><strong class="final-path">card.rb</strong>
  </div>
</div>

<include-fragment class="commit-tease" src="/appacademy/solutions/contributors/master/w1/w1d2/memory/card.rb">
  <div>
    Fetching contributors&hellip;
  </div>

  <div class="commit-tease-contributors">
    <img alt="" class="loader-loading left" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" />
    <span class="loader-error">Cannot retrieve contributors at this time</span>
  </div>
</include-fragment>
<div class="file">
  <div class="file-header">
  <div class="file-actions">

    <div class="btn-group">
      <a href="/appacademy/solutions/raw/master/w1/w1d2/memory/card.rb" class="btn btn-sm " id="raw-url">Raw</a>
        <a href="/appacademy/solutions/blame/master/w1/w1d2/memory/card.rb" class="btn btn-sm js-update-url-with-hash">Blame</a>
      <a href="/appacademy/solutions/commits/master/w1/w1d2/memory/card.rb" class="btn btn-sm " rel="nofollow">History</a>
    </div>

        <a class="octicon-btn tooltipped tooltipped-nw"
           href="github-mac://openRepo/https://github.com/appacademy/solutions?branch=master&amp;filepath=w1%2Fw1d2%2Fmemory%2Fcard.rb"
           aria-label="Open this file in GitHub Desktop"
           data-ga-click="Repository, open with desktop, type:mac">
            <span class="octicon octicon-device-desktop"></span>
        </a>

        <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/appacademy/solutions/edit/master/w1/w1d2/memory/card.rb" class="inline-form js-update-url-with-hash" data-form-nonce="a12b4d3f704ecb938dcdc700362e6f7f90cc2581" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="H6f1TId7wPOobDww/Hp4z1Xr3juWpDTw2pW5wHJtMhCvgF46hDSg69779Yx4boSFVX/iEzugKprqVuMUpi8zDg==" /></div>
          <button class="octicon-btn tooltipped tooltipped-nw" type="submit"
            aria-label="Fork this project and edit the file" data-hotkey="e" data-disable-with>
            <span class="octicon octicon-pencil"></span>
          </button>
</form>        <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/appacademy/solutions/delete/master/w1/w1d2/memory/card.rb" class="inline-form" data-form-nonce="a12b4d3f704ecb938dcdc700362e6f7f90cc2581" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="yO5eLCZqwbJL/k1VeXPqVCQxyXIrjIlco4nTUk44KYZhCp0DlcSwIr+eK3Ofp7C/kJv/3Q97hPdPiQ64Jrz1FQ==" /></div>
          <button class="octicon-btn octicon-btn-danger tooltipped tooltipped-nw" type="submit"
            aria-label="Fork this project and delete the file" data-disable-with>
            <span class="octicon octicon-trashcan"></span>
          </button>
</form>  </div>

  <div class="file-info">
      44 lines (33 sloc)
      <span class="file-info-divider"></span>
    669 Bytes
  </div>
</div>

  

  <div class="blob-wrapper data type-ruby">
      <table class="highlight tab-size js-file-line-container" data-tab-size="8">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code blob-code-inner js-file-line"><span class="pl-k">require</span> <span class="pl-s"><span class="pl-pds">&#39;</span>byebug<span class="pl-pds">&#39;</span></span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code blob-code-inner js-file-line"><span class="pl-k">class</span> <span class="pl-en">Card</span></td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code blob-code-inner js-file-line">  <span class="pl-c1">VALUES</span> <span class="pl-k">=</span> (<span class="pl-s"><span class="pl-pds">&quot;</span>A<span class="pl-pds">&quot;</span></span>..<span class="pl-s"><span class="pl-pds">&quot;</span>Z<span class="pl-pds">&quot;</span></span>).to_a</td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">def</span> <span class="pl-en">self.shuffled_pairs</span>(<span class="pl-smi">num_pairs</span>)</td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code blob-code-inner js-file-line">    values <span class="pl-k">=</span> <span class="pl-c1">VALUES</span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">while</span> num_pairs <span class="pl-k">&gt;</span> values.length</td>
      </tr>
      <tr>
        <td id="L9" class="blob-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-code blob-code-inner js-file-line">      values <span class="pl-k">=</span> values <span class="pl-k">+</span> values</td>
      </tr>
      <tr>
        <td id="L10" class="blob-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-code blob-code-inner js-file-line">    <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L11" class="blob-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L12" class="blob-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-code blob-code-inner js-file-line">    values <span class="pl-k">=</span> values.shuffle.take(num_pairs) <span class="pl-k">*</span> <span class="pl-c1">2</span></td>
      </tr>
      <tr>
        <td id="L13" class="blob-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-code blob-code-inner js-file-line">    values.shuffle!</td>
      </tr>
      <tr>
        <td id="L14" class="blob-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-code blob-code-inner js-file-line">    values.map { |<span class="pl-smi">val</span>| <span class="pl-v">self</span>.<span class="pl-k">new</span>(val) }</td>
      </tr>
      <tr>
        <td id="L15" class="blob-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L16" class="blob-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L17" class="blob-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">attr_reader</span> <span class="pl-c1">:value</span></td>
      </tr>
      <tr>
        <td id="L18" class="blob-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L19" class="blob-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">def</span> <span class="pl-en">initialize</span>(<span class="pl-smi">value</span>, <span class="pl-smi">revealed</span> <span class="pl-k">=</span> <span class="pl-c1">false</span>)</td>
      </tr>
      <tr>
        <td id="L20" class="blob-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-code blob-code-inner js-file-line">    <span class="pl-smi">@value</span> <span class="pl-k">=</span> value</td>
      </tr>
      <tr>
        <td id="L21" class="blob-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-code blob-code-inner js-file-line">    <span class="pl-smi">@revealed</span> <span class="pl-k">=</span> revealed</td>
      </tr>
      <tr>
        <td id="L22" class="blob-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L23" class="blob-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L24" class="blob-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">def</span> <span class="pl-en">hide</span></td>
      </tr>
      <tr>
        <td id="L25" class="blob-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-code blob-code-inner js-file-line">    <span class="pl-smi">@revealed</span> <span class="pl-k">=</span> <span class="pl-c1">false</span></td>
      </tr>
      <tr>
        <td id="L26" class="blob-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L27" class="blob-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L28" class="blob-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">def</span> <span class="pl-en">to_s</span></td>
      </tr>
      <tr>
        <td id="L29" class="blob-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-code blob-code-inner js-file-line">    revealed? <span class="pl-k">?</span> <span class="pl-s"><span class="pl-pds">&quot;</span><span class="pl-pse">#{</span><span class="pl-s1">value</span><span class="pl-pse"><span class="pl-s1">}</span></span><span class="pl-pds">&quot;</span></span> : <span class="pl-s"><span class="pl-pds">&quot;</span> <span class="pl-pds">&quot;</span></span></td>
      </tr>
      <tr>
        <td id="L30" class="blob-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L31" class="blob-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L32" class="blob-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">def</span> <span class="pl-en">reveal</span></td>
      </tr>
      <tr>
        <td id="L33" class="blob-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-code blob-code-inner js-file-line">    <span class="pl-smi">@revealed</span> <span class="pl-k">=</span> <span class="pl-c1">true</span></td>
      </tr>
      <tr>
        <td id="L34" class="blob-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L35" class="blob-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L36" class="blob-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">def</span> <span class="pl-en">revealed?</span></td>
      </tr>
      <tr>
        <td id="L37" class="blob-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-code blob-code-inner js-file-line">    <span class="pl-smi">@revealed</span></td>
      </tr>
      <tr>
        <td id="L38" class="blob-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L39" class="blob-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L40" class="blob-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">def</span> <span class="pl-en">==</span>(<span class="pl-smi">object</span>)</td>
      </tr>
      <tr>
        <td id="L41" class="blob-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-code blob-code-inner js-file-line">    object.is_a?(<span class="pl-v">self</span>.class) <span class="pl-k">&amp;&amp;</span> object.value <span class="pl-k">==</span> value</td>
      </tr>
      <tr>
        <td id="L42" class="blob-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-code blob-code-inner js-file-line">  <span class="pl-k">end</span></td>
      </tr>
      <tr>
        <td id="L43" class="blob-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-code blob-code-inner js-file-line"><span class="pl-k">end</span></td>
      </tr>
</table>

  </div>

</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>

  </div>
  <div class="modal-backdrop"></div>
</div>

    </div>
  </div>

    </div>

      <div class="container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links right">
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>
        <li><a href="https://github.com/pricing" data-ga-click="Footer, go to pricing, text:pricing">Pricing</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2015 <span title="0.10520s from github-fe123-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
        <li><a href="https://help.github.com" data-ga-click="Footer, go to help, text:help">Help</a></li>
    </ul>
  </div>
</div>



    
    
    

    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <button type="button" class="flash-close js-flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
        <span class="octicon octicon-x"></span>
      </button>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" integrity="sha256-t8lSPZPmzQI1oKi30aaR95CdODTNnJyqexZ0ulCLZEw=" src="https://assets-cdn.github.com/assets/frameworks-b7c9523d93e6cd0235a0a8b7d1a691f7909d3834cd9c9caa7b1674ba508b644c.js"></script>
      <script async="async" crossorigin="anonymous" integrity="sha256-uQg7llmokih4yb1VNTSBfn4IGizRnYE/e2xz3Oiodlg=" src="https://assets-cdn.github.com/assets/github-b9083b9659a8922878c9bd553534817e7e081a2cd19d813f7b6c73dce8a87658.js"></script>
      
      
      
    <div class="js-stale-session-flash stale-session-flash flash flash-warn flash-banner hidden">
      <span class="octicon octicon-alert"></span>
      <span class="signed-in-tab-flash">You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
      <span class="signed-out-tab-flash">You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
    </div>
  </body>
</html>

