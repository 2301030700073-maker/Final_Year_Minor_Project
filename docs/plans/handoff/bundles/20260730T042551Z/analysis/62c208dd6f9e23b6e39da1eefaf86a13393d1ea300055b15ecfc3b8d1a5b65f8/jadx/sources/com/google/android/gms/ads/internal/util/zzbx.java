package com.google.android.gms.ads.internal.util;

/* loaded from: classes.dex */
public final class zzbx {

    /* renamed from: do, reason: not valid java name */
    public long f9790do;

    /* renamed from: if, reason: not valid java name */
    public long f9792if = Long.MIN_VALUE;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f9791do = new Object();

    public zzbx(long j) {
        this.f9790do = j;
    }

    public final void zza(long j) {
        synchronized (this.f9791do) {
            this.f9790do = j;
        }
    }

    public final boolean zzb() {
        synchronized (this.f9791do) {
            long elapsedRealtime = com.google.android.gms.ads.internal.zzv.zzC().elapsedRealtime();
            if (this.f9792if + this.f9790do > elapsedRealtime) {
                return false;
            }
            this.f9792if = elapsedRealtime;
            return true;
        }
    }
}
