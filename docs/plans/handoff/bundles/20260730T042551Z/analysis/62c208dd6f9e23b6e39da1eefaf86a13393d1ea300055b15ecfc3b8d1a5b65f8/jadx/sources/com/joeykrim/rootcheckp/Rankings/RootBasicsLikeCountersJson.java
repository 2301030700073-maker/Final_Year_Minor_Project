package com.joeykrim.rootcheckp.Rankings;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes3.dex */
public class RootBasicsLikeCountersJson {
    int how_root_helpful;
    int what_is_root_helpful;
    int why_root_helpful;

    public String toString() {
        try {
            return "what_is_root_helpful: " + String.valueOf(this.what_is_root_helpful) + ", why_root_helpful: " + String.valueOf(this.why_root_helpful) + ", how_root_helpful: " + String.valueOf(this.how_root_helpful);
        } catch (Exception unused) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }
}
