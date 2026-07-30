package com.joeykrim.rootcheckp.Rankings;

/* loaded from: classes3.dex */
public class NewsFeedJson {
    String da_android_os_version;
    String da_first_seen;
    String da_last_seen;
    String dd_android_os_version;
    String dd_capitalized_manufacturer;
    String dd_capitalized_model;
    String dd_first_seen;
    String dd_last_seen;
    String dm_capitalized_manufacturer;
    String dm_first_seen;
    String dm_last_seen;
    int id;
    String news_loaded_time;
    int news_type;
    int ra_sum_easy_count;
    int ra_sum_expert_count;
    int ra_sum_hard_count;
    int ra_sum_medium_count;
    int ra_sum_rank;
    long ra_sum_unique_users;
    int rd_sum_rank;
    long rd_sum_root_failure;
    long rd_sum_root_success;
    long rd_sum_unique_users;
    int rm_sum_easy_count;
    int rm_sum_expert_count;
    int rm_sum_hard_count;
    int rm_sum_medium_count;
    int rm_sum_rank;
    long rm_sum_unique_users;

    public String toString() {
        return "id: " + String.valueOf(this.id) + ", news_type: " + String.valueOf(this.news_type) + ", news_loaded_time: " + this.news_loaded_time + ", dd_capitalized_manufacturer: " + this.dd_capitalized_manufacturer + ", dd_capitalized_model: " + this.dd_capitalized_model + ", dd_android_os_version: " + this.dd_android_os_version + ", dd_first_seen: " + this.dd_first_seen + ", dd_last_seen: " + this.dd_last_seen + ", rd_sum_unique_users: " + String.valueOf(this.rd_sum_unique_users) + ", rd_sum_rank: " + String.valueOf(this.rd_sum_rank) + ", rd_sum_root_success: " + String.valueOf(this.rd_sum_root_success) + ", rd_sum_root_failure: " + String.valueOf(this.rd_sum_root_failure) + ", dm_capitalized_manufacturer: " + this.dm_capitalized_manufacturer + ", dm_first_seen: " + this.dm_first_seen + ", dm_last_seen: " + this.dm_last_seen + ", rm_sum_unique_users: " + String.valueOf(this.rm_sum_unique_users) + ", rm_sum_rank" + String.valueOf(this.rm_sum_rank) + ", rm_sum_easy_count" + String.valueOf(this.rm_sum_easy_count) + ", rm_sum_medium_count" + String.valueOf(this.rm_sum_medium_count) + ", rm_sum_hard_count" + String.valueOf(this.rm_sum_hard_count) + ", rm_sum_expert_count" + String.valueOf(this.rm_sum_expert_count) + ", da_android_os_version: " + this.da_android_os_version + ", da_first_seen: " + this.da_first_seen + ", da_last_seen: " + this.da_last_seen + ", ra_sum_unique_users: " + String.valueOf(this.ra_sum_unique_users) + ", ra_sum_rank" + String.valueOf(this.ra_sum_rank) + ", ra_sum_easy_count" + String.valueOf(this.ra_sum_easy_count) + ", ra_sum_medium_count" + String.valueOf(this.ra_sum_medium_count) + ", ra_sum_hard_count" + String.valueOf(this.ra_sum_hard_count) + ", ra_sum_expert_count" + String.valueOf(this.ra_sum_expert_count);
    }
}
