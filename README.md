# Microsoft Adaptive Cards Templating for PL/SQL

example call:
```plsql
adaptivecard_templating_sdk.expand ( p_template_json => '{sampleTag: "Hello ${salutation} ${name}!"', 
                                     p_data_json => '{name: "Paolo", salutation: "Mr."}');
```

# References
- [Adaptive Card Templating SDKs](https://docs.microsoft.com/en-us/adaptive-cards/templating/sdk)
- [Obtain all JSON keys from JSON columns](https://asktom.oracle.com/pls/apex/asktom.search?tag=obtain-all-json-keys-from-json-columns)

# Issues
To view or log issues, see [issues](https://github.com/cdngmnks/adaptivecards-templating-plsql/issues).

# License
Copyright (c) codingmonkeys doo. All Rights Reserved. Licensed under the [MIT license](https://github.com/cdngmnks/adaptivecards-templating-plsql/blob/master/LICENSE).
