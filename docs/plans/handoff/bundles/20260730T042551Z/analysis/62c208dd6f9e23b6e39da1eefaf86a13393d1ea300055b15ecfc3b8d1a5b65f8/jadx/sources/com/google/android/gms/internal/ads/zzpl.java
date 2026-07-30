package com.google.android.gms.internal.ads;

import defpackage.V1;

/* loaded from: classes.dex */
public final class zzpl extends Exception {
    public final int zza;
    public final boolean zzb;
    public final zzab zzc;

    public zzpl(int i, zzab zzabVar, boolean z) {
        super(V1.m2494case("AudioTrack write failed: ", i));
        this.zzb = z;
        this.zza = i;
        this.zzc = zzabVar;
    }
}
