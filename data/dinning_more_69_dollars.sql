SELECT
	cst.postcode,
	count(*) AS "value"
FROM
	ee_orders.items itm
INNER JOIN ee_orders.orders ord ON ord.id_orders = itm.fk_order_id
INNER JOIN auth.customer cst ON ord.fk_customer_id = cst.fk_account
WHERE
	itm.fk_offer IN (
'0060I00000WKB5tQAH',
'0060I00000Y4CQBQA3',
'0060I00000WK5p9QAD',
'0062800000NLowLAAT',
'0060I00000Y4382QAB',
'00628000004Gig1AAC',
'0060I00000Y4JnkQAF',
'00628000007pFGLAA2',
'0060I00000R9JMGQA3',
'0060I00000R9yH3QAJ',
'0062800000K8zbBAAR',
'0060I00000Y4FkWQAV',
'0060I00000UuST2QAN',
'0060I00000UuSN9QAN',
'0060I00000UxoseQAB',
'0060I00000RASw2QAH',
'00628000004WPAiAAO',
'0060I00000UwlscQAB',
'0060I00000X8s78QAB',
'0062800000MA3xcAAD',
'0060I00000UuUYWQA3',
'0060I00000Y1KsUQAV',
'0060I00000UwtVsQAJ',
'0060I00000Uwx7CQAR',
'0062800000CvcCrAAJ',
'0062800000KOnTQAA1',
'0060I00000Ux3u2QAB',
'0060I00000UwF8pQAF',
'00628000004ZvjxAAC',
'0060I00000Qu5ZNQAZ',
'0062800000IK3VYAA1',
'0062800000CL7y0AAD',
'0060I00000RB4bUQAT',
'0062800000L6tghAAB',
'0062800000JJgwOAAT',
'0062800000CWXcFAAX',
'0062800000CXAIxAAP',
'0060I00000R845KQAR',
'0060I00000Y4HF8QAN',
'0060I00000Y2mMYQAZ',
'00628000006SfSEAA0',
'0060I00000R8ZTaQAN',
'0062800000L636EAAR',
'00628000007m7kQAAQ',
'0060I00000RAjTTQA1',
'0060I00000RAr5pQAD',
'0060I00000Y4FboQAF',
'00628000007nM0DAAU',
'00628000007nRxcAAE',
'0062800000MB0TcAAL',
'0060I00000UxKVmQAN',
'0062800000MO7F6AAL',
'0062800000Mfe9tAAB',
'0060I00000Y4FrhQAF',
'00628000005GaUXAA0',
'00628000005IEHSAA4',
'0062800000MgabjAAB',
'00628000007nyKKAAY',
'0060I00000UuguLQAR',
'00628000007p4PiAAI',
'0060I00000Uvv4oQAB',
'00628000008eBAmAAM',
'0060I00000UwmcEQAR',
'00628000007Y0pyAAC',
'0060I00000Ux4JWQAZ',
'0062800000QavTTAAZ',
'00628000005IDZFAA4',
'00628000004ZohZAAS',
'00628000008fj0bAAA',
'00628000009cc21AAA',
'00628000009dJx8AAE',
'00628000009dK8zAAE',
'00628000009dUTTAA2',
'0060I00000UxdqOQAR',
'0062800000NwGWzAAN',
'0060I00000X99sHQAR',
'0060I00000UxQulQAF',
'00628000008vGydAAE',
'0062800000CyFbgAAF',
'0062800000DwFpvAAF',
'0062800000FDgm1AAD',
'0062800000Dz462AAB',
'0062800000HiGbAAAV',
'0062800000HlS8MAAV',
'0062800000HulbNAAR',
'0062800000FfygUAAR',
'0062800000GDj88AAD',
'00628000008vpaiAAA',
'0060I00000UuSRTQA3',
'00628000008wHIIAA2',
'00628000007HzLTAA0',
'0062800000DQuY6AAL',
'00628000008wOfaAAE',
'0062800000K4zFAAAZ',
'00628000009cKN6AAM',
'0062800000Kj1pJAAR',
'00628000009ckRKAAY',
'00628000009cz4EAAQ',
'00628000004ZMSAAA4',
'00628000008eLuaAAE',
'00628000009cBTrAAM',
'00628000009cPO9AAM',
'0062800000C5BynAAF',
'00628000009dU1rAAE',
'00628000005IADNAA4',
'0060I00000UuiOVQAZ',
'0062800000H4D8BAAV',
'00628000007IB4AAAW',
'0062800000AknJtAAJ',
'0062800000CIwDvAAL',
'0062800000AlbcCAAR',
'0062800000J0PbXAAV',
'00628000004X4YyAAK',
'0060I00000R9G4QQAV',
'0062800000Ek5XfAAJ',
'0062800000FECEDAA5',
'0062800000C47VAAAZ',
'0060I00000UwH0QQAV',
'00628000006PbieAAC',
'0062800000J2gLXAAZ',
'00628000005GUPJAA4',
'00628000005H07AAAS',
'00628000006QqvQAAS',
'0062800000DbrcnAAB',
'0062800000DQuXXAA1',
'0062800000DbzXNAAZ',
'0062800000JwAk7AAF',
'0060I00000Y4oDWQAZ',
'0062800000DcocTAAR',
'00628000004VyWDAA0',
'00628000006Qe8DAAS',
'0062800000QbNaLAAV',
'0060I00000Y2vpGQAR',
'0060I00000Y3Nu0QAF',
'0060I00000Y3n8GQAR',
'00628000004WOLfAAO',
'0060I00000Y3WTXQA3',
'00628000004WceGAAS',
'0060I00000UwmYvQAJ',
'0060I00000Y4mlMQAR',
'00628000004GkDvAAK',
'00628000005HBfWAAW',
'0062800000J1PCIAA3',
'0062800000F4V3XAAV',
'00628000005HXTNAA4',
'0060I00000UxcdcQAB',
'0060I00000WJdOuQAL',
'0060I00000Y4rVmQAJ',
'0060I00000Y3yXLQAZ',
'00628000009d8ORAAY',
'0060I00000Y36czQAB',
'0060I00000Y4vyoQAB',
'0060I00000Y36huQAB',
'0062800000HH3qmAAD',
'0060I00000Y4qiVQAR',
'0060I00000Y3WVJQA3',
'0060I00000QuJcbQAF',
'0060I00000Y4DczQAF',
'0062800000KkTskAAF',
'0062800000JsjmWAAR',
'0062800000FcVaPAAV',
'0062800000FfzykAAB',
'0062800000DQuWeAAL',
'0060I00000ZmWLnQAN',
'00628000005HcUyAAK',
'0062800000GCCO7AAP',
'00628000005IcS3AAK',
'0062800000Fc38YAAR',
'0062800000FdhNGAAZ',
'0060I00000UuioRQAR',
'0060I00000Y2LaLQAV',
'0060I00000Y262qQAB',
'0062800000KvDGuAAN',
'0060I00000Y59HVQAZ',
'00628000007lzRBAAY',
'0062800000GdKY3AAN',
'0062800000JIvqGAAT',
'0060I00000ZmhwtQAB',
'0060I00000UvFzkQAF',
'00628000004IaMjAAK',
'0060I00000UvDeGQAV',
'0060I00000UvJ8EQAV',
'0060I00000Uvo75QAB',
'0060I00000UvpXlQAJ',
'0060I00000UvxwdQAB',
'0060I00000UwdO3QAJ',
'0060I00000UwQ7jQAF',
'0060I00000Uy0KQQAZ',
'0060I00000WKDkhQAH',
'0060I00000Y27gEQAR',
'00628000005HDfsAAG',
'0060I00000Y4LzrQAF',
'0060I00000Y4WQvQAN',
'0062800000NwTPSAA3',
'0060I00000Y1sDIQAZ',
'0060I00000UuSOWQA3',
'0060I00000ZmZYbQAN',
'0062800000HGFJgAAP',
'0060I00000ZmbkFQAR',
'0062800000HIFmEAAX',
'0060I00000Y2sWsQAJ',
'0060I00000Y2sxyQAB',
'0062800000HiwTCAAZ',
'0060I00000Y4ChlQAF',
'0060I00000ZmmbPQAR',
'0060I00000Y4LaDQAV',
'0062800000IEdpUAAT',
'00628000004ZMxmAAG',
'00628000004ZWBuAAO',
'0062800000HvBi7AAF',
'00628000004ZpBwAAK',
'0060I00000ZnJ7xQAF',
'0060I00000Y3EAzQAN',
'0062800000Lr6LtAAJ',
'0060I00000ZnJJyQAN',
'0062800000AlbD7AAJ',
'0062800000IeKZcAAN',
'0060I00000ZnLpbQAF',
'0060I00000UwHYWQA3',
'0060I00000ZnLuHQAV',
'0060I00000WKADpQAP',
'0060I00000ZnN4fQAF',
'0060I00000ZnN5TQAV',
'0060I00000Y4GujQAF',
'0060I00000Qu4tCQAR',
'0060I00000Y4nyGQAR',
'0060I00000ZnRDMQA3',
'0060I00000ZnRcuQAF',
'0060I00000ZnIcVQAV',
'0060I00000ZnO0CQAV',
'0062800000JJoeOAAT',
'0060I00000R7OozQAF',
'0062800000IM6dJAAT',
'0060I00000UuSLoQAN',
'0062800000IbXtSAAV',
'0060I00000R7QcVQAV',
'0060I00000WJi09QAD',
'0060I00000UvsuMQAR',
'00628000004ZxuMAAS',
'00628000004a3HwAAI',
'0060I00000R7szqQAB',
'0062800000Kh4YLAAZ',
'0060I00000UxyIxQAJ',
'0062800000JHC5AAAX',
'00628000008v5PnAAI',
'00628000005H2RCAA0',
'0060I00000Uv7cUQAR',
'0062800000J1m1aAAB',
'0062800000JvOMPAA3',
'00628000006TDPxAAO',
'0062800000Lu1ESAAZ',
'0062800000M88DUAAZ',
'00628000007Y4ozAAC',
'00628000007YBSPAA4',
'0060I00000UwmsRQAR',
'0062800000NKadAAAT',
'0062800000KMqb4AAD',
'00628000005IYGLAA4',
'0062800000KuoAGAAZ',
'00628000007HzLEAA0',
'0062800000KvDM4AAN',
'0060I00000Y1MzcQAF',
'0060I00000Y1UxSQAV',
'0060I00000Y1X8fQAF',
'0062800000LdKjuAAF',
'0062800000AG6HnAAL',
'0060I00000Y1sMrQAJ',
'0060I00000RA4W6QAL',
'0060I00000Y1yLSQAZ',
'00628000004Yf2CAAS',
'0060I00000RAJWdQAP',
'0062800000MO7DAAA1',
'0062800000MO7FBAA1',
'0062800000MPJ83AAH',
'0062800000MPWANAA5',
'0062800000MfrIEAAZ',
'0062800000MhXWxAAN',
'0060I00000Y2DkwQAF',
'0062800000NOCBEAA5',
'0062800000NxqC3AAJ',
'0062800000OHP2TAAX',
'0062800000GCCbMAAX',
'0062800000OJKppAAH',
'00628000004ZwpjAAC',
'0062800000PMphhAAD',
'0060I00000X8q4EQAR',
'0062800000PPywNAAT',
'0062800000PQ5hiAAD',
'0062800000BrztXAAR',
'0062800000Qa1tJAAR',
'0062800000Qa2XvAAJ',
'0062800000QaNyvAAF',
'00628000004a3P3AAI',
'0062800000IoUYwAAN',
'00628000005Gg6WAAS',
'0060I00000UuUbhQAF',
'0060I00000Uy0daQAB',
'0060I00000Uy0rcQAB',
'0060I00000R7T8fQAF',
'0060I00000R7VCsQAN',
'0060I00000Y2O33QAF',
'0060I00000Y2OTuQAN',
'0060I00000UuwkWQAR',
'0060I00000R9AmMQAV',
'0060I00000R7jAUQAZ',
'0060I00000R9l3hQAB',
'0062800000IcrgYAAR',
'0060I00000RA4TlQAL',
'0060I00000RA5PAQA1',
'0060I00000RA89IQAT',
'0060I00000RALU0QAP',
'0060I00000RB4eYQAT',
'0062800000IbxIdAAJ',
'0060I00000Y2B0BQAV',
'00628000005HVVZAA4',
'00628000007Yc0zAAC',
'0060I00000WJaxjQAD',
'0060I00000UIlHlQAL',
'0060I00000Y2bb8QAB',
'0060I00000R7aejQAB',
'00628000004YfKiAAK',
'0060I00000R7yAxQAJ',
'0060I00000R8DH2QAN',
'00628000007p0l8AAA',
'0060I00000R8tCVQAZ',
'0060I00000R9G7jQAF',
'0060I00000R9mT2QAJ',
'0060I00000RA1o8QAD',
'0060I00000Y2eZDQAZ',
'0060I00000RA7vkQAD',
'0060I00000R88BCQAZ',
'0060I00000X9CzOQAV',
'0062800000KiadnAAB',
'0060I00000Y2m5lQAB',
'0060I00000Y2mKwQAJ',
'0060I00000Y2oSBQAZ',
'0060I00000R93WUQAZ',
'0060I00000Y2sf1QAB',
'0060I00000R93prQAB',
'00628000009dJt1AAE',
'0062800000HxkHaAAJ',
'0062800000HIFkSAAX',
'0060I00000RA1l3QAD',
'0060I00000Y36ftQAB',
'0060I00000Y379pQAB',
'0062800000Oea7dAAB',
'0062800000QdHv5AAF',
'0060I00000R9M9NQAV',
'00628000005I9d5AAC',
'0060I00000Y3B11QAF',
'00628000007YfGwAAK',
'00628000005IVQWAA4',
'00628000005I9wvAAC',
'0060I00000Y1sPlQAJ',
'0062800000AnH9ZAAV',
'00628000005IEGPAA4',
'0060I00000R9lCaQAJ',
'0060I00000RA72RQAT',
'0060I00000Y2bV0QAJ',
'0060I00000RAHuTQAX',
'0060I00000UuUZ4QAN',
'0060I00000Y2blDQAR',
'0062800000F7rtiAAB',
'00628000006SjCxAAK',
'0060I00000Y3BSbQAN',
'0060I00000Y2hYGQAZ',
'0060I00000Y3JddQAF',
'00628000004GIZlAAO',
'0060I00000UuUd3QAF',
'0060I00000UvgVmQAJ',
'0062800000KOQsTAAX',
'00628000007mBroAAE',
'00628000007ICS0AAO',
'00628000007ICwLAAW',
'0060I00000UvJ9bQAF',
'0062800000IKMstAAH',
'0060I00000UvXxcQAF',
'00628000007nEavAAE',
'0062800000KOSAuAAP',
'0062800000KuQEaAAN',
'0062800000M9kt9AAB',
'0062800000OcUn7AAF',
'0060I00000UuUdTQAV',
'0062800000NxqTHAAZ',
'0060I00000UuUeMQAV',
'00628000006RSgpAAG',
'0062800000FcVa0AAF',
'00628000007p9DaAAI',
'0062800000OczhYAAR',
'0062800000OeTarAAF',
'0062800000P3wzJAAR',
'0062800000P4AFlAAN',
'0060I00000UuUgfQAF',
'0060I00000UuUgwQAF',
'0060I00000Y3M9sQAF',
'00628000008eFv2AAE',
'00628000008eIrmAAE',
'0060I00000Y3OFCQA3',
'00628000008vMiiAAE',
'00628000008vXvuAAE',
'00628000009cZKYAA2',
'0060I00000UuUTnQAN',
'00628000009dfWKAAY',
'00628000009dpuPAAQ',
'00628000009e4byAAA',
'00628000009eDQ2AAM',
'0060I00000UuiUiQAJ',
'0060I00000UuihXQAR',
'0062800000AG62iAAD',
'0060I00000UuUV0QAN',
'0062800000AlPo7AAF',
'0060I00000R8cnKQAR',
'0060I00000Y2Su4QAF',
'0062800000P2zaDAAR',
'0060I00000Y2SykQAF',
'0060I00000Uvy3wQAB',
'0062800000KhjawAAB',
'0062800000HxdcRAAR',
'0062800000KjRjaAAF',
'0060I00000Y2dEiQAJ',
'0062800000L6tgrAAB',
'00628000007n3XIAAY',
'00628000007nlteAAA',
'0062800000CM677AAD',
'0062800000LInVlAAL',
'0060I00000UxothQAB',
'0060I00000R7dhCQAR',
'0060I00000UuUozQAF',
'0060I00000UuSMIQA3',
'00628000008uuTZAAY',
'0060I00000Y2q2oQAB',
'0060I00000UuSO7QAN',
'0062800000LbISPAA3',
'0062800000DOQ9zAAH',
'00628000008vOzzAAE',
'0062800000LbyZNAAZ',
'0062800000LbzNPAAZ',
'0062800000FECrwAAH',
'0060I00000Uxxq7QAB',
'0060I00000Uxg7wQAB',
'0062800000DRi8gAAD',
'0062800000LcrybAAB',
'0062800000LdEmdAAF',
'0062800000LdLXRAA3',
'0062800000LrCUVAA3',
'0062800000LrgCxAAJ',
'0062800000DdeiLAAR',
'0062800000DwfaOAAR',
'0062800000M74pDAAR',
'0060I00000UwQ0OQAV',
'0060I00000UutQtQAJ',
'0062800000M7EueAAF',
'0062800000M9lanAAB',
'0062800000FDep1AAD',
'0060I00000UwExhQAF',
'0062800000FDl9UAAT',
'0062800000MAZEwAAP',
'0062800000MNgphAAD',
'0062800000MNhPeAAL',
'0060I00000UwWvMQAV',
'0060I00000X97TKQAZ',
'0062800000MO7E8AAL',
'0062800000MO7ftAAD',
'0060I00000UurBjQAJ',
'0060I00000UwYnSQAV',
'0060I00000UwYp9QAF',
'0060I00000Uy0gPQAR',
'0062800000ETNVOAA5',
'0062800000ETghKAAT',
'0062800000MQjlgAAD',
'0060I00000UuUWFQA3',
'0060I00000RACpTQAX',
'0062800000Mgpv7AAB',
'0062800000MhJHIAA3',
'0060I00000R9D5cQAF',
'0060I00000R90t0QAB',
'00628000009efLUAAY',
'0062800000FDm1SAAT',
'0062800000FEeQ9AAL',
'0062800000FGDQMAA5',
'0062800000FGeTAAA1',
'0062800000NOIeRAAX',
'0062800000Nw9eKAAR',
'0062800000Fer2yAAB',
'0062800000Nxk7YAAR',
'0060I00000Uxot3QAB',
'0060I00000UwqNiQAJ',
'0060I00000Y1KjIQAV',
'0060I00000Y1MWpQAN',
'0062800000NyiicAAB',
'0062800000DdekqAAB',
'0060I00000Y2KSYQA3',
'0062800000AlFxdAAF',
'0062800000OHuzyAAD',
'0060I00000UwqP5QAJ',
'0062800000AlWviAAF',
'0062800000Gfe6fAAB',
'0062800000GfhgxAAB',
'0062800000H5pXhAAJ',
'0060I00000Y2MzYQAV',
'0060I00000RBA9XQAX',
'0060I00000UuzMnQAJ',
'0062800000AnI3bAAF',
'0062800000OeziUAAR',
'0062800000Of6CSAAZ',
'0062800000FDm6wAAD',
'0060I00000X917PQAR',
'0062800000FDmXfAAL',
'0062800000HuljqAAB',
'0062800000HxCBjAAN',
'0062800000HxCW3AAN',
'0062800000HxE6zAAF',
'0062800000HxkiNAAR',
'0062800000ID7AaAAL',
'0062800000IDprLAAT',
'0062800000IEL60AAH',
'0062800000AlxpeAAB',
'0062800000Alz84AAB',
'0062800000Ic1j8AAB',
'0062800000Ic4GjAAJ',
'0062800000IcrZ3AAJ',
'0062800000IonndAAB',
'0062800000J1P6tAAF',
'0062800000JGmCSAA1',
'0062800000JHC2VAAX',
'0060I00000R7T6AQAV',
'0060I00000R7jizQAB',
'0062800000JiPIiAAN',
'0062800000JiRMnAAN',
'0060I00000UvtooQAB',
'0060I00000R83pCQAR',
'0062800000JvkAhAAJ',
'0062800000JwAQqAAN',
'0062800000JwAabAAF',
'0060I00000WKLGyQAP',
'0060I00000UvvAFQAZ',
'0062800000CInJMAA1',
'0062800000P42vwAAB',
'0062800000P4AUlAAN',
'0062800000PMHW2AAP',
'0062800000PMOCpAAP',
'0062800000PMpOaAAL',
'0062800000PN7ynAAD',
'0062800000PN8FKAA1',
'0060I00000UuU6eQAF',
'0060I00000UuU6jQAF',
'0062800000Qa2I9AAJ',
'0062800000Qa2kBAAR',
'0062800000QaTnsAAF',
'0062800000QaUleAAF',
'0062800000QauGyAAJ',
'0060I00000UwgEcQAJ',
'0062800000QciteAAB',
'0062800000QdP2vAAF',
'0062800000QidhAAAR',
'0060I00000UxDNiQAN',
'0060I00000Y3opjQAB',
'0060I00000UuUO7QAN',
'0060I00000UuUOWQA3',
'0060I00000UuUOoQAN',
'0060I00000Y4DO4QAN',
'0060I00000UuUPtQAN',
'0062800000CJbZjAAL',
'0060I00000UuUZKQA3',
'0060I00000UIYBSQA5',
'0060I00000UIrZZQA1',
'0060I00000UuUgXQAV',
'0060I00000UuUgxQAF',
'0060I00000UuUiCQAV',
'0060I00000UuUiKQAV',
'0060I00000UuUkaQAF',
'0060I00000UuUmaQAF',
'0060I00000UuduRQAR',
'0060I00000R7s3VQAR',
'0060I00000Uuj5tQAB',
'0060I00000UulOkQAJ',
'0060I00000UulOuQAJ',
'0060I00000Uulx3QAB',
'0060I00000Uuyd0QAB',
'0062800000CvyEUAAZ',
'0060I00000UvgvaQAB',
'0060I00000UvsYeQAJ',
'0060I00000Uvz9QQAR',
'0060I00000Uw4XxQAJ',
'0060I00000Uw4VhQAJ',
'0060I00000UwOFkQAN',
'0060I00000Uwh4JQAR',
'0060I00000UwiTuQAJ',
'0060I00000UwtVdQAJ',
'0060I00000UwuW8QAJ',
'00628000007YYdNAAW',
'00628000007YYtHAAW',
'0060I00000Uy0aWQAR',
'0060I00000UyJ5kQAF',
'0060I00000UyLzUQAV',
'0060I00000RACshQAH',
'0060I00000WKFCwQAP',
'0060I00000WKLLFQA5',
'0060I00000WKO1JQAX',
'0060I00000X8sehQAB',
'0060I00000X91gwQAB',
'0060I00000Y1KgEQAV',
'0060I00000Y1NhyQAF',
'0060I00000Y1rqTQAR',
'0060I00000Y1s2eQAB',
'0060I00000Y1sGyQAJ',
'0060I00000Y1sKgQAJ',
'0060I00000Y2HFQQA3',
'0060I00000Y2KqIQAV',
'0060I00000Y2KwVQAV',
'0060I00000Y2LZwQAN',
'0060I00000Y2N73QAF',
'0060I00000Y2N7NQAV',
'0060I00000Y2QpVQAV',
'0060I00000Y2Rf3QAF',
'0060I00000Y2oEOQAZ',
'0060I00000Y3BDCQA3',
'0060I00000Y3OFqQAN',
'0060I00000Y3YpXQAV',
'0060I00000Y3m4IQAR',
'0060I00000Y30zhQAB',
'0060I00000Y37CjQAJ',
'0060I00000Y38gaQAB',
'0060I00000Y39dIQAR',
'0060I00000Y3DkDQAV',
'0060I00000Y3JhuQAF',
'0060I00000RAjQ5QAL',
'0060I00000R87QHQAZ',
'0060I00000WJgMDQA1',
'0062800000DwokGAAR',
'00628000007lzNiAAI',
'0062800000DxIufAAF',
'0060I00000R9LZAQA3',
'0062800000FGCpjAAH',
'0062800000AmICxAAN',
'0062800000AG4bCAAT',
'0062800000CJ8y4AAD',
'0062800000DdLHvAAN',
'0062800000JtIg3AAF',
'0062800000HlyhgAAB',
'0062800000HmB1vAAF',
'0062800000HxdSJAAZ',
'0062800000Hxdd5AAB',
'0062800000IDvpZAAT',
'0062800000IKMrlAAH',
'0062800000IpG5EAAV',
'0062800000K7OWPAA3',
'0062800000K7j6OAAR',
'0062800000KhjZtAAJ',
'0060I00000RBNMEQA5',
'0062800000LMOclAAH',
'0062800000QaVLfAAN',
'0062800000Qao3qAAB',
'0062800000QcisvAAB',
'0060I00000QhHuWQAV',
'0060I00000R81DwQAJ',
'0060I00000RA1kjQAD',
'0060I00000RAXjCQAX',
'0060I00000RAdbmQAD',
'0060I00000RAdtlQAD',
'0060I00000R7oaVQAR',
'0060I00000R8UcQQAV',
'0060I00000R8Ui4QAF',
'0060I00000UxLGNQA3',
'0060I00000UIlsaQAD',
'0060I00000UImNJQA1',
'0060I00000UuUKFQA3',
'0060I00000UyG5IQAV',
'0060I00000R9l1WQAR',
'0060I00000R9mORQAZ',
'0060I00000UxtotQAB',
'0060I00000RA33SQAT',
'0060I00000Uy2ynQAB',
'0060I00000RAXe2QAH',
'0060I00000QhGbpQAF',
'0060I00000QqWOGQA3',
'0060I00000QqWYGQA3',
'0060I00000R7ip4QAB',
'0060I00000R8DDPQA3',
'0060I00000R8U49QAF',
'0060I00000R911JQAR',
'0060I00000R96tdQAB',
'0060I00000RA7dMQAT',
'0060I00000RA9hcQAD',
'0060I00000RAAmnQAH',
'0060I00000RAICDQA5',
'0060I00000RB5L8QAL',
'0060I00000RB9ToQAL',
'0060I00000RBBoiQAH',
'0060I00000UJ3e6QAD',
'0060I00000UJ4TYQA1',
'0060I00000UuJIFQA3',
'0060I00000UuTqVQAV',
'0060I00000UuUCTQA3',
'0060I00000UulshQAB',
'0060I00000UxtuwQAB',
'0060I00000WJsAoQAL',
'0060I00000WKImGQAX',
'0060I00000WKPBAQA5',
'0060I00000X8ulKQAR',
'0060I00000Y1vSnQAJ',
'0060I00000Y1raaQAB',
'0060I00000Y2bvIQAR'
)
AND cst.postcode IS NOT NULL
GROUP BY cst.postcode