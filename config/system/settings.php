<?php
return [
    'BE' => [
        'debug' => true,
        'installToolPassword' => '$argon2i$v=19$m=65536,t=16,p=1$dkNMZFRJeU1McTNuOC4xQw$oAYmb5SlA2+yxPeEtRzGFD1C/WzKuRTrIFzFy8/s6lg',
        'passwordHashing' => [
            'className' => 'TYPO3\\CMS\\Core\\Crypto\\PasswordHashing\\Argon2iPasswordHash',
            'options' => [],
        ],
    ],
    'DB' => [
        'Connections' => [
            'Default' => [
                'charset' => 'utf8',
                'dbname' => false,
                'driver' => 'mysqli',
                'host' => false,
                'password' => false,
                'port' => '3306',
                'user' => false,
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
            'enableGeneratorManifest' => '0',
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
        'imagefile_ext' => 'jpg,jpeg,png,webp,svg',
        'processor' => 'ImageMagick',
        'processor_effects' => true,
        'processor_enabled' => true,
        'processor_path' => '/usr/local/bin/',
        'thumbnails' => true,
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
        'transport_sendmail_command' => '/usr/sbin/sendmail -t -i',
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
                'imagesizes' => [
                    'backend' => 'TYPO3\\CMS\\Core\\Cache\\Backend\\Typo3DatabaseBackend',
                    'options' => [
                        'compression' => true,
                    ],
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
        'encryptionKey' => '980907153de9579490575d2155312fd0fd4ab5fe4e7a87b3346c88c5a6d574faced95cab64c732441809ff41be61bcb4',
        'exceptionalErrors' => 12290,
        'features' => [
            'security.backend.enforceContentSecurityPolicy' => true,
        ],
        'sitename' => 'New TYPO3 site',
        'systemMaintainers' => [
            1,
        ],
    ],
];
