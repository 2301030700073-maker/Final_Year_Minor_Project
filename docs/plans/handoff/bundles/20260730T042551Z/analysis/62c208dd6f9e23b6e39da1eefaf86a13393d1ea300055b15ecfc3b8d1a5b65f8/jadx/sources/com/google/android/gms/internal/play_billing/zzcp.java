package com.google.android.gms.internal.play_billing;

import defpackage.Cif;

/* loaded from: classes3.dex */
final class zzcp {
    private final Object zza;
    private final Object zzb;
    private final Object zzc;

    public zzcp(Object obj, Object obj2, Object obj3) {
        this.zza = obj;
        this.zzb = obj2;
        this.zzc = obj3;
    }

    public final IllegalArgumentException zza() {
        Object obj = this.zzc;
        Object obj2 = this.zzb;
        Object obj3 = this.zza;
        String valueOf = String.valueOf(obj3);
        String valueOf2 = String.valueOf(obj2);
        String valueOf3 = String.valueOf(obj3);
        String valueOf4 = String.valueOf(obj);
        StringBuilder m6919this = Cif.m6919this("Multiple entries with same key: ", valueOf, "=", valueOf2, " and ");
        m6919this.append(valueOf3);
        m6919this.append("=");
        m6919this.append(valueOf4);
        return new IllegalArgumentException(m6919this.toString());
    }
}
