<?php
defined('TYPO3_MODE') or die();

// Add new fields to tt_content for common use of custom CTypes

\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTCAcolumns(
    'tt_content',
    [

        'video_id' => [
            'label' => 'LLL:EXT:tmpl/Resources/Private/Language/locallang_db.xlf:tt_content.video_id',
            'config' => [
                'type' => 'input',
                'size' => 20,
            ],
        ],

        'video_caption' => [
            'label' => 'LLL:EXT:tmpl/Resources/Private/Language/locallang_db.xlf:tt_content.video_caption',
            'config' => [
                'type' => 'text',
                'cols' => 40,
                'rows' => 5,
                'eval' => 'trim'
            ],
        ],


    ]
);
