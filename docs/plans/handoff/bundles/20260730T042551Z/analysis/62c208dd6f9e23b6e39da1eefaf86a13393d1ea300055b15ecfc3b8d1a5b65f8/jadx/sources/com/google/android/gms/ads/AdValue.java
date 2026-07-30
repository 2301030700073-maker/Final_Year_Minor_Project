package com.google.android.gms.ads;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class AdValue {

    /* renamed from: do, reason: not valid java name */
    public final int f9505do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f9506do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f9507do;

    @Retention(RetentionPolicy.SOURCE)
    public @interface PrecisionType {
        public static final int ESTIMATED = 1;
        public static final int PRECISE = 3;
        public static final int PUBLISHER_PROVIDED = 2;
        public static final int UNKNOWN = 0;
    }

    public AdValue(int i, long j, String str) {
        this.f9505do = i;
        this.f9507do = str;
        this.f9506do = j;
    }

    public static AdValue zza(int i, String str, long j) {
        return new AdValue(i, j, str);
    }

    public String getCurrencyCode() {
        return this.f9507do;
    }

    public int getPrecisionType() {
        return this.f9505do;
    }

    public long getValueMicros() {
        return this.f9506do;
    }
}
