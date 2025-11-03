SELECT 
CLAIM_ID,
MEMBER_ID,
PROVIDER_ID, 
to_date(CLAIM_DATE) AS CLAIM_DATE ,
AMOUNT ,
STATUS,
current_timestamp() as record_insert_ts
FROM {{ source('raw_thryve', 'claims') }