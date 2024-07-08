view: clc_2_0_vw {
  sql_table_name: `aws-us-east-1-qa-01.edc_qa_analytics_customer_15.clc_2_0_vw` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: author_id {
    type: number
    sql: ${TABLE}.author_id ;;
  }
  dimension: average_rating {
    type: number
    sql: ${TABLE}.average_rating ;;
  }
  dimension: card_author_full_name {
    type: string
    sql: ${TABLE}.card_author_full_name ;;
  }
  dimension: card_description {
    type: string
    sql: ${TABLE}.card_description ;;
  }
  dimension: card_id {
    type: number
    sql: ${TABLE}.card_id ;;
  }
  dimension: card_languages {
    type: string
    sql: ${TABLE}.card_languages ;;
  }
  dimension: card_level {
    type: string
    sql: ${TABLE}.card_level ;;
  }
  dimension: card_level_decimal {
    type: number
    sql: ${TABLE}.card_level_decimal ;;
  }
  dimension: card_level_description {
    type: string
    sql: ${TABLE}.card_level_description ;;
  }
  dimension: card_resource_url {
    type: string
    sql: ${TABLE}.card_resource_url ;;
  }
  dimension: card_state {
    type: string
    sql: ${TABLE}.card_state ;;
  }
  dimension: card_subtype {
    type: string
    sql: ${TABLE}.card_subtype ;;
  }
  dimension: card_title {
    type: string
    sql: ${TABLE}.card_title ;;
  }
  dimension: card_type {
    type: string
    sql: ${TABLE}.card_type ;;
  }
  dimension: clc_name {
    type: string
    sql: ${TABLE}.clc_name ;;
  }
  dimension: clcstatus {
    type: string
    sql: ${TABLE}.CLCStatus ;;
  }
  dimension: completable_id {
    type: number
    sql: ${TABLE}.completable_id ;;
  }
  dimension_group: completed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.completed_at ;;
  }
  dimension: content_external_id {
    type: string
    sql: ${TABLE}.content_external_id ;;
  }
  dimension: content_structure {
    type: string
    sql: ${TABLE}.content_structure ;;
  }
  dimension_group: created_at {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: current_content_owner_full_name {
    type: string
    sql: ${TABLE}.current_content_owner_full_name ;;
  }
  dimension: current_content_owner_id {
    type: number
    sql: ${TABLE}.current_content_owner_id ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
  }
  dimension: duration_hhmm {
    type: string
    sql: ${TABLE}.Duration_HHMM ;;
  }
  dimension: duration_seconds {
    type: number
    sql: ${TABLE}.Duration_seconds ;;
  }
  dimension: ecl_id {
    type: string
    sql: ${TABLE}.ecl_id ;;
  }
  dimension: ecl_source_name {
    type: string
    sql: ${TABLE}.ecl_source_name ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }
  dimension: entity_type {
    type: string
    sql: ${TABLE}.entity_type ;;
  }
  dimension_group: etl_record_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.etl_record_created_time ;;
  }
  dimension: excluded_from_leaderboard {
    type: yesno
    sql: ${TABLE}.excluded_from_leaderboard ;;
  }
  dimension: external_id {
    type: string
    sql: ${TABLE}.external_id ;;
  }
  dimension_group: from {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.from_date ;;
  }
  dimension: is_card_promoted {
    type: yesno
    sql: ${TABLE}.is_card_promoted ;;
  }
  dimension: is_public {
    type: yesno
    sql: ${TABLE}.is_public ;;
  }
  dimension: job_title {
    type: string
    sql: ${TABLE}.job_title ;;
  }
  dimension: manager {
    type: string
    sql: ${TABLE}.manager ;;
  }
  dimension: manager_email {
    type: string
    sql: ${TABLE}.manager_email ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: org_id_s {
    type: number
    value_format_name: id
    sql: ${TABLE}.org_id_s ;;
  }
  dimension: provider {
    type: string
    sql: ${TABLE}.provider ;;
  }
  dimension_group: published {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.published_at ;;
  }
  dimension: standard_card_type {
    type: string
    sql: ${TABLE}.standard_card_type ;;
  }
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  dimension: super_card_id {
    type: number
    sql: ${TABLE}.super_card_id ;;
  }
  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }
  dimension: target_score {
    type: number
    sql: ${TABLE}.target_score ;;
  }
  dimension: target_steps {
    type: string
    sql: ${TABLE}.target_steps ;;
  }
  dimension_group: time_account_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.time_account_created ;;
  }
  dimension_group: to {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.to_date ;;
  }
  dimension: unique_code {
    type: string
    sql: ${TABLE}.unique_code ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: user_account_status {
    type: string
    sql: ${TABLE}.user_account_status ;;
  }
  dimension: user_full_name {
    type: string
    sql: ${TABLE}.user_full_name ;;
  }
  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: distinct_users {
    type: count_distinct
    sql:  ${TABLE}.user_id ;;
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  clc_name,
  ecl_source_name,
  card_author_full_name,
  etl_record_created_time,
  user_full_name,
  name,
  current_content_owner_full_name
  ]
  }

}
