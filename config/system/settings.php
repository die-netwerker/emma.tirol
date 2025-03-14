<?php
return [
    'BE' => [
        'debug' => true,
        'installToolPassword' => '$argon2i$v=19$m=65536,t=16,p=1$Vm16ZUl5cmtPRVBrc1ZlWQ$glMPPBUBm6GFnKXB11aD82U6LJPRtVXIzsUOxvAuFkw',
        'passwordHashing' => [
            'className' => 'TYPO3\\CMS\\Core\\Crypto\\PasswordHashing\\Argon2iPasswordHash',
            'options' => [],
        ],
    ],
    'DB' => [
        'Connections' => [
            'Default' => [
                'charset' => 'utf8',
                'driver' => 'mysqli',
            ],
        ],
    ],
    'EXTCONF' => [
        'lang' => [
            'availableLanguages' => [
                'de',
            ],
        ],
    ],
    'EXTENSIONS' => [
        'backend' => [
            'backendFavicon' => '',
            'backendLogo' => '',
            'loginBackgroundImage' => '',
            'loginFootnote' => '',
            'loginHighlightColor' => '',
            'loginLogo' => '',
            'loginLogoAlt' => '',
        ],
        'cs_seo' => [
            'cropDescription' => '0',
            'evaluationDoktypes' => '1',
            'evaluators' => 'Title,Description,H1,H2,HeadingOrder,Images,Keyword',
            'excludeFileExtensions' => 'webp',
            'forceMinDescription' => '1',
            'inPageModule' => '0',
            'maxDescription' => '156',
            'maxH2' => '6',
            'maxNavTitle' => '50',
            'maxTitle' => '57',
            'minDescription' => '140',
            'minTitle' => '40',
            'modFileColumns' => 'title,description',
            'showDescriptionsInTCA' => '1',
        ],
        'extensionmanager' => [
            'automaticInstallation' => '1',
            'offlineMode' => '0',
        ],
        'staticfilecache' => [
            'backendDisplayMode' => 'both',
            'boostMode' => '0',
            'cacheTagsEnable' => '0',
            'clearCacheForAllDomains' => '1',
            'cspGenerationOverride' => '0',
            'debugHeaders' => '0',
            'disableInDevelopment' => '0',
            'enableGeneratorBrotli' => '0',
            'enableGeneratorGzip' => '1',
            'enableGeneratorPhp' => '0',
            'enableGeneratorPlain' => '0',
            'hashUriInCache' => '0',
            'htaccessTemplateName' => 'EXT:staticfilecache/Resources/Private/Templates/Htaccess.html',
            'inlineAssetsFileSize' => '50000',
            'inlineScriptMinify' => '0',
            'inlineServiceFavIcon' => '0',
            'inlineServiceScripts' => '0',
            'inlineServiceStyles' => '0',
            'inlineStyleAssets' => 'ico,png,woff2',
            'inlineStyleMinify' => '0',
            'largeIdentifierInCacheTable' => '0',
            'overrideCacheDirectory' => '',
            'overrideClientUserAgent' => '',
            'phpTemplateName' => 'EXT:staticfilecache/Resources/Private/Templates/Php.html',
            'rawurldecodeCacheFileName' => '0',
            'renameTablesToOtherPrefix' => '0',
            'sendCacheControlHeaderRedirectAfterCacheTimeout' => '0',
            'sendHttp2PushEnable' => '0',
            'sendHttp2PushFileExtensions' => 'css,js',
            'sendHttp2PushFileLimit' => '10',
            'sendHttp2PushLimitToArea' => '',
            'useFallbackMiddleware' => '1',
            'useReverseUriLengthInPriority' => '1',
            'validFallbackHeaders' => 'Content-Type,Content-Language,Content-Security-Policy,Link,X-SFC-Tags',
            'validHtaccessHeaders' => 'Content-Type,Content-Language,Content-Security-Policy,Link,X-SFC-Tags',
        ],
    ],
    'FE' => [
        'cacheHash' => [
            'enforceValidation' => true,
        ],
        'debug' => true,
        'disableNoCacheParameter' => true,
        'passwordHashing' => [
            'className' => 'TYPO3\\CMS\\Core\\Crypto\\PasswordHashing\\Argon2iPasswordHash',
            'options' => [],
        ],
    ],
    'GFX' => [
        'processor' => 'GraphicsMagick',
        'processor_effects' => false,
        'processor_enabled' => true,
        'processor_path' => '/usr/bin/',
    ],
    'LOG' => [
        'TYPO3' => [
            'CMS' => [
                'deprecations' => [
                    'writerConfiguration' => [
                        'notice' => [
                            'TYPO3\CMS\Core\Log\Writer\FileWriter' => [
                                'disabled' => false,
                            ],
                        ],
                    ],
                ],
            ],
        ],
    ],
    'MAIL' => [
        'transport' => 'sendmail',
        'transport_sendmail_command' => '/usr/local/bin/mailpit sendmail -t --smtp-addr 127.0.0.1:1025',
        'transport_smtp_encrypt' => '',
        'transport_smtp_password' => '',
        'transport_smtp_server' => '',
        'transport_smtp_username' => '',
    ],
    'SYS' => [
        'UTF8filesystem' => true,
        'caching' => [
            'cacheConfigurations' => [
                'hash' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                ],
                'pages' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                    'options' => [
                        'compression' => true,
                    ],
                ],
                'rootline' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                    'options' => [
                        'compression' => true,
                    ],
                ],
            ],
        ],
        'devIPmask' => '*',
        'displayErrors' => 1,
        'encryptionKey' => '00286acf825faa9c613af45c9ede4cc95840a1e43e05413cc1870ffc3233b209d9b18672e7b954ccba3abbd4c0f6387f',
        'exceptionalErrors' => 12290,
        'features' => [
            'frontend.cache.autoTagging' => true,
        ],
        'sitename' => 'emma.tirol',
        'systemMaintainers' => [
            1,
            2,
        ],
    ],
];
