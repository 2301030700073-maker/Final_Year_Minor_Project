package com.joeykrim.rootcheckp.Rankings;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes3.dex */
public class GlobalManufResultJson {
    String device_make;
    float easy_percent;
    float expert_percent;
    float hard_percent;
    float medium_percent;
    float percent_of_sum_distinct_user_count;

    public String toString() {
        try {
            return "device_make: " + this.device_make + ", percent_of_sum_distinct_user_count: " + String.valueOf(this.percent_of_sum_distinct_user_count) + ", easy_percent: " + String.valueOf(this.easy_percent) + ", medium_percent: " + String.valueOf(this.medium_percent) + ", hard_percent: " + String.valueOf(this.hard_percent) + ", expert_percent: " + String.valueOf(this.expert_percent);
        } catch (Exception unused) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }
}
