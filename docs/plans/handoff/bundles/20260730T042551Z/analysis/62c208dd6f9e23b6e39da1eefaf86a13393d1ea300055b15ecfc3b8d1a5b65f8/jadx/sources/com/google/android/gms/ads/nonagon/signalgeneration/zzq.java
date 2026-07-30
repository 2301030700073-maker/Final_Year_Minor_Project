package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.ads.query.QueryInfo;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzq {

    /* renamed from: do, reason: not valid java name */
    public final int f10086do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f10087do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final QueryInfo f10088do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f10089do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicBoolean f10090do = new AtomicBoolean(false);

    public zzq(QueryInfo queryInfo, String str, long j, int i) {
        this.f10088do = queryInfo;
        this.f10089do = str;
        this.f10087do = j;
        this.f10086do = i;
    }

    public final int zza() {
        return this.f10086do;
    }

    public final QueryInfo zzb() {
        return this.f10088do;
    }

    public final String zzc() {
        return this.f10089do;
    }

    public final void zzd() {
        this.f10090do.set(true);
    }

    public final boolean zze() {
        return this.f10087do <= com.google.android.gms.ads.internal.zzv.zzC().currentTimeMillis();
    }

    public final boolean zzf() {
        return this.f10090do.get();
    }
}
