function transform(tag, timestamp, record)
    if record["kubernetes"]
    then
        new_record = {}
        new_record["namespace"] = record["kubernetes"]["namespace_name"]
        new_record["pod"] = record["kubernetes"]["pod_name"]
    end
    return 2, timestamp, new_record
end