package com.android.billingclient.api;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.play_billing.zze;
import defpackage.C4122zt;

/* renamed from: com.android.billingclient.api.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    public int f9106do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f9107do;

    /* renamed from: com.android.billingclient.api.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0052do {

        /* renamed from: do, reason: not valid java name */
        public int f9108do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f9109do = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

        /* renamed from: do, reason: not valid java name */
        public final Cdo m5220do() {
            Cdo cdo = new Cdo();
            cdo.f9106do = this.f9108do;
            cdo.f9107do = this.f9109do;
            return cdo;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static C0052do m5219do() {
        return new C0052do();
    }

    public final String toString() {
        return C4122zt.m8827new("Response Code: ", zze.zzi(this.f9106do), ", Debug Message: ", this.f9107do);
    }
}
