package com.google.android.gms.internal.ads;

import android.content.Context;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzevf implements zzetr {
    final zzgcs zza;

    public zzevf(zzbay zzbayVar, zzgcs zzgcsVar, Context context) {
        this.zza = zzgcsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 45;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzeve
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzevg(new JSONObject());
            }
        });
    }
}
