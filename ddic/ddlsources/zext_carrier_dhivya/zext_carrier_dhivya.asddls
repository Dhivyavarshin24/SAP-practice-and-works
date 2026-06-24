extend view entity zi_carrier_dhivya01 with {
     zcarrier_dhi01.zz_sustain_rating as ZZsustainRating,
     zcarrier_dhi01.zz_last_audit_at as ZZLastAuditAt,
     concat( 'Carrier: ',zcarrier_kit_01.name ) as ZZFullName
}