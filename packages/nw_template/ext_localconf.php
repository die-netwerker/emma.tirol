<?php
defined('TYPO3') || die();

/**
 * Typo3 LocalConfiguration changes
 */
#$GLOBALS['TYPO3_CONF_VARS']['RTE']['Presets']['default'] = 'EXT:nw_template/Configuration/CkEditor/Default.yaml';
$GLOBALS['TYPO3_CONF_VARS']['RTE']['Presets']['header'] = 'EXT:nw_template/Configuration/CkEditor/Header.yaml';
#$GLOBALS['TYPO3_CONF_VARS']['EXT']['news']['classes']['Domain/Model/News']['nw_template'] = 'nw_template';
#$GLOBALS['TYPO3_CONF_VARS']['RTE']['Presets']['header'] = 'EXT:nw_template/Configuration/CkEditor/Header.yaml';
#$GLOBALS['TYPO3_CONF_VARS']['FE']['cacheHash']['excludedParameters']['48'] = 'typ';
#$GLOBALS['TYPO3_CONF_VARS']['FE']['excludedParameters'] = 'L,mtm_campaign,mtm_keyword,mtm_kwd,mtm_source,mtm_medium,mtm_content,mtm_cid,mtm_group,mtm_placement,pk_campaign,pk_kwd,_stg_debug,utm_source,utm_medium,utm_campaign,utm_term,utm_content,utm_id,utm_source_platform,utm_creative_format,utm_marketing_tactic,gtm_debug,_gl,gad,gclid,dclid,fbclid,msclkid,hsa_acc,hsa_ad,hsa_cam,hsa_grp,hsa_kw,hsa_mt,hsa_net,hsa_src,hsa_tgt,hsa_ver,hsa_ol,hsa_la,_hsenc,_hsmi,__hssc,__hstc,__hsfp,hsCtaTracking,submissionGuid,typ';

/**
 * Filefill
 */
/*$GLOBALS['TYPO3_CONF_VARS']['EXTCONF']['filefill']['storages'][1] = [
    [
        'identifier' => 'domain',
        'configuration' => 'https://ra.netwerk.guru/',
    ],
];*/