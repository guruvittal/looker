# The name of this view in Looker is "Bom"
view: bom {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_SCHEMA"."BOM" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Childitemchangelevel" in Explore.

  dimension: childitemchangelevel {
    type: number
    sql: ${TABLE}."CHILDITEMCHANGELEVEL" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_childitemchangelevel {
    type: sum
    sql: ${childitemchangelevel} ;;  }
  measure: average_childitemchangelevel {
    type: average
    sql: ${childitemchangelevel} ;;  }

  dimension: childitemgovsystem {
    type: string
    sql: ${TABLE}."CHILDITEMGOVSYSTEM" ;;
  }

  dimension: childitemindicator {
    type: string
    sql: ${TABLE}."CHILDITEMINDICATOR" ;;
  }

  dimension: childitemnumber {
    type: string
    sql: ${TABLE}."CHILDITEMNUMBER" ;;
  }

  dimension: childlocationid {
    type: string
    sql: ${TABLE}."CHILDLOCATIONID" ;;
  }

  dimension: childlocationsplitpercent {
    type: number
    sql: ${TABLE}."CHILDLOCATIONSPLITPERCENT" ;;
  }

  dimension: childlocationtype {
    type: string
    sql: ${TABLE}."CHILDLOCATIONTYPE" ;;
  }

  dimension: childquantity {
    type: number
    sql: ${TABLE}."CHILDQUANTITY" ;;
  }

  dimension: parentitemchangelevel {
    type: number
    sql: ${TABLE}."PARENTITEMCHANGELEVEL" ;;
  }

  dimension: parentitemgovsystem {
    type: string
    sql: ${TABLE}."PARENTITEMGOVSYSTEM" ;;
  }

  dimension: parentitemindicator {
    type: string
    sql: ${TABLE}."PARENTITEMINDICATOR" ;;
  }

  dimension: parentitemnumber {
    type: string
    sql: ${TABLE}."PARENTITEMNUMBER" ;;
  }

  dimension: parentlocationid {
    type: string
    sql: ${TABLE}."PARENTLOCATIONID" ;;
  }

  dimension: parentlocationtype {
    type: string
    sql: ${TABLE}."PARENTLOCATIONTYPE" ;;
  }
  measure: count {
    type: count
  }
}
