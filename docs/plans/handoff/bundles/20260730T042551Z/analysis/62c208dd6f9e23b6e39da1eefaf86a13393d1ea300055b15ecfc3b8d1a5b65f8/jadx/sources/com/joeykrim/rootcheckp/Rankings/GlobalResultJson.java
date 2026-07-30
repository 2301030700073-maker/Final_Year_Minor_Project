package com.joeykrim.rootcheckp.Rankings;

/* loaded from: classes3.dex */
public class GlobalResultJson {
    String device_make;
    String device_model;
    String device_version;
    String diff_of_success;
    int rank;
    String root_available;
    String wrr_block_advertisements_percent;
    String wrr_distinct_users_count;
    String wrr_first_seen;
    String wrr_improve_battery_life_percent;
    String wrr_increase_speed_percent;
    String wrr_last_seen;
    String wrr_latest_android_os_percent;
    String wrr_other_percent;
    String wrr_remove_unwanted_applications_percent;
    String wrr_use_custom_themes_percent;
    String wrr_use_wifi_tether_percent;

    public String toString() {
        return "rank: " + String.valueOf(this.rank) + ", device_make: " + this.device_make + ", device_model: " + this.device_model + ", device_version: " + this.device_version + ", root_available: " + this.root_available + ", diff_of_success: " + this.diff_of_success + ", wrr_distinct_users_count: " + String.valueOf(this.wrr_distinct_users_count) + ", wrr_latest_android_os_percent: " + String.valueOf(this.wrr_latest_android_os_percent) + ", wrr_remove_unwanted_applications_percent: " + String.valueOf(this.wrr_remove_unwanted_applications_percent) + ", wrr_use_wifi_tether_percent: " + String.valueOf(this.wrr_use_wifi_tether_percent) + ", wrr_improve_battery_life_percent: " + String.valueOf(this.wrr_improve_battery_life_percent) + ", wrr_increase_speed_percent: " + String.valueOf(this.wrr_increase_speed_percent) + ", wrr_block_advertisements_percent: " + String.valueOf(this.wrr_block_advertisements_percent) + ", wrr_use_custom_themes_percent: " + String.valueOf(this.wrr_use_custom_themes_percent) + ", wrr_other_percent: " + String.valueOf(this.wrr_other_percent) + ", wrr_first_seen: " + this.wrr_first_seen + ", wrr_last_seen" + this.wrr_last_seen;
    }
}
