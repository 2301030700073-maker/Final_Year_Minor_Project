package com.google.android.gms.ads.rewarded;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public class ServerSideVerificationOptions {

    /* renamed from: do, reason: not valid java name */
    public final String f10128do;

    /* renamed from: if, reason: not valid java name */
    public final String f10129if;

    public static final class Builder {

        /* renamed from: do, reason: not valid java name */
        public String f10130do = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: if, reason: not valid java name */
        public String f10131if = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        public ServerSideVerificationOptions build() {
            return new ServerSideVerificationOptions(this);
        }

        public Builder setCustomData(String str) {
            this.f10131if = str;
            return this;
        }

        public Builder setUserId(String str) {
            this.f10130do = str;
            return this;
        }
    }

    public /* synthetic */ ServerSideVerificationOptions(Builder builder) {
        this.f10128do = builder.f10130do;
        this.f10129if = builder.f10131if;
    }

    public String getCustomData() {
        return this.f10129if;
    }

    public String getUserId() {
        return this.f10128do;
    }
}
