package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class MediationAdConfiguration {
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;

    /* renamed from: do, reason: not valid java name */
    public final int f9915do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f9916do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Bundle f9917do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f9918do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f9919do;

    /* renamed from: for, reason: not valid java name */
    public final String f9920for;

    /* renamed from: if, reason: not valid java name */
    public final int f9921if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Bundle f9922if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f9923if;

    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForChildDirectedTreatment {
    }

    public MediationAdConfiguration(Context context, String str, Bundle bundle, Bundle bundle2, boolean z, Location location, int i, int i2, String str2, String str3) {
        this.f9918do = str;
        this.f9917do = bundle;
        this.f9922if = bundle2;
        this.f9916do = context;
        this.f9919do = z;
        this.f9915do = i;
        this.f9921if = i2;
        this.f9923if = str2;
        this.f9920for = str3;
    }

    public String getBidResponse() {
        return this.f9918do;
    }

    public Context getContext() {
        return this.f9916do;
    }

    public String getMaxAdContentRating() {
        return this.f9923if;
    }

    public Bundle getMediationExtras() {
        return this.f9922if;
    }

    public Bundle getServerParameters() {
        return this.f9917do;
    }

    public String getWatermark() {
        return this.f9920for;
    }

    public boolean isTestRequest() {
        return this.f9919do;
    }

    public int taggedForChildDirectedTreatment() {
        return this.f9915do;
    }

    public int taggedForUnderAgeTreatment() {
        return this.f9921if;
    }
}
