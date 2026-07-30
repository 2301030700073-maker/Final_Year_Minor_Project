package com.google.android.gms.internal.ads;

import android.content.Context;
import defpackage.C0466Ra;
import defpackage.InterfaceFutureC3942wq;

/* loaded from: classes.dex */
public final class zzell implements zzetr {
    private final Context zza;

    public zzell(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        return zzgch.zzh(new zzelm(C0466Ra.checkSelfPermission(this.zza, "com.google.android.gms.permission.AD_ID") == 0));
    }
}
