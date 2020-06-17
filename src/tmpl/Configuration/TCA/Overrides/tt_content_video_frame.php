<?php

$_CEKEY  = 'ce_video_frame';
$_EXTKEY = 'tmpl';


$GLOBALS['TCA']['tt_content']['columns']['CType']['config']['items'][] = [
    'LLL:EXT:tmpl/Resources/Private/Language/locallang_db.xlf:ce.video_frame_wizard_title',
    $_CEKEY, 'EXT:tmpl/Ce/' . $_CEKEY . '/Icons/ce_wiz.gif'
];

// make overrides for tt_content columns
//$GLOBALS['TCA']['tt_content']['types'][$_CEKEY]['columnsOverrides'] = [
//];

$GLOBALS['TCA']['tt_content']['types'][$_CEKEY]['showitem'] = '
    --palette--;LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:palette.general;general,
    --palette--;LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xml:palette.header;header,   
    video_id;LLL:EXT:tmpl/Resources/Private/Language/locallang_db.xlf:tt_content.video_id,
    video_caption;LLL:EXT:tmpl/Resources/Private/Language/locallang_db.xlf:tt_content.video_caption,
    
    --div--;LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:tabs.access,
    --palette--;LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:palette.visibility;visibility,
    --palette--;LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:palette.access;access,
    --div--;LLL:EXT:frontend/Resources/Private/Language/locallang_ttc.xlf:tabs.extended';

if (\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::isLoaded('gridelements')) {
    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addToAllTCAtypes('tt_content', 'tx_gridelements_container, tx_gridelements_columns', $_CEKEY);
}
