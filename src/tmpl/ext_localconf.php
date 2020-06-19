<?php
defined('TYPO3_MODE') || die('Access denied.');

call_user_func(
    function () {
        \TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
            'Tmpl',
            'Tmpl',
            [

            ],
            // non-cacheable actions
            [

            ]
        );
    }
);

# Override lang constants for EXT:cookieman
#$GLOBALS['TYPO3_CONF_VARS']['SYS']['locallangXMLOverride']['EXT:cookieman/Resources/Private/Language/de.locallang.xlf'][] = 'EXT:tmpl/Resources/Private/Language/de.locallang.xlf';