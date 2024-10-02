<img src="https://media-exp1.licdn.com/dms/image/C560BAQHsdnMWxUD2Zw/company-logo_200_200/0/1582812815516?e=1630540800&v=beta&t=Odhs_hyKB-uea7qbTFruYHIjxWIiP9KD1zCTwbKzBUU" height="60px" align="right"/>

# LookML Development Guidelines



## 🏠 General LookML
1. **Ensure no errors and clean [content validator][5]** when pushing code to production
2. Use **explicit [includes][1] for view and explore files** - do not use wildcards (*)
3. Structure **files into folders**
4. Use the **['label'][2] and ['group_label'][3] parameters** to apply business-friendly names (where business-friendly names do not exist for fields, views or explores)
-- Add descriptions to provide more information to the end user
5. Use **lowercase letters and underscores** for spaces in all LookML objects
6. **Use [sets][7]** to define a group of fields centrally and use for [drill_fields][18] and [fields][19]
7. Do not create too many views/explores/dimensions for first pass (**start simple** and expand later)
8. The project is **consistently formatted**
9. **[Refinements][4]** for base layer:
-- For projects where the underlying data model is clean and controlled, the base layer should contain the raw fields and all descriptions, labels etc
-- For data sources which are standardised or highly customisable (SalesForce), and the structure is not controlled by the data team, the enhancements should be created in a refinement



## 🤝 Naming Conventions
[Please see here](/projects/redkite_demo/files/02_naming_conventions.md)


## 🔎 Views
1. Ensure **all views have a [primary key][6]**, that is unique
2. Create a dimension for all columns in your table, and ensure you **reference the Looker dimension** when using in other fields
3. Ensure the **file name and view name are the same**
4. **One view per view file**
5. **Hide dimensions and measures** that do not need to be surfaced to the end user
6. **Group fields within the LookML**, to make developing LookML as simple as possible for other developers and admins
-- Group fields into (1) templated filters & parameters, (2) columns from the table, (3) custom dimensions, (4) custom measures, (5) [sets][7]
7. Ensure all **date fields are [dimension_groups][8]**, rather than dimensions
8. **For PDTs, use [datagroups][9] and ['datagroup_trigger'][10]** over ['persist_for'][11]


## 🧭 Explores
1. Create individual **[.explore files][12] for each explore**. Include these in the relevant model
2. Choose **['view_name'][13] over 'from'**, unless the view is being joined in the explore multiple times
3. Ensure **['type'][14], ['sql_on'][15] and ['relationship'][16] are defined for joins**
4. Use **many_to_one joins where possible**
5. Use **_raw timeframe for joins**
5. **Hide explores** that do not need to be surfaced to the end user. For example, if the explore is used for a specific Look or tile

## 📜 Manifest file
1. **Define custom formats and other constants centrally** in a [Manifest file][17]

[1]: https://docs.looker.com/reference/model-params/include
[2]: https://docs.looker.com/reference/field-params/label-for-field
[3]: https://docs.looker.com/reference/field-params/group_label
[4]: https://docs.looker.com/data-modeling/learning-lookml/refinements
[5]: https://docs.looker.com/data-modeling/getting-started/look-validation
[6]: https://docs.looker.com/reference/field-params/primary_key
[7]: https://docs.looker.com/reference/view-params/sets
[8]: https://docs.looker.com/reference/field-params/dimension_group
[9]: https://docs.looker.com/reference/model-params/datagroup
[10]: https://docs.looker.com/reference/view-params/datagroup_trigger
[11]: https://docs.looker.com/reference/view-params/persist_for-for-derived_table
[12]: https://docs.looker.com/data-modeling/getting-started/other-project-files#explore_files
[13]: https://docs.looker.com/reference/explore-params/view_name
[14]: https://docs.looker.com/reference/explore-params/type-for-join
[15]: https://docs.looker.com/reference/explore-params/sql_on
[16]: https://docs.looker.com/reference/explore-params/relationship
[17]: https://docs.looker.com/data-modeling/getting-started/other-project-files#project_manifest_files
[18]: https://docs.looker.com/reference/view-params/drill_fields-for-view
[19]: https://docs.looker.com/reference/explore-params/fields-for-explore#
