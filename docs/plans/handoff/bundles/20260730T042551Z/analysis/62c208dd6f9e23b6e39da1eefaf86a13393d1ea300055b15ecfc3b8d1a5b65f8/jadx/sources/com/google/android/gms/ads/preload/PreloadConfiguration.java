package com.google.android.gms.ads.preload;

import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;

/* loaded from: classes.dex */
public class PreloadConfiguration {

    /* renamed from: do, reason: not valid java name */
    public final int f10117do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AdFormat f10118do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AdRequest f10119do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f10120do;

    public static class Builder {

        /* renamed from: do, reason: not valid java name */
        public int f10121do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final AdFormat f10122do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AdRequest f10123do = new AdRequest.Builder().build();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final String f10124do;

        public Builder(String str, AdFormat adFormat) {
            this.f10124do = str;
            this.f10122do = adFormat;
        }

        public PreloadConfiguration build() {
            return new PreloadConfiguration(this);
        }

        public Builder setAdRequest(AdRequest adRequest) {
            this.f10123do = adRequest;
            return this;
        }

        public Builder setBufferSize(int i) {
            this.f10121do = i;
            return this;
        }
    }

    public /* synthetic */ PreloadConfiguration(Builder builder) {
        this.f10120do = builder.f10124do;
        this.f10118do = builder.f10122do;
        this.f10119do = builder.f10123do;
        this.f10117do = builder.f10121do;
    }

    public AdFormat getAdFormat() {
        return this.f10118do;
    }

    public AdRequest getAdRequest() {
        return this.f10119do;
    }

    public String getAdUnitId() {
        return this.f10120do;
    }

    public int getBufferSize() {
        return this.f10117do;
    }
}
