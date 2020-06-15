<?php
return [
    'BE' => [
        'debug' => true,
        'explicitADmode' => 'explicitAllow',
        'installToolPassword' => '$argon2i$v=19$m=65536,t=16,p=2$SmM5dzJtWWFpZldjNlBUVg$YtbyNVbfk51L3IXBhqmXHAkBbkheMaDxnRZXSv2uZeE',
        'interfaces' => 'backend, frontend',
        'loginSecurityLevel' => 'normal',
        'passwordHashing' => [
            'className' => 'TYPO3\\CMS\\Core\\Crypto\\PasswordHashing\\Argon2iPasswordHash',
            'options' => [],
        ],
    ],
    'DB' => [
        'Connections' => [
            'Default' => [
                'charset' => 'utf8mb4',
                'dbname' => 'Set via env',
                'driver' => 'mysqli',
                'host' => 'web_mysql',
                'password' => 'Set via env',
                'port' => 3306,
                'tableoptions' => [
                    'charset' => 'utf8mb4',
                    'collate' => 'utf8mb4_unicode_ci',
                ],
                'user' => 'Set via env',
            ],
        ],
    ],
    'EXT' => [],
    'EXTCONF' => [
        'lang' => [
            'availableLanguages' => [
                'ru',
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
        ],
        'cs_seo' => [
            'evaluationDoktypes' => '1',
            'evaluators' => 'Title,Description,H1,H2,Images,Keyword',
            'inPageModule' => '0',
            'maxDescription' => '156',
            'maxH2' => '6',
            'maxNavTitle' => '50',
            'maxTitle' => '57',
            'minDescription' => '140',
            'minTitle' => '40',
            'tsConfigPid' => '1',
            'useAdditionalCanonicalizedUrlParametersOnly' => '0',
        ],
        'extensionmanager' => [
            'automaticInstallation' => '1',
            'offlineMode' => '0',
        ],
        'frontend_editing' => [
            'contentEditableWrapperTagName' => 'div',
            'enablePlaceholders' => '0',
            'seoProvider' => 'none',
        ],
        'gridelements' => [
            'additionalStylesheet' => '',
            'disableAutomaticUnusedColumnCorrection' => '0',
            'disableCopyFromPageButton' => '0',
            'disableDragInWizard' => '0',
            'fluidBasedPageModule' => '0',
            'nestingInListModule' => '0',
            'overlayShortcutTranslation' => '0',
        ],
        'news' => [
            'advancedMediaPreview' => '1',
            'archiveDate' => 'date',
            'categoryBeGroupTceFormsRestriction' => '0',
            'categoryRestriction' => '',
            'contentElementPreview' => '1',
            'contentElementRelation' => '1',
            'dateTimeNotRequired' => '0',
            'hidePageTreeForAdministrationModule' => '0',
            'manualSorting' => '0',
            'mediaPreview' => 'false',
            'prependAtCopy' => '1',
            'resourceFolderImporter' => '/news_import',
            'rteForTeaser' => '0',
            'showAdministrationModule' => '1',
            'showImporter' => '0',
            'slugBehaviour' => 'unique',
            'storageUidImporter' => '1',
            'tagPid' => '1',
        ],
        'scheduler' => [
            'maxLifetime' => '1440',
            'showSampleTasks' => '1',
        ],
        'translate_locallang' => [
            'allowedExts' => '*',
            'allowedFiles' => '',
            'clearCache' => '0',
            'debug' => '0',
            'defaultLangKey' => 'en',
            'extFilter' => '*',
            'langKeys' => 'de,ru',
            'modifyDefaultLang' => '0',
            'modifyKeys' => '0',
            'translatorInfo' => '',
            'useL10n' => '0',
        ],
        'vhs' => [
            'disableAssetHandling' => '0',
        ],
    ],
    'FE' => [
        'debug' => true,
        'loginSecurityLevel' => 'normal',
        'passwordHashing' => [
            'className' => 'TYPO3\\CMS\\Core\\Crypto\\PasswordHashing\\Argon2iPasswordHash',
            'options' => [],
        ],
    ],
    'GFX' => [
        'processor' => 'GraphicsMagick',
        'processor_allowTemporaryMasksAsPng' => false,
        'processor_colorspace' => 'RGB',
        'processor_effects' => false,
        'processor_enabled' => true,
        'processor_path' => '/usr/bin/',
        'processor_path_lzw' => '/usr/bin/',
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
        'devIPmask' => '*',
        'displayErrors' => 1,
        'encryptionKey' => '41803eb8cd8dace3986e4658530ab13735a1992ebd21a3d966c14a10d543b66c470c62517df23f446e08f2fcaad9288a',
        'exceptionalErrors' => 12290,
        'features' => [
            'felogin.extbase' => true,
            'fluidBasedPageModule' => true,
            'rearrangedRedirectMiddlewares' => true,
            'unifiedPageTranslationHandling' => true,
        ],
        'sitename' => 'T3Dev.ru',
        'systemLocale' => 'ru_RU.UTF-8',
        'trustedHostsPattern' => '.*',
    ],
];